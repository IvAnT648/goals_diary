import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../domain/models.dart';
import '../models.dart';
import 'auth.dart';
import 'utils.dart';

abstract class GoalsRepository {
  Future<SaveGoalResult> saveGoal(GoalDto goal);
  Future<void> deleteGoal(GoalDto goal);
  Future<GoalDto?> load(String id);
  Stream<List<GoalDto>> get myGoals;
  Future<List<GoalDto>> loadByAuthorId({
    required String authorId,
    bool? publicFilter,
  });
  Stream<List<GoalDto>> byAuthorId({
    required String authorId,
    bool? publicFilter,
  });
}

@Injectable(as: GoalsRepository)
class GoalsRepositoryImpl implements GoalsRepository {
  static const String _goalsCollectionName = 'goals';

  final CollectionReference collection =
      FirebaseFirestore.instance.collection(_goalsCollectionName);

  late final convertedCollection = collection.withConverter<GoalData?>(
    fromFirestore: (snapshot, _) => snapshot.data() != null
        ? GoalData.fromFirestore(snapshot.data()!)
        : null,
    toFirestore: (goal, _) => goal?.toMap() ?? {},
  );

  final AuthRepository _auth;

  GoalsRepositoryImpl(this._auth);

  @override
  Future<SaveGoalResult> saveGoal(GoalDto goal) async {
    if (_auth.currentUser == null) {
      return SaveGoalResult.internalError();
    }
    try {
      final data = goal.toData(authorId: _auth.currentUser!.uid).toMap();
      await collection.doc(goal.id).set(data);
      return SaveGoalResult.success();
    } catch (e) {
      print(e);
      return SaveGoalResult.internalError();
    }
  }

  @override
  Stream<List<GoalDto>> get myGoals async* {
    final user = _auth.currentUser;
    if (user == null) {
      return;
    }
    yield* byAuthorId(authorId: user.uid);
  }

  @override
  Future<void> deleteGoal(GoalDto goal) {
    return collection.doc(goal.id).delete();
  }

  @override
  Future<GoalDto?> load(String id) async {
    if (id.isEmpty) {
      return null;
    }
    final doc = await convertedCollection.doc(id).get();
    return doc.data()?.toDomain(id: doc.id);
  }

  @override
  Future<List<GoalDto>> loadByAuthorId({
    required String authorId,
    bool? publicFilter,
  }) async {
    if (authorId.isEmpty) return [];

    late final QuerySnapshot<GoalData?> snapshot;
    if (publicFilter != null) {
      snapshot = await convertedCollection
          .where(GoalData.authorIdKey, isEqualTo: authorId)
          .where(GoalData.isPublicKey, isEqualTo: publicFilter)
          .get();
    } else {
      snapshot = await convertedCollection
          .where(GoalData.authorIdKey, isEqualTo: authorId)
          .get();
    }

    final list = <GoalDto>[];
    for (var doc in snapshot.docs) {
      if (doc.data() == null) continue;
      list.add(doc.data()!.toDomain(id: doc.id));
    }
    return list;
  }

  @override
  Stream<List<GoalDto>> byAuthorId({
    required String authorId,
    bool? publicFilter,
  }) async* {
    if (authorId.isEmpty) return;

    late final Stream<List<QueryDocumentSnapshot<GoalData?>>> docsStream;

    if (publicFilter != null) {
      docsStream = convertedCollection
          .where(GoalData.authorIdKey, isEqualTo: authorId)
          .where(GoalData.isPublicKey, isEqualTo: publicFilter)
          .snapshots().map((snapshot) => snapshot.docs);
    } else {
      docsStream = convertedCollection
          .where(GoalData.authorIdKey, isEqualTo: authorId)
          .snapshots().map((snapshot) => snapshot.docs);
    }

    await for (var docs in docsStream) {
      final list = <GoalDto>[];
      for (var doc in docs) {
        if (doc.data() != null) {
          list.add(doc.data()!.toDomain(id: doc.id));
        }
      }
      yield list;
    }
  }
}
