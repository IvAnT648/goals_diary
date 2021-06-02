// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/repository/activity.dart' as _i29;
import '../../data/repository/auth.dart' as _i6;
import '../../data/repository/comments.dart' as _i20;
import '../../data/repository/email_auth.dart' as _i7;
import '../../data/repository/goals.dart' as _i9;
import '../../data/repository/posts.dart' as _i25;
import '../../data/repository/profile.dart' as _i12;
import '../../data/repository/subscriptions.dart' as _i18;
import '../../domain/usecases.dart' as _i4;
import '../../domain/usecases/activity.dart' as _i30;
import '../../domain/usecases/auth.dart' as _i10;
import '../../domain/usecases/comments.dart' as _i21;
import '../../domain/usecases/delete_goal.dart' as _i22;
import '../../domain/usecases/get_my_goals.dart' as _i24;
import '../../domain/usecases/posts.dart' as _i26;
import '../../domain/usecases/profile.dart' as _i13;
import '../../domain/usecases/save_goal.dart' as _i14;
import '../../domain/usecases/subscribing.dart' as _i28;
import '../../view/screens/activity/cubit.dart' as _i3;
import '../../view/screens/drawer/cubit.dart' as _i5;
import '../../view/screens/edit_goal/cubit.dart' as _i23;
import '../../view/screens/feed/cubit.dart' as _i8;
import '../../view/screens/my_goals/cubit.dart' as _i11;
import '../../view/screens/search_user/bloc.dart' as _i15;
import '../../view/screens/sign_in/cubit.dart' as _i27;
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
  gh.factory<_i15.SearchUserBloc>(
      () => _i15.SearchUserBloc(get<_i13.ProfileUseCase>()));
  gh.factory<_i10.SignInUseCase>(
      () => _i10.SignInUseCaseImpl(get<_i7.EmailAuthRepository>()));
  gh.factory<_i16.SignUpCubit>(() =>
      _i16.SignUpCubit(get<_i4.SignUpUseCase>(), get<_i4.ProfileUseCase>()));
  gh.factory<_i10.SignUpUseCase>(
      () => _i10.SignUpUseCaseImpl(get<_i7.EmailAuthRepository>()));
  gh.factory<_i17.StartupScreenBloc>(
      () => _i17.StartupScreenBloc(get<_i10.IsLoggedInUseCase>()));
  gh.factory<_i18.SubscriptionsRepository>(() =>
      _i18.SubscriptionsRepositoryImpl(
          get<_i6.AuthRepository>(), get<_i12.ProfileRepository>()));
  gh.factory<_i19.SubscriptionsScreenCubit>(
      () => _i19.SubscriptionsScreenCubit(get<_i4.SubscribingUseCase>()));
  gh.factory<_i20.CommentsRepository>(() => _i20.CommentsRepositoryImpl(
      get<_i12.ProfileRepository>(), get<_i6.AuthRepository>()));
  gh.factory<_i21.CommentsUseCase>(
      () => _i21.CommentsUseCaseImpl(get<_i20.CommentsRepository>()));
  gh.factory<_i22.DeleteGoalUseCase>(
      () => _i22.DeleteGoalUseCaseImpl(get<_i9.GoalsRepository>()));
  gh.factory<_i23.EditGoalCubit>(() => _i23.EditGoalCubit(
      get<_i14.SaveGoalUseCase>(), get<_i22.DeleteGoalUseCase>()));
  gh.factory<_i24.GetMyGoalsUseCase>(
      () => _i24.GetMyGoalsUseCaseImpl(get<_i9.GoalsRepository>()));
  gh.factory<_i25.PostsRepository>(() => _i25.PostsRepositoryFirestore(
      get<_i18.SubscriptionsRepository>(),
      get<_i6.AuthRepository>(),
      get<_i12.ProfileRepository>(),
      get<_i9.GoalsRepository>()));
  gh.factory<_i26.PostsUseCase>(
      () => _i26.PostsUseCaseImpl(get<_i25.PostsRepository>()));
  gh.factory<_i27.SignInCubit>(
      () => _i27.SignInCubit(get<_i10.SignInUseCase>()));
  gh.factory<_i28.SubscribingUseCase>(
      () => _i28.SubscribingUseCaseImpl(get<_i18.SubscriptionsRepository>()));
  gh.factory<_i29.ActivityRepository>(() => _i29.ActivityRepositoryImpl(
      get<_i9.GoalsRepository>(),
      get<_i6.AuthRepository>(),
      get<_i25.PostsRepository>()));
  gh.factory<_i30.ActivityUseCase>(
      () => _i30.ActivityUseCaseImpl(get<_i29.ActivityRepository>()));
  return get;
}
