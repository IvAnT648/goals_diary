
import 'package:injectable/injectable.dart';

import '../../data/repository/auth.dart';

abstract class IsLoggedInUseCase {
  bool call();
}

@Injectable(as: IsLoggedInUseCase)
class IsLoggedInUseCaseImpl implements IsLoggedInUseCase {
  final AuthRepository _repository;

  IsLoggedInUseCaseImpl(this._repository);

  @override
  bool call() {
    return _repository.isLoggedIn();
  }
}

