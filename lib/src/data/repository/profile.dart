import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../domain/models.dart';
import '../models.dart';
import 'auth.dart';
import 'goals.dart';
import 'subscriptions.dart';
import 'utils.dart';

abstract class ProfileRepository {
  Stream<UserDto?> get meStream;

  Stream<UserDto?> get(String id, bool addGoals);

  Future<UserDto?> getSingle({required String id, bool? publicFilter});

  Future<SaveProfileResult> save(UserDto user);

  Future<SaveProfileResult> saveOwn(UserDto user);

  Future<SignUpResult> register(UserDto user);

  Future<void> delete(UserDto user);

  Future<bool> isAvailableNickname(String nickname);

  Future<List<UserDto>> search(String request);
}

@Injectable(as: ProfileRepository)
class ProfileRepositoryImpl implements ProfileRepository {
  static const String _collectionName = 'users';

  final CollectionReference collection =
      FirebaseFirestore.instance.collection(_collectionName);

  late final convertedCollection = collection.withConverter<ProfileData?>(
    fromFirestore: (snapshot, _) =>
        snapshot.data() != null
            ? ProfileData.fromMap(snapshot.data()!)
            : null,
    toFirestore: (profile, _) => profile?.toMap() ?? {},
  );

  final AuthRepository _authRepository;
  final GoalsRepository _goalsRepository;
  final SubscriptionsRepository _subscriptionsRepository;

  ProfileRepositoryImpl(this._authRepository, this._goalsRepository,
      this._subscriptionsRepository);

  @override
  Stream<UserDto?> get meStream async* {
    if (!_authRepository.isLoggedIn()) {
      yield null;
      return;
    }
    yield* get(_authRepository.currentUser!.uid, false);
  }

  @override
  Stream<UserDto?> get(String id, bool addGoals) async* {
    late final Stream<UserDto?> stream;
    final docStream = convertedCollection
        .doc(id)
        .snapshots()
        .handleError((e) {
          print('Error when listening user $id.\n$e');
          return null;
        });

    if (addGoals) {
      stream = docStream.asyncMap((doc) async {
        List<GoalDto> goals =
            await _goalsRepository.loadByAuthorId(authorId: id);
        return doc.data()?.toDomain(id: id, goals: goals);
      });
    } else {
     stream = docStream.map((doc) => doc.data()?.toDomain(id: id));
    }

    yield* stream;
  }

  @override
  Future<void> delete(UserDto user) async {
    await collection
        .doc(user.id)
        .delete()
        .catchError((e) {
          print('Error when user ${user.id} deleting');
        });
  }

  @override
  Future<SaveProfileResult> save(UserDto user) async {
    try {
      await convertedCollection
          .doc(user.id)
          .set(user.toData());
      return SaveProfileResult.success();
    } catch (e) {
      print('Error when user saving $user');
      return SaveProfileResult.error();
    }
  }

  @override
  Future<SaveProfileResult> saveOwn(UserDto user) async {
    final id = _authRepository.currentUser?.uid;
    if (id == null) return SaveProfileResult.error();

    try {
      final data = user.toData().toMap();
      await collection
          .doc(id)
          .update(data)
          .catchError((e) {
            print('Error when saving own profile $user:\n$e');
          });
      return SaveProfileResult.success();
    } catch (e) {
      print('Error when user saving $user');
      return SaveProfileResult.error();
    }
  }

  @override
  Future<bool> isAvailableNickname(String nickname) async {
    final result = await convertedCollection
        .where(ProfileData.nicknameKey, isEqualTo: nickname)
        .get();
    return result.docs.length == 0;
  }

  Future<SignUpResult> register(UserDto user) async {
    if (user.id.isEmpty || user.nickname.isEmpty) {
      return SignUpResult.internalError();
    }
    try {
      await convertedCollection
          .doc(user.id)
          .set(user.toData());
      return SignUpResult.success(user.id);
    } catch (e) {
      print('Error when register profile $user:\n$e');
      return SignUpResult.internalError();
    }
  }

  @override
  Future<UserDto?> getSingle({
    required String id,
    bool? publicFilter,
    bool addIsSubscribed = false,
  }) async {
    if (id.isEmpty) return null;

    final goals = await _goalsRepository.loadByAuthorId(
      authorId: id,
      publicFilter: publicFilter,
    );

    bool? isSubscribed;
    if (addIsSubscribed) {
      isSubscribed = await _subscriptionsRepository.isSubscribed(id);
    }

    try {
      final doc = await convertedCollection
          .doc(id)
          .get();
      return doc.data()?.toDomain(
        id: id,
        goals: goals,
        isSubscribed: isSubscribed,
      );
    } catch (e) {
      print('Error when user $id loading:\n$e');
      return null;
    }
  }

  @override
  Future<List<UserDto>> search(String request) async {
    try {
      // TODO: Fix search
      final snapshot = await convertedCollection
          .where(ProfileData.nicknameKey, isGreaterThanOrEqualTo: request)
          .get();

      final nullableList = snapshot.docs
          .map((doc) => doc.data()?.toDomain(id: doc.id)).toList();

      final list = <UserDto>[];
      for (var el in nullableList) {
        if (el == null || el.id == _authRepository.currentUserId) continue;
        list.add(el);
      }
      return list;
    } catch (e) {
      print('Error when search by "$request" request:\n$e');
      return [];
    }
  }
}
