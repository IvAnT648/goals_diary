
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/usecases/goals.dart';
import '../../../domain/models.dart';

class GoalScreenState {}

@injectable
class GoalScreenCubit extends Cubit<GoalScreenState> {
  final GoalsUseCases _goalsUseCases;

  GoalScreenCubit(this._goalsUseCases) : super(GoalScreenState());

  Future<SaveGoalResult> save(GoalDto goal) async {
    if (goal.title.isEmpty) {
      return SaveGoalResult.incorrectName();
    }
    return await _goalsUseCases.save(goal);
  }

  void delete(GoalDto goal) async {
    return await _goalsUseCases.delete(goal);
  }
}
