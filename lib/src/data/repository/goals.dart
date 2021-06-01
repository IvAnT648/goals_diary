import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../domain/models.dart';
import '../models.dart';
import 'auth.dart';
import 'utils.dart';

abstract class GoalsRepository {
  Future<SaveGoalResult> saveGoal(GoalDto goal);

  Future<void> deleteGoal(GoalDto goal);

  Stream<List<GoalDto>> get myGoals;

  Future<GoalDto?> get(String id);
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
      yield [];
      return;
    }

    final goalDocsStream = convertedCollection
        .where(GoalData.authorIdKey, isEqualTo: user.uid)
        .snapshots()
        .map((snapshot) => snapshot.docs);

    await for (var goalDocs in goalDocsStream) {
      final goals = <GoalDto>[];
      for (var goalDoc in goalDocs) {
        if (goalDoc.data() == null) continue;
        goals.add(goalDoc.data()!.toDomain(id: goalDoc.id));
      }
      yield goals;
    }
  }

  @override
  Future<void> deleteGoal(GoalDto goal) {
    return collection.doc(goal.id).delete();
  }

  @override
  Future<GoalDto?> get(String id) async {
    if (id.isEmpty) {
      return null;
    }
    final doc = await convertedCollection.doc(id).get();
    return doc.data()?.toDomain(id: doc.id);
  }
}
