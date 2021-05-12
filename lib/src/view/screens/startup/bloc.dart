import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/states.dart';
import 'bloc/events.dart';

export 'bloc/states.dart';
export 'bloc/events.dart';

class StartupScreenBloc extends Bloc<StartupScreenEvent, StartupScreenState> {
  StartupScreenBloc() : super(StartupScreenState.initial());

  @override
  Stream<StartupScreenState> mapEventToState(StartupScreenEvent event) =>
      event.when(
        init: _init,
      );

  Stream<StartupScreenState> _init() async* {
    // TODO: remove stub
    await Future.delayed(Duration(seconds: 1));
    yield StartupScreenState.notAuthorized();
  }
}
