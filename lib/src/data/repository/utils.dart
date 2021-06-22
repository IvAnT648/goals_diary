
import '../../domain/models.dart';
import '../../common/utils.dart';
import '../models.dart';

extension GoalDtoToData on GoalDto {
  GoalData toData({required String authorId}) {
    return GoalData(
      title: title,
      description: description,
      isPublic: isPublic,
      isNotifying: sendNotifications,
      authorId: authorId,
      notificationTime: notificationsTime?.toFirestore(),
      periodicity: periodicity.map((e) => e.index).toList(),
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
      notificationsTime: notificationTime?.toDomain(),
      periodicity: periodicity.map((i) => WeekDays.values[i]).toSet(),
    );
  }
}

extension GoalActivityDtoToData on GoalActivityDto {
  GoalActivityData? toData(String authorId) {
    if (goal.id == null || authorId.isEmpty) {
      return null;
    }
    return GoalActivityData(
      goalId: goal.id!,
      authorId: authorId,
      createdAt: getTodayWithoutTime(),
      isPublic: goal.isPublic,
    );
  }
}

extension GoalActivityDataToDomain on GoalActivityData {
  GoalActivityDto toDomain(GoalDto goal, [String? id, bool isDone = true]) {
    return GoalActivityDto(
      id: id,
      isDone: isDone,
      goal: goal,
    );
  }
}

extension UserDtoToData on UserDto {
  ProfileData toData() {
    return ProfileData(
      name: name,
      surname: surname,
      nickname: nickname,
      motto: motto,
      about: about,
    );
  }
}

extension ProfileDataToDomain on ProfileData {
  UserDto toDomain({
    required String id,
    String? photoUrl,
    List<GoalDto> goals = const [],
    bool? isSubscribed,
  }) {
    return UserDto(
      id: id,
      name: name,
      surname: surname,
      nickname: nickname,
      motto: motto,
      about: about,
      avatarUrl: photoUrl,
      goals: goals,
      isSubscribed: isSubscribed,
    );
  }
}

extension SubscriptionDtoToDataExt on SubscriptionsDto {
  SubscriptionsData toData() =>
      SubscriptionsData(
          subscriptions: subscriptions.map((e) => e.id).toList()
      );
}

extension SubscriptionDataToDomainExt on SubscriptionsData {
  SubscriptionsDto toDomain({
    required String userId,
    required List<UserDto> subs,
  }) {
    return SubscriptionsDto(
        uid: userId,
        subscriptions: subs,
    );
  }
}

extension NotificationTimeFirestoreExt on NotificationTimeDto {
  NotificationTimeRaw toFirestore() {
    return NotificationTimeRaw(
      hour: hour,
      minute: minute,
    );
  }
}

extension NotificationTimeToDomainExt on NotificationTimeRaw {
  NotificationTimeDto toDomain() {
    return NotificationTimeDto(
      hour: hour,
      minute: minute,
    );
  }
}
