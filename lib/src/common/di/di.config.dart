// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/repository/activity.dart' as _i26;
import '../../data/repository/auth.dart' as _i6;
import '../../data/repository/comments.dart' as _i21;
import '../../data/repository/email_auth.dart' as _i23;
import '../../data/repository/goals.dart' as _i8;
import '../../data/repository/posts.dart' as _i24;
import '../../data/repository/profile.dart' as _i17;
import '../../data/repository/subscriptions.dart' as _i14;
import '../../domain/usecases.dart' as _i4;
import '../../domain/usecases/activity.dart' as _i27;
import '../../domain/usecases/auth.dart' as _i10;
import '../../domain/usecases/comments.dart' as _i22;
import '../../domain/usecases/goals.dart' as _i9;
import '../../domain/usecases/posts.dart' as _i25;
import '../../domain/usecases/profile.dart' as _i18;
import '../../domain/usecases/subscribing.dart' as _i20;
import '../../view/screens/activity/cubit.dart' as _i3;
import '../../view/screens/drawer/cubit.dart' as _i5;
import '../../view/screens/feed/cubit.dart' as _i7;
import '../../view/screens/goal/cubit.dart' as _i16;
import '../../view/screens/my_goals/cubit.dart' as _i11;
import '../../view/screens/search_user/bloc.dart' as _i19;
import '../../view/screens/sign_in/cubit.dart' as _i28;
import '../../view/screens/sign_up/cubit.dart' as _i12;
import '../../view/screens/startup/bloc.dart' as _i13;
import '../../view/screens/subscriptions/cubit.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i7.FeedScreenCubit>(
      () => _i7.FeedScreenCubit(get<_i4.PostsUseCase>()));
  gh.factory<_i8.GoalsRepository>(
      () => _i8.GoalsRepositoryImpl(get<_i6.AuthRepository>()));
  gh.factory<_i9.GoalsUseCases>(
      () => _i9.GoalsUseCasesImpl(get<_i8.GoalsRepository>()));
  gh.factory<_i10.IsLoggedInUseCase>(
      () => _i10.IsLoggedInUseCaseImpl(get<_i6.AuthRepository>()));
  gh.factory<_i11.MyGoalsScreenCubit>(
      () => _i11.MyGoalsScreenCubit(get<_i9.GoalsUseCases>()));
  gh.factory<_i12.SignUpCubit>(
      () => _i12.SignUpCubit(get<_i4.SignUpUseCase>()));
  gh.factory<_i13.StartupScreenBloc>(
      () => _i13.StartupScreenBloc(get<_i10.IsLoggedInUseCase>()));
  gh.factory<_i14.SubscriptionsRepository>(
      () => _i14.SubscriptionsRepositoryImpl(get<_i6.AuthRepository>()));
  gh.factory<_i15.SubscriptionsScreenCubit>(
      () => _i15.SubscriptionsScreenCubit(get<_i4.SubscribingUseCase>()));
  gh.factory<_i16.GoalScreenCubit>(
      () => _i16.GoalScreenCubit(get<_i9.GoalsUseCases>()));
  gh.factory<_i17.ProfileRepository>(() => _i17.ProfileRepositoryImpl(
      get<_i6.AuthRepository>(),
      get<_i8.GoalsRepository>(),
      get<_i14.SubscriptionsRepository>()));
  gh.factory<_i18.ProfileUseCase>(() => _i18.ProfileUseCaseImpl(
      get<_i17.ProfileRepository>(), get<_i6.AuthRepository>()));
  gh.factory<_i19.SearchUserBloc>(
      () => _i19.SearchUserBloc(get<_i18.ProfileUseCase>()));
  gh.factory<_i20.SubscribingUseCase>(() => _i20.SubscribingUseCaseImpl(
      get<_i14.SubscriptionsRepository>(), get<_i17.ProfileRepository>()));
  gh.factory<_i21.CommentsRepository>(() => _i21.CommentsRepositoryImpl(
      get<_i17.ProfileRepository>(), get<_i6.AuthRepository>()));
  gh.factory<_i22.CommentsUseCase>(
      () => _i22.CommentsUseCaseImpl(get<_i21.CommentsRepository>()));
  gh.factory<_i23.EmailAuthRepository>(
      () => _i23.EmailAuthRepositoryFirebase(get<_i17.ProfileRepository>()));
  gh.factory<_i10.LogoutUseCase>(
      () => _i10.LogoutUseCaseImpl(get<_i23.EmailAuthRepository>()));
  gh.factory<_i24.PostsRepository>(() => _i24.PostsRepositoryFirestore(
      get<_i14.SubscriptionsRepository>(),
      get<_i6.AuthRepository>(),
      get<_i17.ProfileRepository>(),
      get<_i8.GoalsRepository>(),
      get<_i21.CommentsRepository>()));
  gh.factory<_i25.PostsUseCase>(
      () => _i25.PostsUseCaseImpl(get<_i24.PostsRepository>()));
  gh.factory<_i10.SignInUseCase>(
      () => _i10.SignInUseCaseImpl(get<_i23.EmailAuthRepository>()));
  gh.factory<_i10.SignUpUseCase>(() => _i10.SignUpUseCaseImpl(
      get<_i23.EmailAuthRepository>(), get<_i17.ProfileRepository>()));
  gh.factory<_i26.ActivityRepository>(() => _i26.ActivityRepositoryImpl(
      get<_i8.GoalsRepository>(),
      get<_i6.AuthRepository>(),
      get<_i24.PostsRepository>()));
  gh.factory<_i27.ActivityUseCase>(
      () => _i27.ActivityUseCaseImpl(get<_i26.ActivityRepository>()));
  gh.factory<_i28.SignInCubit>(
      () => _i28.SignInCubit(get<_i10.SignInUseCase>()));
  return get;
}
