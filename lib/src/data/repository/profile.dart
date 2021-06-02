import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../domain/models.dart';
import '../models.dart';
import 'auth.dart';
import 'utils.dart';

abstract class ProfileRepository {
  Stream<UserDto?> get meStream;

  Stream<UserDto?> get(String id);

  Future<UserDto?> getSingle(String id);

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

  ProfileRepositoryImpl(this._authRepository);

  @override
  Stream<UserDto?> get meStream async* {
    if (!_authRepository.isLoggedIn()) {
      yield null;
      return;
    }
    yield* get(_authRepository.currentUser!.uid);
  }

  @override
  Stream<UserDto?> get(String id) async* {
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
  Future<UserDto?> getSingle(String id) async {
    if (id.isEmpty) return null;
    final doc = await collectionWithConverter.doc(id).get();
    return doc.data()?.toDomain(id: id);
  }

  @override
  Future<List<UserDto>> search(String request) async {
    try {
      final snapshot = await collectionWithConverter
          .where(ProfileData.nicknameKey, isGreaterThanOrEqualTo: request)
          .get();
      final nullableList = snapshot.docs.map((doc) =>
          doc.data()?.toDomain(id: doc.id)).toList();
      final list = <UserDto>[];
      for (var el in nullableList) {
        if (el == null) continue;
        list.add(el);
      }
      return list;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
