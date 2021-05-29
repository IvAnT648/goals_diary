
import 'package:injectable/injectable.dart';

import '../../data/repository/goals.dart';
import '../models.dart';

abstract class DeleteGoalUseCase {
  Future<void> call(GoalDto goal);
}

@Injectable(as: DeleteGoalUseCase)
class DeleteGoalUseCaseImpl implements DeleteGoalUseCase {
  final GoalsRepository _repository;

  DeleteGoalUseCaseImpl(this._repository);

  @override
  Future<void> call(GoalDto goal) {
    return _repository.deleteGoal(goal);
  }
}

