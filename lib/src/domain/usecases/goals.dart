
import 'package:injectable/injectable.dart';

import '../../data/repository/goals.dart';
import '../models.dart';

abstract class GoalsUseCases {
  Stream<List<GoalDto>> myGoals();
  Stream<List<GoalDto>> onlyPublicByAuthorId(String id);
  Future<SaveGoalResult> save(GoalDto goal);
  Future<void> delete(GoalDto goal);
}

@Injectable(as: GoalsUseCases)
class GoalsUseCasesImpl implements GoalsUseCases {
  final GoalsRepository _repository;

  GoalsUseCasesImpl(this._repository);

  Stream<List<GoalDto>> onlyPublicByAuthorId(String id) async* {
    yield* _repository.byAuthorId(
      authorId: id,
      publicFilter: true,
    );
  }

  @override
  Stream<List<GoalDto>> myGoals() async* {
    yield* _repository.myGoals;
  }

  @override
  Future<SaveGoalResult> save(GoalDto goal) {
    return _repository.saveGoal(goal);
  }

  @override
  Future<void> delete(GoalDto goal) async {
    return _repository.deleteGoal(goal);
  }
}
