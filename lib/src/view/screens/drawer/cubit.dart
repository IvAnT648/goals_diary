import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecases.dart';

import 'bloc/states.dart';

export 'bloc/states.dart';

class AppDrawerCubit extends Cubit<AppDrawerState> {
  final IsLoggedInUseCase _isLoggedIn;
  final GetOwnProfileInfoUseCase _getOwnProfileInfo;

  AppDrawerCubit(
    this._isLoggedIn,
    this._getOwnProfileInfo,
  ) : super(_isLoggedIn()
            ? AppDrawerState.authorized(_getOwnProfileInfo())
            : AppDrawerState.unauthorized());
}
