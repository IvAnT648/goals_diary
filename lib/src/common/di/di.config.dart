// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/repository/auth.dart' as _i6;
import '../../data/repository/email_auth.dart' as _i7;
import '../../data/repository/goals.dart' as _i12;
import '../../domain/usecases.dart' as _i4;
import '../../domain/usecases/auth.dart' as _i13;
import '../../domain/usecases/delete_goal.dart' as _i19;
import '../../domain/usecases/get_my_goals.dart' as _i21;
import '../../domain/usecases/get_posts.dart' as _i10;
import '../../domain/usecases/get_subscriptions.dart' as _i11;
import '../../domain/usecases/profile.dart' as _i9;
import '../../domain/usecases/save_goal.dart' as _i16;
import '../../view/screens/activity/cubit.dart' as _i3;
import '../../view/screens/drawer/cubit.dart' as _i5;
import '../../view/screens/edit_goal/cubit.dart' as _i20;
import '../../view/screens/feed/cubit.dart' as _i8;
import '../../view/screens/my_goals/cubit.dart' as _i14;
import '../../view/screens/profile/cubit.dart' as _i15;
import '../../view/screens/sign_in/cubit.dart' as _i22;
import '../../view/screens/sign_up/cubit.dart' as _i23;
import '../../view/screens/startup/bloc.dart' as _i17;
import '../../view/screens/subscriptions/cubit.dart'
    as _i18; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.ActivityScreenCubit>(
      () => _i3.ActivityScreenCubit(get<_i4.GetMyGoalsUseCase>()));
  gh.factory<_i5.AppDrawerCubit>(() => _i5.AppDrawerCubit(
      get<_i4.IsLoggedInUseCase>(),
      get<_i4.GetOwnProfileInfoUseCase>(),
      get<_i4.LogoutUseCase>()));
  gh.factory<_i6.AuthRepository>(() => _i6.AuthRepositoryImpl());
  gh.factory<_i7.EmailAuthRepository>(() => _i7.EmailAuthRepositoryFirebase());
  gh.factory<_i8.FeedScreenCubit>(
      () => _i8.FeedScreenCubit(get<_i4.GetPostsUseCase>()));
  gh.factory<_i9.GetOwnProfileInfoUseCase>(
      () => _i9.GetOwnProfileInfoUseCaseImpl());
  gh.factory<_i10.GetPostsUseCase>(() => _i10.GetPostsUseCaseMock());
  gh.factory<_i11.GetSubscriptionsUseCase>(
      () => _i11.GetSubscriptionsUseCaseMock());
  gh.factory<_i12.GoalsRepository>(
      () => _i12.GoalsRepositoryImpl(get<_i6.AuthRepository>()));
  gh.factory<_i13.IsLoggedInUseCase>(
      () => _i13.IsLoggedInUseCaseImpl(get<_i6.AuthRepository>()));
  gh.factory<_i13.LogoutUseCase>(
      () => _i13.LogoutUseCaseImpl(get<_i7.EmailAuthRepository>()));
  gh.factory<_i14.MyGoalsScreenCubit>(
      () => _i14.MyGoalsScreenCubit(get<_i4.GetMyGoalsUseCase>()));
  gh.factory<_i15.ProfileScreenCubit>(
      () => _i15.ProfileScreenCubit(get<_i4.GetOwnProfileInfoUseCase>()));
  gh.factory<_i16.SaveGoalUseCase>(
      () => _i16.SaveGoalUseCaseImpl(get<_i12.GoalsRepository>()));
  gh.factory<_i13.SignInUseCase>(
      () => _i13.SignInUseCaseImpl(get<_i7.EmailAuthRepository>()));
  gh.factory<_i13.SignUpUseCase>(
      () => _i13.SignUpUseCaseImpl(get<_i7.EmailAuthRepository>()));
  gh.factory<_i17.StartupScreenBloc>(
      () => _i17.StartupScreenBloc(get<_i13.IsLoggedInUseCase>()));
  gh.factory<_i18.SubscriptionsScreenCubit>(
      () => _i18.SubscriptionsScreenCubit(get<_i4.GetSubscriptionsUseCase>()));
  gh.factory<_i19.DeleteGoalUseCase>(
      () => _i19.DeleteGoalUseCaseImpl(get<_i12.GoalsRepository>()));
  gh.factory<_i20.EditGoalCubit>(() => _i20.EditGoalCubit(
      get<_i16.SaveGoalUseCase>(), get<_i19.DeleteGoalUseCase>()));
  gh.factory<_i21.GetMyGoalsUseCase>(
      () => _i21.GetMyGoalsUseCaseImpl(get<_i12.GoalsRepository>()));
  gh.factory<_i22.SignInCubit>(
      () => _i22.SignInCubit(get<_i13.SignInUseCase>()));
  gh.factory<_i23.SignUpCubit>(
      () => _i23.SignUpCubit(get<_i13.SignUpUseCase>()));
  return get;
}
