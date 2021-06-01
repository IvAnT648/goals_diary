// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/repository/activity.dart' as _i26;
import '../../data/repository/auth.dart' as _i6;
import '../../data/repository/comments.dart' as _i18;
import '../../data/repository/email_auth.dart' as _i7;
import '../../data/repository/goals.dart' as _i8;
import '../../data/repository/posts.dart' as _i22;
import '../../data/repository/profile.dart' as _i11;
import '../../data/repository/subscriptions.dart' as _i16;
import '../../domain/usecases.dart' as _i4;
import '../../domain/usecases/activity.dart' as _i27;
import '../../domain/usecases/auth.dart' as _i9;
import '../../domain/usecases/delete_goal.dart' as _i19;
import '../../domain/usecases/get_my_goals.dart' as _i21;
import '../../domain/usecases/posts.dart' as _i23;
import '../../domain/usecases/profile.dart' as _i12;
import '../../domain/usecases/save_goal.dart' as _i13;
import '../../domain/usecases/subscribing.dart' as _i25;
import '../../view/screens/activity/cubit.dart' as _i3;
import '../../view/screens/drawer/cubit.dart' as _i5;
import '../../view/screens/edit_goal/cubit.dart' as _i20;
import '../../view/screens/feed/cubit.dart' as _i28;
import '../../view/screens/my_goals/cubit.dart' as _i10;
import '../../view/screens/sign_in/cubit.dart' as _i24;
import '../../view/screens/sign_up/cubit.dart' as _i14;
import '../../view/screens/startup/bloc.dart' as _i15;
import '../../view/screens/subscriptions/cubit.dart'
    as _i17; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i8.GoalsRepository>(
      () => _i8.GoalsRepositoryImpl(get<_i6.AuthRepository>()));
  gh.factory<_i9.IsLoggedInUseCase>(
      () => _i9.IsLoggedInUseCaseImpl(get<_i6.AuthRepository>()));
  gh.factory<_i9.LogoutUseCase>(
      () => _i9.LogoutUseCaseImpl(get<_i7.EmailAuthRepository>()));
  gh.factory<_i10.MyGoalsScreenCubit>(
      () => _i10.MyGoalsScreenCubit(get<_i4.GetMyGoalsUseCase>()));
  gh.factory<_i11.ProfileRepository>(
      () => _i11.ProfileRepositoryImpl(get<_i6.AuthRepository>()));
  gh.factory<_i12.ProfileUseCase>(() => _i12.ProfileUseCaseImpl(
      get<_i11.ProfileRepository>(), get<_i6.AuthRepository>()));
  gh.factory<_i13.SaveGoalUseCase>(
      () => _i13.SaveGoalUseCaseImpl(get<_i8.GoalsRepository>()));
  gh.factory<_i9.SignInUseCase>(
      () => _i9.SignInUseCaseImpl(get<_i7.EmailAuthRepository>()));
  gh.factory<_i14.SignUpCubit>(() =>
      _i14.SignUpCubit(get<_i4.SignUpUseCase>(), get<_i4.ProfileUseCase>()));
  gh.factory<_i9.SignUpUseCase>(
      () => _i9.SignUpUseCaseImpl(get<_i7.EmailAuthRepository>()));
  gh.factory<_i15.StartupScreenBloc>(
      () => _i15.StartupScreenBloc(get<_i9.IsLoggedInUseCase>()));
  gh.factory<_i16.SubscriptionsRepository>(() =>
      _i16.SubscriptionsRepositoryImpl(
          get<_i6.AuthRepository>(), get<_i11.ProfileRepository>()));
  gh.factory<_i17.SubscriptionsScreenCubit>(
      () => _i17.SubscriptionsScreenCubit(get<_i4.SubscribingUseCase>()));
  gh.factory<_i18.CommentsRepository>(
      () => _i18.CommentsRepositoryImpl(get<_i11.ProfileRepository>()));
  gh.factory<_i19.DeleteGoalUseCase>(
      () => _i19.DeleteGoalUseCaseImpl(get<_i8.GoalsRepository>()));
  gh.factory<_i20.EditGoalCubit>(() => _i20.EditGoalCubit(
      get<_i13.SaveGoalUseCase>(), get<_i19.DeleteGoalUseCase>()));
  gh.factory<_i21.GetMyGoalsUseCase>(
      () => _i21.GetMyGoalsUseCaseImpl(get<_i8.GoalsRepository>()));
  gh.factory<_i22.PostsRepository>(() => _i22.PostsRepositoryFirestore(
      get<_i16.SubscriptionsRepository>(),
      get<_i6.AuthRepository>(),
      get<_i11.ProfileRepository>(),
      get<_i8.GoalsRepository>()));
  gh.factory<_i23.PostsUseCase>(
      () => _i23.PostsUseCaseImpl(get<_i22.PostsRepository>()));
  gh.factory<_i24.SignInCubit>(
      () => _i24.SignInCubit(get<_i9.SignInUseCase>()));
  gh.factory<_i25.SubscribingUseCase>(
      () => _i25.SubscribingUseCaseImpl(get<_i16.SubscriptionsRepository>()));
  gh.factory<_i26.ActivityRepository>(() => _i26.ActivityRepositoryImpl(
      get<_i8.GoalsRepository>(),
      get<_i6.AuthRepository>(),
      get<_i22.PostsRepository>()));
  gh.factory<_i27.ActivityUseCase>(
      () => _i27.ActivityUseCaseImpl(get<_i26.ActivityRepository>()));
  gh.factory<_i28.FeedScreenCubit>(
      () => _i28.FeedScreenCubit(get<_i23.PostsUseCase>()));
  return get;
}
