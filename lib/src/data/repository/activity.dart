import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../common/utils.dart';
import '../../domain/models.dart';
import '../models.dart';
import 'goals.dart';
import 'utils.dart';

abstract class ActivityRepository {
  Stream<List<GoalActivityDto>> get myActivities;
}

@Injectable(as: ActivityRepository)
class ActivityRepositoryImpl implements ActivityRepository {
  static const String _activityCollectionName = 'activities';

  final CollectionReference collection =
      FirebaseFirestore.instance.collection(_activityCollectionName);

  final GoalsRepository _goalsRepository;

  ActivityRepositoryImpl(this._goalsRepository);

  @override
  Stream<List<GoalActivityDto>> get myActivities async* {
    await for (final goals in _goalsRepository.myGoals) {
      final idGoalMap = _getIdGoalMap(goals);
      final todayInMs = getTodayWithoutTime().millisecondsSinceEpoch;
      yield* collection
          .withConverter<GoalActivityData>(
              fromFirestore: (snapshot, _) =>
                  GoalActivityData.fromMap(snapshot.data() ?? {}),
              toFirestore: (activity, _) => activity.toMap())
          .where(GoalActivityData.goalIdKey, whereIn: idGoalMap.keys.toList())
          .where(GoalActivityData.dateKey, isEqualTo: todayInMs)
          .snapshots()
          .map((snapshot) => snapshot.docs.map((doc) {
                final raw = doc.data();
                // Null check because we used 'where'
                return raw.toDomain(idGoalMap[raw.goalId]!);
              }).toList()).map((activities) {
                // Add not completed activities
                for (final goal in goals) {
                  if (activities.any((el) => el.goal == goal)) {
                    continue;
                  }
                  activities.add(GoalActivityDto(goal: goal, isDone: false));
                }
                return activities;
      });
    }
  }

  Map<String, GoalDto> _getIdGoalMap(List<GoalDto> goals) {
    final map = <String, GoalDto>{};
    for (final goal in goals) {
      if (goal.id != null) {
        map[goal.id!] = goal;
      }
    }
    return map;
  }
}
