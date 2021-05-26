import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goals_diary/src/domain/models.dart';

import '../../../domain/usecases.dart';
import 'bloc/states.dart';

export 'bloc/states.dart';

class ActivityScreenCubit extends Cubit<ActivityScreenState> {
  final GetMyGoalsUseCase _getMyGoals;
  late final List<GoalActivityDto> list;

  ActivityScreenCubit(this._getMyGoals) : super(ActivityScreenState.loading()) {
    // TODO: fix mocks
    list = _getMyGoals()
        .map((e) => GoalActivityDto(goal: e, isDone: false))
        .toList();
    emit(ActivityScreenState.list(list));
  }

  void _setActivityValue(GoalActivityDto activity, bool value) {
    // TODO: fix mocks
    for (var i = 0; i < list.length; i++) {
      if (list[i] != activity) continue;
      list[i] = list[i].copyWith(isDone: value);
    }
  }

  bool complete(GoalActivityDto activity) {
    _setActivityValue(activity, true);
    return true;
  }

  bool cancel(GoalActivityDto activity) {
    _setActivityValue(activity, false);
    return true;
  }
}
