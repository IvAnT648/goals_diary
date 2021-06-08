
import 'package:injectable/injectable.dart';

import '../../data/repository/auth.dart';
import '../../data/repository/email_auth.dart';
import '../../data/repository/profile.dart';
import '../models.dart';

abstract class IsLoggedInUseCase {
  bool call();
}

abstract class LogoutUseCase {
  void call();
}

abstract class SignUpUseCase {
  Future<SignUpResult> call({
    required String email,
    required String password,
    required String name,
    String? surname,
    required String nickname,
  });
}

abstract class SignInUseCase {
  Future<SignInResult> call(String email, String password);
}

/// ----------------------------------------------------------------------------

@Injectable(as: IsLoggedInUseCase)
class IsLoggedInUseCaseImpl implements IsLoggedInUseCase {
  final AuthRepository _repository;

  IsLoggedInUseCaseImpl(this._repository);

  @override
  bool call() {
    return _repository.isLoggedIn();
  }
}

@Injectable(as: LogoutUseCase)
class LogoutUseCaseImpl implements LogoutUseCase {
  final EmailAuthRepository _repository;

  LogoutUseCaseImpl(this._repository);

  @override
  void call() {
    _repository.signOut();
  }
}

@Injectable(as: SignUpUseCase)
class SignUpUseCaseImpl implements SignUpUseCase {
  final EmailAuthRepository _repository;
  final ProfileRepository _profile;

  SignUpUseCaseImpl(this._repository, this._profile);

  @override
  Future<SignUpResult> call({
    required String email,
    required String password,
    required String name,
    String? surname,
    required String nickname,
  }) async {
    // Sign up
    SignUpResult result = await _repository.signUp(
      email: email,
      password: password,
      nickname: nickname,
    );
    if (result is SuccessSignUpResult) {
      // Save profile data
      result = await _profile.register(
        UserDto(
          id: result.uid,
          name: name,
          surname: surname,
          nickname: nickname,
        )
      );
    }
    return result;
  }
}

@Injectable(as: SignInUseCase)
class SignInUseCaseImpl implements SignInUseCase {
  final EmailAuthRepository _repository;

  SignInUseCaseImpl(this._repository);

  @override
  Future<SignInResult> call(String email, String password) {
    return _repository.signIn(email, password);
  }
}
