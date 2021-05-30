
import 'package:injectable/injectable.dart';

import '../../data/repository/subscriptions.dart';
import '../models.dart';

abstract class SubscribingUseCase {
  void subscribeTo(UserDto user);
  void unsubscribeFrom(UserDto user);
  Stream<SubscriptionsDto> get own;
}

@Injectable(as: SubscribingUseCase)
class SubscribingUseCaseImpl implements SubscribingUseCase {
  final SubscriptionsRepository _repository;

  SubscribingUseCaseImpl(this._repository);

  @override
  void subscribeTo(UserDto user) async {
    await _repository.subscribeTo(user.id);
  }

  @override
  void unsubscribeFrom(UserDto user) async {
    await _repository.unsubscribeFrom(user.id);
  }

  @override
  Stream<SubscriptionsDto> get own async* {
    yield* _repository.own;
  }
}

