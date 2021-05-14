
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecases/my_goals.dart';
import 'bloc/events.dart';
import 'bloc/states.dart';

export 'bloc/events.dart';
export 'bloc/states.dart';

class MyGoalsScreenBloc extends Bloc<MyGoalsScreenEvent, MyGoalsScreenState> {
  final GetMyGoalsUseCaseTest _getMyGoalsUseCase = GetMyGoalsUseCaseTest();

  MyGoalsScreenBloc() : super(MyGoalsScreenState.loading()) {
    add(MyGoalsScreenEvent.init());
  }

  @override
  Stream<MyGoalsScreenState> mapEventToState(MyGoalsScreenEvent event) =>
      event.when(
        init: _init,
      );

  Stream<MyGoalsScreenState> _init() async* {
    yield MyGoalsScreenState.success(_getMyGoalsUseCase());
  }
}
