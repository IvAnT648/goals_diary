import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../domain/models.dart';
import '../models.dart';
import 'auth.dart';
import 'profile.dart';

abstract class SubscriptionsRepository {
  Stream<SubscriptionsDto> getById(String uid);

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

    final dataStream = collectionWithConverter.doc(uid).snapshots().map((doc) {
      if (doc.data() == null) return <String>[];
      return doc.data()!.subscriptions;
    });

    await for (final userIds in dataStream) {
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

  @override
  Future<void> subscribeTo(String uid) async {
    if (_userId == null) return;
    if (uid.isEmpty) return;
    collectionWithConverter.doc(_userId!).update({
      SubscriptionsData.subscriptionsKey: FieldValue.arrayUnion([uid])
    });
  }

  @override
  Future<void> unsubscribeFrom(String uid) async {
    if (_userId == null) return;
    if (uid.isEmpty) return;
    collectionWithConverter.doc(_userId!).update({
      SubscriptionsData.subscriptionsKey: FieldValue.arrayRemove([uid])
    });
  }
}
