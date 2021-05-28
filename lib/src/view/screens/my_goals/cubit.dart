
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/usecases.dart';
import 'cubit/states.dart';

export 'cubit/states.dart';

@injectable
class MyGoalsScreenCubit extends Cubit<MyGoalsScreenState> {
  final GetMyGoalsUseCase _getMyGoals;

  MyGoalsScreenCubit(this._getMyGoals)
      : super(MyGoalsScreenState.success(_getMyGoals()));
}