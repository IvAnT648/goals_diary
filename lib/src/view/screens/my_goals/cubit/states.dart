
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goals_diary/src/domain/models.dart';

part 'states.freezed.dart';

@freezed
class MyGoalsScreenState with _$MyGoalsScreenState {
  const factory MyGoalsScreenState.loading() = LoadingMyGoalsScreenState;
  const factory MyGoalsScreenState.empty() = EmptyMyGoalsScreenState;
  const factory MyGoalsScreenState.success(List<GoalDto> goals) =
      SuccessMyGoalsScreenState;
}
