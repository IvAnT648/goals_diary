
import 'package:injectable/injectable.dart';

import '../../data/repository/subscriptions.dart';
import '../models.dart';

abstract class GetSubscriptionsUseCase {
  Stream<SubscriptionsDto> call();
}

@Injectable(as: GetSubscriptionsUseCase)
class GetSubscriptionsUseCaseImpl implements GetSubscriptionsUseCase {
  final SubscriptionsRepository _repository;

  GetSubscriptionsUseCaseImpl(this._repository);

  @override
  Stream<SubscriptionsDto> call() async* {
    yield* _repository.own;
  }
}
