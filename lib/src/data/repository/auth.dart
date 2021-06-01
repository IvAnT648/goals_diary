
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

abstract class AuthRepository {
  bool isLoggedIn();
  Stream<User?> get currentUserStream;
  User? get currentUser;
  String? get currentUserId;
}

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  bool isLoggedIn() {
    return _auth.currentUser != null;
  }

  @override
  Stream<User?> get currentUserStream {
    return _auth.authStateChanges();
  }

  @override
  User? get currentUser => _auth.currentUser;

  @override
  String? get currentUserId => _auth.currentUser?.uid;
}
