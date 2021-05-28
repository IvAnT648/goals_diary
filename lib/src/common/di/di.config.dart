// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/repository/auth.dart' as _i6;
import '../../data/repository/email_auth.dart' as _i8;
import '../../domain/usecases.dart' as _i4;
import '../../domain/usecases/auth.dart' as _i14;
import '../../domain/usecases/get_my_goals.dart' as _i10;
import '../../domain/usecases/get_posts.dart' as _i12;
import '../../domain/usecases/get_subscriptions.dart' as _i13;
import '../../domain/usecases/profile.dart' as _i11;
import '../../domain/usecases/save_goal.dart' as _i17;
import '../../view/screens/activity/cubit.dart' as _i3;
import '../../view/screens/drawer/cubit.dart' as _i5;
import '../../view/screens/edit_goal/cubit.dart' as _i7;
import '../../view/screens/feed/cubit.dart' as _i9;
import '../../view/screens/my_goals/cubit.dart' as _i15;
import '../../view/screens/profile/cubit.dart' as _i16;
import '../../view/screens/startup/bloc.dart' as _i18;
import '../../view/screens/subscriptions/cubit.dart'
    as _i19; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.ActivityScreenCubit>(
      () => _i3.ActivityScreenCubit(get<_i4.GetMyGoalsUseCase>()));
  gh.factory<_i5.AppDrawerCubit>(() => _i5.AppDrawerCubit(
      get<_i4.IsLoggedInUseCase>(), get<_i4.GetOwnProfileInfoUseCase>()));
  gh.factory<_i6.AuthRepository>(() => _i6.AuthRepositoryImpl());
  gh.factory<_i7.EditGoalCubit>(() => _i7.EditGoalCubit());
  gh.factory<_i8.EmailAuthRepository>(() => _i8.EmailAuthRepositoryFirebase());
  gh.factory<_i9.FeedScreenCubit>(
      () => _i9.FeedScreenCubit(get<_i4.GetPostsUseCase>()));
  gh.factory<_i10.GetMyGoalsUseCase>(() => _i10.GetMyGoalsUseCaseTest());
  gh.factory<_i11.GetOwnProfileInfoUseCase>(
      () => _i11.GetOwnProfileInfoUseCaseImpl());
  gh.factory<_i12.GetPostsUseCase>(() => _i12.GetPostsUseCaseMock());
  gh.factory<_i13.GetSubscriptionsUseCase>(
      () => _i13.GetSubscriptionsUseCaseMock());
  gh.factory<_i14.IsLoggedInUseCase>(() => _i14.IsLoggedInUseCaseImpl());
  gh.factory<_i15.MyGoalsScreenCubit>(
      () => _i15.MyGoalsScreenCubit(get<_i4.GetMyGoalsUseCase>()));
  gh.factory<_i16.ProfileScreenCubit>(
      () => _i16.ProfileScreenCubit(get<_i4.GetOwnProfileInfoUseCase>()));
  gh.factory<_i17.SaveGoalUseCase>(() => _i17.SaveGoalUseCaseImpl());
  gh.factory<_i18.StartupScreenBloc>(
      () => _i18.StartupScreenBloc(get<_i14.IsLoggedInUseCase>()));
  gh.factory<_i19.SubscriptionsScreenCubit>(
      () => _i19.SubscriptionsScreenCubit(get<_i4.GetSubscriptionsUseCase>()));
  return get;
}
