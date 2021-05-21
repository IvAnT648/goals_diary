
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/goals.dart' show GoalType;

part 'states.freezed.dart';

@freezed
class EditGoalState with _$EditGoalState {
  const factory EditGoalState.initial(GoalType type) = InitialEditGoalState;

  const factory EditGoalState.typeChanged(GoalType type) =
    TypeChangedEditGoalState;
}

