
import 'package:injectable/injectable.dart';

import '../../data/repository/goals.dart';

import '../models.dart';

abstract class SaveGoalUseCase {
  Future<SaveGoalResult> call(GoalDto goal);
}

@Injectable(as: SaveGoalUseCase)
class SaveGoalUseCaseImpl implements SaveGoalUseCase {
  final GoalsRepository _repository;

  SaveGoalUseCaseImpl(this._repository);

  @override
  Future<SaveGoalResult> call(GoalDto goal) async {
    return _repository.saveGoal(goal);
  }
}
