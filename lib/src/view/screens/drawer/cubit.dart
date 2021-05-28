import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/usecases.dart';

import 'cubit/states.dart';

export 'cubit/states.dart';

@injectable
class AppDrawerCubit extends Cubit<AppDrawerState> {
  final IsLoggedInUseCase _isLoggedIn;
  final GetOwnProfileInfoUseCase _getOwnProfileInfo;
  final LogoutUseCase _logout;

  AppDrawerCubit(
    this._isLoggedIn,
    this._getOwnProfileInfo,
    this._logout,
  ) : super(_isLoggedIn()
            ? AppDrawerState.authorized(_getOwnProfileInfo())
            : AppDrawerState.unauthorized());

  void logout() => _logout();
}
