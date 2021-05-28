// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../domain/usecases.dart' as _i4;
import '../../domain/usecases/auth.dart' as _i12;
import '../../domain/usecases/get_my_goals.dart' as _i8;
import '../../domain/usecases/get_posts.dart' as _i10;
import '../../domain/usecases/get_subscriptions.dart' as _i11;
import '../../domain/usecases/profile.dart' as _i9;
import '../../domain/usecases/save_goal.dart' as _i15;
import '../../view/screens/activity/cubit.dart' as _i3;
import '../../view/screens/drawer/cubit.dart' as _i5;
import '../../view/screens/edit_goal/cubit.dart' as _i6;
import '../../view/screens/feed/cubit.dart' as _i7;
import '../../view/screens/my_goals/cubit.dart' as _i13;
import '../../view/screens/profile/cubit.dart' as _i14;
import '../../view/screens/startup/bloc.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.ActivityScreenCubit>(
      () => _i3.ActivityScreenCubit(get<_i4.GetMyGoalsUseCase>()));
  gh.factory<_i5.AppDrawerCubit>(() => _i5.AppDrawerCubit(
      get<_i4.IsLoggedInUseCase>(), get<_i4.GetOwnProfileInfoUseCase>()));
  gh.factory<_i6.EditGoalCubit>(() => _i6.EditGoalCubit());
  gh.factory<_i7.FeedScreenCubit>(
      () => _i7.FeedScreenCubit(get<_i4.GetPostsUseCase>()));
  gh.factory<_i8.GetMyGoalsUseCase>(() => _i8.GetMyGoalsUseCaseTest());
  gh.factory<_i9.GetOwnProfileInfoUseCase>(
      () => _i9.GetOwnProfileInfoUseCaseImpl());
  gh.factory<_i10.GetPostsUseCase>(() => _i10.GetPostsUseCaseMock());
  gh.factory<_i11.GetSubscriptionsUseCase>(
      () => _i11.GetSubscriptionsUseCaseMock());
  gh.factory<_i12.IsLoggedInUseCase>(() => _i12.IsLoggedInUseCaseImpl());
  gh.factory<_i13.MyGoalsScreenCubit>(
      () => _i13.MyGoalsScreenCubit(get<_i4.GetMyGoalsUseCase>()));
  gh.factory<_i14.ProfileScreenCubit>(
      () => _i14.ProfileScreenCubit(get<_i4.GetOwnProfileInfoUseCase>()));
  gh.factory<_i15.SaveGoalUseCase>(() => _i15.SaveGoalUseCaseImpl());
  gh.factory<_i16.StartupScreenBloc>(
      () => _i16.StartupScreenBloc(get<_i12.IsLoggedInUseCase>()));
  return get;
}
