
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/usecases/goals.dart';
import '../../../domain/models.dart';

class EditGoalState {}

@injectable
class EditGoalCubit extends Cubit<EditGoalState> {
  final GoalsUseCases _goalsUseCases;

  EditGoalCubit(this._goalsUseCases) : super(EditGoalState());

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
