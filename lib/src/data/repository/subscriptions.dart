import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../domain/models.dart';
import '../models.dart';
import 'auth.dart';
import 'profile.dart';

abstract class SubscriptionsRepository {
  Stream<SubscriptionsDto> getById(String uid);

  Stream<List<String>> getSubsIds(String uid);

  Stream<SubscriptionsDto> get own;

  Future<void> subscribeTo(String uid);

  Future<void> unsubscribeFrom(String uid);
}

@Injectable(as: SubscriptionsRepository)
class SubscriptionsRepositoryImpl implements SubscriptionsRepository {
  static const String _collectionName = 'subscriptions';

  final AuthRepository _auth;
  final ProfileRepository _profile;

  final CollectionReference collection =
      FirebaseFirestore.instance.collection(_collectionName);

  late final collectionWithConverter =
      collection.withConverter<SubscriptionsData>(
    fromFirestore: (snapshot, _) =>
        SubscriptionsData.fromMap(snapshot.data() ?? {}),
    toFirestore: (subscriptions, _) => subscriptions.toMap(),
  );

  String? get _userId => _auth.currentUser?.uid;

  SubscriptionsRepositoryImpl(this._auth, this._profile);

  Stream<SubscriptionsDto> get own async* {
    if (_userId == null) return;
    yield* getById(_userId!);
  }

  Stream<SubscriptionsDto> getById(String uid) async* {
    if (uid.isEmpty) return;

    await for (final userIds in getSubsIds(uid)) {
      final subs = <UserDto>[];
      for (final userId in userIds) {
        final user = await _profile.getSingle(userId);
        if (user != null) {
          subs.add(user);
        }
      }
      yield SubscriptionsDto(
        uid: _userId!,
        subscriptions: subs,
      );
    }
  }

  Stream<List<String>> getSubsIds(String uid) async* {
    yield* collectionWithConverter.doc(uid).snapshots().map((doc) {
      if (doc.data() == null) return <String>[];
      return doc.data()!.subscriptions;
    });
  }

  @override
  Future<void> subscribeTo(String uid) async {
    if (_userId == null || uid.isEmpty) return;
    try {
      final doc = await collectionWithConverter.doc(_userId!).get();
      if (doc.exists) {
        await collectionWithConverter.doc(_userId!).update({
          SubscriptionsData.subscriptionsKey: FieldValue.arrayUnion([uid])
        });
      } else {
        await collectionWithConverter.doc(_userId!).set(
          SubscriptionsData(subscriptions: [uid]),
        );
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Future<void> unsubscribeFrom(String uid) async {
    if (_userId == null || uid.isEmpty) return;
    try {
      final doc = await collectionWithConverter.doc(_userId!).get();
      if (doc.exists) {
        await collectionWithConverter.doc(_userId!).update({
          SubscriptionsData.subscriptionsKey: FieldValue.arrayRemove([uid])
        });
      } else {
        await collectionWithConverter.doc(_userId!).set(
          SubscriptionsData(subscriptions: [uid]),
        );
      }
    } catch (e) {
      print(e);
    }
  }
}
