
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/usecases/save_goal.dart';
import '../../../domain/usecases/delete_goal.dart';
import '../../../domain/models.dart';

class EditGoalState {}

@injectable
class EditGoalCubit extends Cubit<EditGoalState> {
  final SaveGoalUseCase _saveGoal;
  final DeleteGoalUseCase _deleteGoal;

  EditGoalCubit(this._saveGoal, this._deleteGoal) : super(EditGoalState());

  Future<SaveGoalResult> save(GoalDto goal) async {
    if (goal.title.isEmpty) {
      return SaveGoalResult.incorrectName();
    }
    return await _saveGoal(goal);
  }

  void delete(GoalDto goal) async {
    return await _deleteGoal(goal);
  }
}
