import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/usecases/goals.dart';
import 'cubit/states.dart';

export 'cubit/states.dart';

@injectable
class MyGoalsScreenCubit extends Cubit<MyGoalsScreenState> {
  static const int maxGoalsQty = 10;

  final GoalsUseCases _goalsUseCases;

  MyGoalsScreenCubit(this._goalsUseCases)
      : super(MyGoalsScreenState.loading()) {
    _goalsUseCases.myGoals().listen((goals) {
      if (goals.isEmpty) {
        return emit(MyGoalsScreenState.empty());
      }
      emit(MyGoalsScreenState.success(goals));
    });
  }
}
