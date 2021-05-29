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
}

@Injectable(as: GoalsRepository)
class GoalsRepositoryImpl implements GoalsRepository {
  static const String _goalsCollectionName = 'goals';

  final CollectionReference collection =
      FirebaseFirestore.instance.collection(_goalsCollectionName);

  final AuthRepository _auth;

  GoalsRepositoryImpl(this._auth);

  @override
  Future<SaveGoalResult> saveGoal(GoalDto goal) async {
    if (_auth.currentUser?.id == null) {
      return SaveGoalResult.internalError();
    }
    try {
      final data = goal.toData(authorId: _auth.currentUser!.id!).toMap();
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
    if (user?.id == null) {
      yield [];
      return;
    }

    yield* collection
        .withConverter<GoalData>(
            fromFirestore: (snapshot, _) =>
                GoalData.fromFirestore(snapshot.data() ?? {}),
            toFirestore: (goal, _) => goal.toMap())
        .where(GoalData.authorIdKey, isEqualTo: user!.id!)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => doc.data().toDomain(id: doc.id))
            .toList());
  }

  @override
  Future<void> deleteGoal(GoalDto goal) {
    return collection.doc(goal.id).delete();
  }
}
