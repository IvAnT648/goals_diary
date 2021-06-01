import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/usecases.dart';

import 'cubit/states.dart';

export 'cubit/states.dart';

@injectable
class AppDrawerCubit extends Cubit<AppDrawerState> {
  final ProfileUseCase _profile;
  final LogoutUseCase _logout;

  AppDrawerCubit(
    this._profile,
    this._logout,
  ) : super(AppDrawerState.loading()) {
    _profile.ownStream.listen((user) {
      if (user == null) {
        return emit(AppDrawerState.unauthorized());
      }
      emit(AppDrawerState.authorized(user));
    });
  }

  void logout() => _logout();
}
