
import 'package:injectable/injectable.dart';

import '../../data/repository/goals.dart';
import '../models.dart';

abstract class GetMyGoalsUseCase {
  Stream<List<GoalDto>> call();
}

@Injectable(as: GetMyGoalsUseCase)
class GetMyGoalsUseCaseImpl extends GetMyGoalsUseCase {
  final GoalsRepository _repository;

  GetMyGoalsUseCaseImpl(this._repository);

  @override
  Stream<List<GoalDto>> call() {
    return _repository.myGoals;
  }
}
