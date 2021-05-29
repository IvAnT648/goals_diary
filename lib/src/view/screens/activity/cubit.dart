import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/models.dart';
import '../../../domain/usecases.dart';
import 'cubit/states.dart';

export 'cubit/states.dart';

@injectable
class ActivityScreenCubit extends Cubit<ActivityScreenState> {
  final GetMyGoalsUseCase _getMyGoals;
  late final List<GoalActivityDto> list;

  ActivityScreenCubit(this._getMyGoals) : super(ActivityScreenState.loading()) {
    _getMyGoals().listen((goals) {
      list = goals.map((el) =>
          GoalActivityDto(goal: el, isDone: false)
      ).toList();
      if (list.isEmpty) {
        return emit(ActivityScreenState.empty());
      }
      emit(ActivityScreenState.list(list));
    });
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
