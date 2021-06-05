import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../models.dart';
import 'auth.dart';

abstract class SubscriptionsRepository {
  Stream<List<String>> getSubsIds(String uid);

  Stream<List<String>> get own;

  Future<void> subscribeTo(String uid);

  Future<void> unsubscribeFrom(String uid);

  Stream<bool?> isSubscribedStream(String uid);

  Future<bool?> isSubscribed(String uid);
}

@Injectable(as: SubscriptionsRepository)
class SubscriptionsRepositoryImpl implements SubscriptionsRepository {
  static const String _collectionName = 'subscriptions';

  final AuthRepository _auth;

  final CollectionReference collection =
      FirebaseFirestore.instance.collection(_collectionName);

  late final collectionWithConverter =
      collection.withConverter<SubscriptionsData>(
    fromFirestore: (snapshot, _) =>
        SubscriptionsData.fromMap(snapshot.data() ?? {}),
    toFirestore: (subscriptions, _) => subscriptions.toMap(),
  );

  String? get _userId => _auth.currentUser?.uid;

  SubscriptionsRepositoryImpl(this._auth);

  Stream<List<String>> get own async* {
    if (_userId == null) return;
    yield* getSubsIds(_userId!);
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

  @override
  Stream<bool?> isSubscribedStream(String uid) async* {
    if (_userId == null || uid.isEmpty) return;

    if (uid == _userId) {
      yield null;
      return;
    }

    yield* collectionWithConverter
        .doc(_userId)
        .snapshots()
        .map((snapshot) {
          final data = snapshot.data();
          if (data == null) return false;
          return data.subscriptions.contains(uid);
        });
  }

  @override
  Future<bool?> isSubscribed(String uid) async {
    if (_userId == null || uid.isEmpty || _userId == uid) return null;
    final doc = await collectionWithConverter.doc(_userId!).get();
    return doc.data()?.subscriptions.contains(uid);
  }
}
