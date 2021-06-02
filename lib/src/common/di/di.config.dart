// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/repository/activity.dart' as _i28;
import '../../data/repository/auth.dart' as _i6;
import '../../data/repository/comments.dart' as _i19;
import '../../data/repository/email_auth.dart' as _i7;
import '../../data/repository/goals.dart' as _i9;
import '../../data/repository/posts.dart' as _i24;
import '../../data/repository/profile.dart' as _i12;
import '../../data/repository/subscriptions.dart' as _i17;
import '../../domain/usecases.dart' as _i4;
import '../../domain/usecases/activity.dart' as _i29;
import '../../domain/usecases/auth.dart' as _i10;
import '../../domain/usecases/comments.dart' as _i20;
import '../../domain/usecases/delete_goal.dart' as _i21;
import '../../domain/usecases/get_my_goals.dart' as _i23;
import '../../domain/usecases/posts.dart' as _i25;
import '../../domain/usecases/profile.dart' as _i13;
import '../../domain/usecases/save_goal.dart' as _i14;
import '../../domain/usecases/subscribing.dart' as _i27;
import '../../view/screens/activity/cubit.dart' as _i3;
import '../../view/screens/drawer/cubit.dart' as _i5;
import '../../view/screens/edit_goal/cubit.dart' as _i22;
import '../../view/screens/feed/cubit.dart' as _i8;
import '../../view/screens/my_goals/cubit.dart' as _i11;
import '../../view/screens/sign_in/cubit.dart' as _i26;
import '../../view/screens/sign_up/cubit.dart' as _i15;
import '../../view/screens/startup/bloc.dart' as _i16;
import '../../view/screens/subscriptions/cubit.dart'
    as _i18; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i8.FeedScreenCubit>(() =>
      _i8.FeedScreenCubit(get<_i4.PostsUseCase>(), get<_i4.CommentsUseCase>()));
  gh.factory<_i9.GoalsRepository>(
      () => _i9.GoalsRepositoryImpl(get<_i6.AuthRepository>()));
  gh.factory<_i10.IsLoggedInUseCase>(
      () => _i10.IsLoggedInUseCaseImpl(get<_i6.AuthRepository>()));
  gh.factory<_i10.LogoutUseCase>(
      () => _i10.LogoutUseCaseImpl(get<_i7.EmailAuthRepository>()));
  gh.factory<_i11.MyGoalsScreenCubit>(
      () => _i11.MyGoalsScreenCubit(get<_i4.GetMyGoalsUseCase>()));
  gh.factory<_i12.ProfileRepository>(
      () => _i12.ProfileRepositoryImpl(get<_i6.AuthRepository>()));
  gh.factory<_i13.ProfileUseCase>(() => _i13.ProfileUseCaseImpl(
      get<_i12.ProfileRepository>(), get<_i6.AuthRepository>()));
  gh.factory<_i14.SaveGoalUseCase>(
      () => _i14.SaveGoalUseCaseImpl(get<_i9.GoalsRepository>()));
  gh.factory<_i10.SignInUseCase>(
      () => _i10.SignInUseCaseImpl(get<_i7.EmailAuthRepository>()));
  gh.factory<_i15.SignUpCubit>(() =>
      _i15.SignUpCubit(get<_i4.SignUpUseCase>(), get<_i4.ProfileUseCase>()));
  gh.factory<_i10.SignUpUseCase>(
      () => _i10.SignUpUseCaseImpl(get<_i7.EmailAuthRepository>()));
  gh.factory<_i16.StartupScreenBloc>(
      () => _i16.StartupScreenBloc(get<_i10.IsLoggedInUseCase>()));
  gh.factory<_i17.SubscriptionsRepository>(() =>
      _i17.SubscriptionsRepositoryImpl(
          get<_i6.AuthRepository>(), get<_i12.ProfileRepository>()));
  gh.factory<_i18.SubscriptionsScreenCubit>(
      () => _i18.SubscriptionsScreenCubit(get<_i4.SubscribingUseCase>()));
  gh.factory<_i19.CommentsRepository>(() => _i19.CommentsRepositoryImpl(
      get<_i12.ProfileRepository>(), get<_i6.AuthRepository>()));
  gh.factory<_i20.CommentsUseCase>(
      () => _i20.CommentsUseCaseImpl(get<_i19.CommentsRepository>()));
  gh.factory<_i21.DeleteGoalUseCase>(
      () => _i21.DeleteGoalUseCaseImpl(get<_i9.GoalsRepository>()));
  gh.factory<_i22.EditGoalCubit>(() => _i22.EditGoalCubit(
      get<_i14.SaveGoalUseCase>(), get<_i21.DeleteGoalUseCase>()));
  gh.factory<_i23.GetMyGoalsUseCase>(
      () => _i23.GetMyGoalsUseCaseImpl(get<_i9.GoalsRepository>()));
  gh.factory<_i24.PostsRepository>(() => _i24.PostsRepositoryFirestore(
      get<_i17.SubscriptionsRepository>(),
      get<_i6.AuthRepository>(),
      get<_i12.ProfileRepository>(),
      get<_i9.GoalsRepository>()));
  gh.factory<_i25.PostsUseCase>(
      () => _i25.PostsUseCaseImpl(get<_i24.PostsRepository>()));
  gh.factory<_i26.SignInCubit>(
      () => _i26.SignInCubit(get<_i10.SignInUseCase>()));
  gh.factory<_i27.SubscribingUseCase>(
      () => _i27.SubscribingUseCaseImpl(get<_i17.SubscriptionsRepository>()));
  gh.factory<_i28.ActivityRepository>(() => _i28.ActivityRepositoryImpl(
      get<_i9.GoalsRepository>(),
      get<_i6.AuthRepository>(),
      get<_i24.PostsRepository>()));
  gh.factory<_i29.ActivityUseCase>(
      () => _i29.ActivityUseCaseImpl(get<_i28.ActivityRepository>()));
  return get;
}
