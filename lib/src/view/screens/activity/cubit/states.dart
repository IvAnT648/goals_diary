
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models.dart';

part 'states.freezed.dart';

@freezed
class ActivityScreenState with _$ActivityScreenState {
  const factory ActivityScreenState.empty() = EmptyActivityScreenState;
  const factory ActivityScreenState.loading() = LoadingActivityScreenState;
  const factory ActivityScreenState.list(List<GoalActivityDto> activities) =
    ListActivityScreenState;
}

