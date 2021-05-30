// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/repository/activity.dart' as _i20;
import '../../data/repository/auth.dart' as _i6;
import '../../data/repository/email_auth.dart' as _i7;
import '../../data/repository/goals.dart' as _i10;
import '../../data/repository/profile.dart' as _i13;
import '../../data/repository/subscriptions.dart' as _i18;
import '../../domain/usecases.dart' as _i4;
import '../../domain/usecases/activity.dart' as _i21;
import '../../domain/usecases/auth.dart' as _i11;
import '../../domain/usecases/delete_goal.dart' as _i22;
import '../../domain/usecases/get_my_goals.dart' as _i24;
import '../../domain/usecases/get_posts.dart' as _i9;
import '../../domain/usecases/profile.dart' as _i14;
import '../../domain/usecases/save_goal.dart' as _i15;
import '../../domain/usecases/subscribing.dart' as _i26;
import '../../view/screens/activity/cubit.dart' as _i3;
import '../../view/screens/drawer/cubit.dart' as _i5;
import '../../view/screens/edit_goal/cubit.dart' as _i23;
import '../../view/screens/feed/cubit.dart' as _i8;
import '../../view/screens/my_goals/cubit.dart' as _i12;
import '../../view/screens/sign_in/cubit.dart' as _i25;
import '../../view/screens/sign_up/cubit.dart' as _i16;
import '../../view/screens/startup/bloc.dart' as _i17;
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
  gh.factory<_i10.GoalsRepository>(
      () => _i10.GoalsRepositoryImpl(get<_i6.AuthRepository>()));
  gh.factory<_i11.IsLoggedInUseCase>(
      () => _i11.IsLoggedInUseCaseImpl(get<_i6.AuthRepository>()));
  gh.factory<_i11.LogoutUseCase>(
      () => _i11.LogoutUseCaseImpl(get<_i7.EmailAuthRepository>()));
  gh.factory<_i12.MyGoalsScreenCubit>(
      () => _i12.MyGoalsScreenCubit(get<_i4.GetMyGoalsUseCase>()));
  gh.factory<_i13.ProfileRepository>(
      () => _i13.ProfileRepositoryImpl(get<_i6.AuthRepository>()));
  gh.factory<_i14.ProfileUseCase>(
      () => _i14.ProfileUseCaseImpl(get<_i13.ProfileRepository>()));
  gh.factory<_i15.SaveGoalUseCase>(
      () => _i15.SaveGoalUseCaseImpl(get<_i10.GoalsRepository>()));
  gh.factory<_i11.SignInUseCase>(
      () => _i11.SignInUseCaseImpl(get<_i7.EmailAuthRepository>()));
  gh.factory<_i16.SignUpCubit>(() =>
      _i16.SignUpCubit(get<_i4.SignUpUseCase>(), get<_i4.ProfileUseCase>()));
  gh.factory<_i11.SignUpUseCase>(
      () => _i11.SignUpUseCaseImpl(get<_i7.EmailAuthRepository>()));
  gh.factory<_i17.StartupScreenBloc>(
      () => _i17.StartupScreenBloc(get<_i11.IsLoggedInUseCase>()));
  gh.factory<_i18.SubscriptionsRepository>(() =>
      _i18.SubscriptionsRepositoryImpl(
          get<_i6.AuthRepository>(), get<_i13.ProfileRepository>()));
  gh.factory<_i19.SubscriptionsScreenCubit>(
      () => _i19.SubscriptionsScreenCubit(get<_i4.SubscribingUseCase>()));
  gh.factory<_i20.ActivityRepository>(
      () => _i20.ActivityRepositoryImpl(get<_i10.GoalsRepository>()));
  gh.factory<_i21.ActivityUseCase>(
      () => _i21.ActivityUseCaseImpl(get<_i20.ActivityRepository>()));
  gh.factory<_i22.DeleteGoalUseCase>(
      () => _i22.DeleteGoalUseCaseImpl(get<_i10.GoalsRepository>()));
  gh.factory<_i23.EditGoalCubit>(() => _i23.EditGoalCubit(
      get<_i15.SaveGoalUseCase>(), get<_i22.DeleteGoalUseCase>()));
  gh.factory<_i24.GetMyGoalsUseCase>(
      () => _i24.GetMyGoalsUseCaseImpl(get<_i10.GoalsRepository>()));
  gh.factory<_i25.SignInCubit>(
      () => _i25.SignInCubit(get<_i11.SignInUseCase>()));
  gh.factory<_i26.SubscribingUseCase>(
      () => _i26.SubscribingUseCaseImpl(get<_i18.SubscriptionsRepository>()));
  return get;
}
