
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

import '../../domain/models.dart';
import '../../common/utils.dart';
import '../models.dart';

extension UserModelToDomain on firebase_auth.User {
  UserDto toDomain() {
    return UserDto(
      id: uid,
      name: displayName ?? '',
      avatarUrl: photoURL,
    );
  }
}

extension GoalDtoToData on GoalDto {
  GoalData toData({required String authorId}) {
    return GoalData(
      title: title,
      description: description,
      isPublic: isPublic,
      isNotifying: sendNotifications,
      authorId: authorId,
    );
  }
}

extension GoalDataToDomain on GoalData {
  GoalDto toDomain({required String id}) {
    return GoalDto(
      id: id,
      title: title,
      description: description,
      type: isPublic ? GoalType.public : GoalType.private,
      sendNotifications: isNotifying,
    );
  }
}

extension GoalActivityDtoToData on GoalActivityDto {
  GoalActivityData? toData() {
    if (goal.id == null) {
      return null;
    }
    return GoalActivityData(
      goalId: goal.id!,
      createdAt: getTodayWithoutTime(),
    );
  }
}

extension GoalActivityDataToDomain on GoalActivityData {
  GoalActivityDto toDomain(GoalDto goal) {
    return GoalActivityDto(
      isDone: true,
      goal: goal,
    );
  }
}
