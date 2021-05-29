
import 'package:injectable/injectable.dart';

import '../models.dart';

abstract class GetActivitiesUseCase {
  Stream<GoalActivityDto> call();
}

@Injectable(as: GetActivitiesUseCase)
class GetActivitiesUseCaseImpl implements GetActivitiesUseCase {
  @override
  Stream<GoalActivityDto> call() async* {

  }
}

