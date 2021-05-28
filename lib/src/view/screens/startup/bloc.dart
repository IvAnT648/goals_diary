import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/usecases/auth.dart';
import 'bloc/states.dart';
import 'bloc/events.dart';

export 'bloc/states.dart';
export 'bloc/events.dart';

@injectable
class StartupScreenBloc extends Bloc<StartupScreenEvent, StartupScreenState> {
  final IsLoggedInUseCase _isLoggedIn;

  StartupScreenBloc(this._isLoggedIn) : super(StartupScreenState.initial());

  @override
  Stream<StartupScreenState> mapEventToState(StartupScreenEvent event) =>
      event.when(
        init: _init,
      );

  Stream<StartupScreenState> _init() async* {
    yield _isLoggedIn()
        ? StartupScreenState.authorized()
        : StartupScreenState.notAuthorized();
  }
}
