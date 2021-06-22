import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../common/utils.dart';
import '../../domain/models.dart';
import '../models.dart';
import 'auth.dart';
import 'goals.dart';
import 'posts.dart';

abstract class ActivityRepository {
  Stream<List<GoalActivityDto>> get myActivities;

  Future<void> set(GoalActivityDto activity, String authorId, bool value);

  Future<void> setOwn(GoalActivityDto activity, bool value);
}

@Injectable(as: ActivityRepository)
class ActivityRepositoryImpl implements ActivityRepository {
  static const String _activityCollectionName = 'activities';

  final CollectionReference collection =
      FirebaseFirestore.instance.collection(_activityCollectionName);

  final GoalsRepository _goalsRepository;
  final AuthRepository _authRepository;
  final PostsRepository _postsRepository;

  ActivityRepositoryImpl(
      this._goalsRepository,
      this._authRepository,
      this._postsRepository,
  );

  @override
  Stream<List<GoalActivityDto>> get myActivities async* {
    final today = getTodayWithoutTime();
    final todayInMs = today.millisecondsSinceEpoch;
    final weekday = today.weekday - 1;

    await for (final goals in _goalsRepository.goalsForDay(weekday)) {
      if (goals.isEmpty) {
        yield [];
        return;
      }

      final goalIds = _getGoalIds(goals);

      final docsStream = collection
          .withConverter<GoalActivityData?>(
              fromFirestore: (snapshot, _) => snapshot.data() != null
                  ? GoalActivityData.fromMap(snapshot.data()!)
                  : null,
              toFirestore: (activity, _) => activity?.toMap() ?? {})
          .where(GoalActivityData.goalIdKey, whereIn: goalIds)
          .where(GoalActivityData.dateKey, isEqualTo: todayInMs)
          .snapshots()
          .handleError((e) => print('Error when listen my activities:\n$e'))
          .map((snapshot) => snapshot.docs);

      await for (final docs in docsStream) {
        // Get completed activities IDs
        final completedActivityIds = <String, bool>{};
        for (var doc in docs) {
          final raw = doc.data();
          if (raw == null) continue;
          completedActivityIds[raw.goalId] = true;
        }
        // Form activities list
        final activities = <GoalActivityDto>[];
        for (final goal in goals) {
          activities.add(GoalActivityDto(
            goal: goal,
            isDone: completedActivityIds[goal.id] != null,
          ));
        }

        yield activities;
      }
    }
  }

  List<String> _getGoalIds(List<GoalDto> goals) {
    final array = <String>[];
    for (final goal in goals) {
      if (goal.id != null) {
        array.add(goal.id!);
      }
    }
    return array;
  }

  @override
  Future<void> setOwn(GoalActivityDto activity, bool value) async {
    if (_authRepository.currentUser == null) return;
    await set(activity, _authRepository.currentUser!.uid, value);
  }

  @override
  Future<void> set(
      GoalActivityDto activity,
      String authorId,
      bool value,
  ) async {
    if (activity.goal.id == null || authorId.isEmpty) {
      return;
    }

    final date = getTodayWithoutTime();

    if (value) {
      /// Create activity and it post
      final data = GoalActivityData(
        goalId: activity.goal.id!,
        authorId: authorId,
        createdAt: date,
        isPublic: activity.goal.isPublic,
      );
      final activityDoc = await collection
          .add(data.toMap())
          .catchError((e) {
            print('Error when create activity for the goal '
                '${activity.goal.id!}:\n$e');
          });
      if (activity.goal.isPublic) {
        await _postsRepository.create(
          authorId: authorId,
          activityId: activityDoc.id,
          goalId: activity.goal.id!,
        );
      }
      return;
    }

    /// Delete activity and it post
    await collection
        .where(GoalActivityData.dateKey, isEqualTo: date.millisecondsSinceEpoch)
        .where(GoalActivityData.goalIdKey, isEqualTo: activity.goal.id!)
        .get()
        .then((data) => data.docs.forEach((el) async {
              await _postsRepository.delete(
                authorId: authorId,
                activityId: el.id,
              ).onError((e, _) => print('Error when post deleting:\n$e'));
              await collection.doc(el.id).delete();
            }))
        .catchError((e) => print('Error when get activities:\n$e'));
  }
}
