
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

import '../../domain/models.dart';

extension ToDomainUserModel on firebase_auth.User {
  UserInfoDto toDomain() {
    return UserInfoDto(
      id: uid,
      name: displayName ?? '',
      nickname: uid,
      avatarUrl: photoURL,
    );
  }
}
