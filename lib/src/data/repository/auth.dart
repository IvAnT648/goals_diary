
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../domain/models.dart';
import 'utils.dart';

abstract class AuthRepository {
  bool isLoggedIn();
  Stream<UserDto?> get currentUserStream;
  UserDto? get currentUser;
}

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  bool isLoggedIn() {
    return _auth.currentUser != null;
  }

  @override
  Stream<UserDto?> get currentUserStream {
    return _auth.authStateChanges().map((user) => user?.toDomain());
  }

  @override
  UserDto? get currentUser => _auth.currentUser?.toDomain();
}
