import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../domain/models.dart';
import 'profile.dart';

abstract class EmailAuthRepository {
  Future<SignInResult> signIn(String email, String password);
  Future<SignUpResult> signUp({
    required String email,
    required String password,
    required String nickname,
  });
  Future<void> signOut();
}

@Injectable(as: EmailAuthRepository)
class EmailAuthRepositoryFirebase implements EmailAuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final ProfileRepository _profileRepository;

  EmailAuthRepositoryFirebase(this._profileRepository);

  @override
  Future<SignInResult> signIn(String email, String password) async {
    try {
      var result = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (result.user != null) {
        return SignInResult.success();
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return SignInResult.userNotFound();
      }
      if (e.code == 'wrong-password') {
        return SignInResult.wrongPassword();
      }
      if (e.code == 'invalid-email') {
        return SignInResult.invalidEmail();
      }
    } on Exception catch (e) {
      print('Auth error:\n$e');
    }
    return SignInResult.internalError();
  }

  @override
  Future<SignUpResult> signUp({
    required String email,
    required String password,
    required String nickname,
  }) async {
    try {
      final isAvailableNickname =
          await _profileRepository.isAvailableNickname(nickname);
      if (!isAvailableNickname) {
        return SignUpResult.duplicatedNickname();
      }

      var result = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (result.user != null) {
        return SignUpResult.success(result.user!.uid);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return SignUpResult.alreadyExists();
      }
      if (e.code == 'weak-password') {
        return SignUpResult.weakPassword();
      }
      if (e.code == 'invalid-email') {
        return SignUpResult.invalidEmail();
      }
    } on Exception catch (e) {
      print('Auth error:\n$e');
    }
    return SignUpResult.internalError();
  }

  @override
  Future<void> signOut() async {
    await _auth.signOut().catchError((e) => print('Sign out error:\n$e'));
  }
}
