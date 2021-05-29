
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

import '../../domain/models.dart';
import '../models.dart';

extension ToDomainUserModel on firebase_auth.User {
  UserInfoDto toDomain() {
    return UserInfoDto(
      id: uid,
      name: displayName ?? '',
      avatarUrl: photoURL,
    );
  }
}

extension ToDataGoalModel on GoalDto {
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
