
abstract class IsLoggedInUseCase {
  bool call();
}

class IsLoggedInUseCaseImpl implements IsLoggedInUseCase {
  @override
  bool call() {
    return true;
  }
}

