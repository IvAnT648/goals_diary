
import 'package:freezed_annotation/freezed_annotation.dart';

part 'states.freezed.dart';

@freezed
class EditGoalState with _$EditGoalState {
  const factory EditGoalState.initial() = InitialEditGoalState;
}

