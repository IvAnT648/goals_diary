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

  Future<void> save(UserDto user);

  Future<void> saveOwn(UserDto user);

  Future<void> delete(UserDto user);

  Future<bool> isAvailableNickname(String nickname);

  Future<List<UserDto>> search(String request);
}

@Injectable(as: ProfileRepository)
class ProfileRepositoryImpl implements ProfileRepository {
  static const String _collectionName = 'users';

  final CollectionReference collection =
      FirebaseFirestore.instance.collection(_collectionName);

  late final collectionWithConverter = collection.withConverter<ProfileData?>(
    fromFirestore: (snapshot, _) => ProfileData.fromMap(snapshot.data() ?? {}),
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
    if (addGoals) {
      yield* collectionWithConverter
          .doc(id)
          .snapshots()
          .asyncMap((doc) async {
        List<GoalDto> goals =
            await _goalsRepository.loadByAuthorId(authorId: id);
        return doc.data()?.toDomain(id: id, goals: goals);
      });
      return;
    }
    yield* collectionWithConverter.doc(id).snapshots().map(
            (doc) => doc.data()?.toDomain(id: id)
    );
  }

  @override
  Future<void> delete(UserDto user) async {
    await collection.doc(user.id).delete();
  }

  @override
  Future<void> save(UserDto user) async {
    await collection.doc(user.id).set(user.toData().toMap());
  }

  @override
  Future<bool> isAvailableNickname(String nickname) async {
    final result = await collectionWithConverter
        .where(ProfileData.nicknameKey, isEqualTo: nickname)
        .get();
    return result.docs.length == 0;
  }

  @override
  Future<void> saveOwn(UserDto user) async {
    final newData = user.toData();
    if (_authRepository.currentUser != null) {
      final userData = (await collectionWithConverter
          .doc(_authRepository.currentUser!.uid)
          .get()).data();
      if (userData == null) {
        return;
      }
      final data = userData.copyWith(
        name: newData.name,
        surname: newData.surname,
        nickname: newData.nickname,
        motto: newData.motto,
        about: newData.about,
      );
      await collection
          .doc(_authRepository.currentUser!.uid)
          .update(data.toMap());
    }
  }

  @override
  Future<UserDto?> getSingle({
    required String id,
    bool? publicFilter,
    bool addIsSubscribed = false,
  }) async {
    if (id.isEmpty) return null;

    List<GoalDto> goals = [];
    if (publicFilter != null) {
      goals = await _goalsRepository.loadByAuthorId(
        authorId: id,
        publicFilter: publicFilter,
      );
    }

    bool? isSubscribed;
    if (addIsSubscribed) {
      isSubscribed = await _subscriptionsRepository.isSubscribed(id);
    }

    final doc = await collectionWithConverter.doc(id).get();
    return doc.data()?.toDomain(
      id: id,
      goals: goals,
      isSubscribed: isSubscribed,
    );
  }

  @override
  Future<List<UserDto>> search(String request) async {
    try {
      // TODO: Fix search
      final snapshot = await collectionWithConverter
          .where(ProfileData.nicknameKey, isGreaterThanOrEqualTo: request)
          .get();
      final nullableList = snapshot.docs.map((doc) =>
          doc.data()?.toDomain(id: doc.id)).toList();
      final list = <UserDto>[];
      for (var el in nullableList) {
        if (el == null || el.id == _authRepository.currentUserId) continue;
        list.add(el);
      }
      return list;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
