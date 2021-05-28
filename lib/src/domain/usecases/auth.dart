
import 'package:injectable/injectable.dart';

abstract class IsLoggedInUseCase {
  bool call();
}

@Injectable(as: IsLoggedInUseCase)
class IsLoggedInUseCaseImpl implements IsLoggedInUseCase {
  @override
  bool call() {
    return true;
  }
}

