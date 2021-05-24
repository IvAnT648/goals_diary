
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goals_diary/src/domain/models.dart';

import '../../../../domain/models/goals.dart';

part 'events.freezed.dart';

@freezed
class EditGoalEvent with _$EditGoalEvent {
  const factory EditGoalEvent.submit(GoalDto goal) =
    SubmitEditGoalEvent;
}

