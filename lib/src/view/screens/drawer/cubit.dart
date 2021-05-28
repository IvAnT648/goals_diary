import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/usecases.dart';

import 'cubit/states.dart';

export 'cubit/states.dart';

@injectable
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
