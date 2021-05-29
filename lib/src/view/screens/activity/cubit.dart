import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/models.dart';
import '../../../domain/usecases.dart';
import 'cubit/states.dart';

export 'cubit/states.dart';

@injectable
class ActivityScreenCubit extends Cubit<ActivityScreenState> {
  final ActivityUseCase _activity;

  ActivityScreenCubit(this._activity)
      : super(ActivityScreenState.loading()) {
    _activity.todayList.listen((activities) {
      if (activities.isEmpty) {
        emit(ActivityScreenState.empty());
        return;
      }

      emit(ActivityScreenState.list(activities));
    });
  }

  void toggle(GoalActivityDto activity) {
    _activity.toggle(activity);
  }
}
