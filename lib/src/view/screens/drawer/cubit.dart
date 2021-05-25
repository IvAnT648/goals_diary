
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/models/user.dart';

import 'bloc/states.dart';

export 'bloc/states.dart';

class AppDrawerCubit extends Cubit<AppDrawerState> {
  static final UserInfoDto _sampleUserInfo = UserInfoDto(
    name: 'Alexander',
    surname: 'Ivanov',
    nickname: 'alexander442',
    info: 'Программист 80 lvl',
    motto: 'Не всякий кодер - программист',
    avatarUrl: 'https://databytenitt.github.io/img/male.png',
  );

  AppDrawerCubit() : super(true
      ? AppDrawerState.authorized(_sampleUserInfo)
      : AppDrawerState.unauthorized()
  );
}
