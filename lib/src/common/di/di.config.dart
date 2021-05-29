// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/repository/activity.dart' as _i20;
import '../../data/repository/auth.dart' as _i6;
import '../../data/repository/email_auth.dart' as _i7;
import '../../data/repository/goals.dart' as _i11;
import '../../data/repository/profile.dart' as _i14;
import '../../domain/usecases.dart' as _i4;
import '../../domain/usecases/activity.dart' as _i21;
import '../../domain/usecases/auth.dart' as _i12;
import '../../domain/usecases/delete_goal.dart' as _i22;
import '../../domain/usecases/get_my_goals.dart' as _i24;
import '../../domain/usecases/get_posts.dart' as _i9;
import '../../domain/usecases/get_subscriptions.dart' as _i10;
import '../../domain/usecases/profile.dart' as _i15;
import '../../domain/usecases/save_goal.dart' as _i16;
import '../../view/screens/activity/cubit.dart' as _i3;
import '../../view/screens/drawer/cubit.dart' as _i5;
import '../../view/screens/edit_goal/cubit.dart' as _i23;
import '../../view/screens/feed/cubit.dart' as _i8;
import '../../view/screens/my_goals/cubit.dart' as _i13;
import '../../view/screens/sign_in/cubit.dart' as _i25;
import '../../view/screens/sign_up/cubit.dart' as _i17;
import '../../view/screens/startup/bloc.dart' as _i18;
import '../../view/screens/subscriptions/cubit.dart'
    as _i19; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.ActivityScreenCubit>(
      () => _i3.ActivityScreenCubit(get<_i4.ActivityUseCase>()));
  gh.factory<_i5.AppDrawerCubit>(() =>
      _i5.AppDrawerCubit(get<_i4.ProfileUseCase>(), get<_i4.LogoutUseCase>()));
  gh.factory<_i6.AuthRepository>(() => _i6.AuthRepositoryImpl());
  gh.factory<_i7.EmailAuthRepository>(() => _i7.EmailAuthRepositoryFirebase());
  gh.factory<_i8.FeedScreenCubit>(
      () => _i8.FeedScreenCubit(get<_i4.GetPostsUseCase>()));
  gh.factory<_i9.GetPostsUseCase>(() => _i9.GetPostsUseCaseMock());
  gh.factory<_i10.GetSubscriptionsUseCase>(
      () => _i10.GetSubscriptionsUseCaseMock());
  gh.factory<_i11.GoalsRepository>(
      () => _i11.GoalsRepositoryImpl(get<_i6.AuthRepository>()));
  gh.factory<_i12.IsLoggedInUseCase>(
      () => _i12.IsLoggedInUseCaseImpl(get<_i6.AuthRepository>()));
  gh.factory<_i12.LogoutUseCase>(
      () => _i12.LogoutUseCaseImpl(get<_i7.EmailAuthRepository>()));
  gh.factory<_i13.MyGoalsScreenCubit>(
      () => _i13.MyGoalsScreenCubit(get<_i4.GetMyGoalsUseCase>()));
  gh.factory<_i14.ProfileRepository>(
      () => _i14.ProfileRepositoryImpl(get<_i6.AuthRepository>()));
  gh.factory<_i15.ProfileUseCase>(
      () => _i15.ProfileUseCaseImpl(get<_i14.ProfileRepository>()));
  gh.factory<_i16.SaveGoalUseCase>(
      () => _i16.SaveGoalUseCaseImpl(get<_i11.GoalsRepository>()));
  gh.factory<_i12.SignInUseCase>(
      () => _i12.SignInUseCaseImpl(get<_i7.EmailAuthRepository>()));
  gh.factory<_i17.SignUpCubit>(() =>
      _i17.SignUpCubit(get<_i4.SignUpUseCase>(), get<_i4.ProfileUseCase>()));
  gh.factory<_i12.SignUpUseCase>(
      () => _i12.SignUpUseCaseImpl(get<_i7.EmailAuthRepository>()));
  gh.factory<_i18.StartupScreenBloc>(
      () => _i18.StartupScreenBloc(get<_i12.IsLoggedInUseCase>()));
  gh.factory<_i19.SubscriptionsScreenCubit>(
      () => _i19.SubscriptionsScreenCubit(get<_i4.GetSubscriptionsUseCase>()));
  gh.factory<_i20.ActivityRepository>(
      () => _i20.ActivityRepositoryImpl(get<_i11.GoalsRepository>()));
  gh.factory<_i21.ActivityUseCase>(
      () => _i21.ActivityUseCaseImpl(get<_i20.ActivityRepository>()));
  gh.factory<_i22.DeleteGoalUseCase>(
      () => _i22.DeleteGoalUseCaseImpl(get<_i11.GoalsRepository>()));
  gh.factory<_i23.EditGoalCubit>(() => _i23.EditGoalCubit(
      get<_i16.SaveGoalUseCase>(), get<_i22.DeleteGoalUseCase>()));
  gh.factory<_i24.GetMyGoalsUseCase>(
      () => _i24.GetMyGoalsUseCaseImpl(get<_i11.GoalsRepository>()));
  gh.factory<_i25.SignInCubit>(
      () => _i25.SignInCubit(get<_i12.SignInUseCase>()));
  return get;
}
