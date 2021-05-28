
import 'package:injectable/injectable.dart';

import '../../data/repository/auth.dart';
import '../../data/repository/email_auth.dart';
import '../models.dart';

abstract class IsLoggedInUseCase {
  bool call();
}

abstract class LogoutUseCase {
  void call();
}

abstract class SignUpUseCase {
  Future<SignUpResult> call(String email, String password);
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

  SignUpUseCaseImpl(this._repository);

  @override
  Future<SignUpResult> call(String email, String password) {
    return _repository.signUp(email, password);
  }
}
