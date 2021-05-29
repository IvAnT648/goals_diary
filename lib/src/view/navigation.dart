import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seafarer/seafarer.dart';

import '../common/di/di.dart';
import '../domain/models.dart';
import 'screens/blocs.dart';
import 'screens.dart';

abstract class Navigation {
  /// Initial route
  static const String initialRoute = '/';

  /// Home screen id
  static const String home = FeedScreen.id;

  /// Navigation instance
  static final Seafarer seafarer = Seafarer();

  /// List of routes
  static final List<SeafarerRoute> _routes = [
    SeafarerRoute(
      name: StartupScreen.id,
      builder: (context, args, params) {
        return BlocProvider<StartupScreenBloc>(
          create: (_) => getIt<StartupScreenBloc>(),
          child: StartupScreen(),
        );
      },
    ),
    SeafarerRoute(
      name: SignInScreen.id,
      builder: (_, __, ___) => BlocProvider<SignInCubit>(
        create: (_) => getIt<SignInCubit>(),
        child: SignInScreen(),
      ),
    ),
    SeafarerRoute(
      name: SignUpScreen.id,
      builder: (_, __, ___) => BlocProvider<SignUpCubit>(
        create: (_) => getIt<SignUpCubit>(),
        child: SignUpScreen(),
      ),
    ),
    SeafarerRoute(
      name: MyGoalsScreen.id,
      builder: (_, __, ___) => BlocProvider<MyGoalsScreenCubit>(
        create: (_) => getIt<MyGoalsScreenCubit>(),
        child: MyGoalsScreen(),
      ),
    ),
    SeafarerRoute(
      name: EditGoalScreen.id,
      params: [
        SeafarerParam<GoalDto>(
          name: EditGoalScreen.goalArg,
          defaultValue: null,
        ),
      ],
      builder: (_, __, params) {
        final goal = params.param<GoalDto>(EditGoalScreen.goalArg);
        return BlocProvider<EditGoalCubit>(
          create: (_) => getIt<EditGoalCubit>(),
          child: EditGoalScreen(goal: goal),
        );
      },
    ),
    SeafarerRoute(
      name: ProfileScreen.id,
      builder: (_, __, ___) => BlocProvider<ProfileScreenCubit>(
        create: (_) => getIt<ProfileScreenCubit>(),
        child: ProfileScreen(),
      ),
    ),
    SeafarerRoute(
      name: ActivityScreen.id,
      builder: (_, __, ___) => BlocProvider<ActivityScreenCubit>(
        create: (_) => getIt<ActivityScreenCubit>(),
        child: ActivityScreen(),
      ),
    ),
    SeafarerRoute(
      name: FeedScreen.id,
      builder: (_, __, ___) => BlocProvider<FeedScreenCubit>(
        create: (_) => getIt<FeedScreenCubit>(),
        child: FeedScreen(),
      ),
    ),
    SeafarerRoute(
      name: SubscriptionsScreen.id,
      builder: (_, __, ___) => BlocProvider<SubscriptionsScreenCubit>(
        create: (_) => getIt<SubscriptionsScreenCubit>(),
        child: SubscriptionsScreen(),
      ),
    ),
  ];

  /// WARNING: Execute before app launch
  static void createRoutes() {
    seafarer.addRoutes(_routes);
  }

  static void pop({dynamic result}) {
    seafarer.navigatorKey!.currentState!.pop(result);
  }

  static Future<bool> popSafe([dynamic result]) {
    return seafarer.navigatorKey!.currentState!.maybePop(result);
  }

  /// Delegation for [seafarer.popUntil].
  static void popUntil(void Function(Route<dynamic>) predicate) {
    seafarer.navigatorKey!.currentState!
        .popUntil(predicate as bool Function(Route<dynamic>));
  }

  /// Delegation for [seafarer.popUntil].
  static void popUntilHome() {
    seafarer.navigatorKey!.currentState!
        .popUntil(ModalRoute.withName(home));
  }

  static void pushAndRemoveUntil<T extends Object?>(
      String newRouteName, RoutePredicate predicate, [Object? arguments]
  ) {
    seafarer.navigatorKey!.currentState!.pushNamedAndRemoveUntil(
      newRouteName,
      predicate,
      arguments: arguments,
    );
  }

  static void clearAndPush<T extends Object?>(
      String newRouteName, [Object? arguments]
  ) {
    seafarer.navigatorKey!.currentState!.pushNamedAndRemoveUntil(
      newRouteName,
      (_) => false,
      arguments: arguments,
    );
  }

  /// Delegates to [seafarer.navigate]
  static Future<T> to<T>(
    String name, {
    BaseArguments? args,
    NavigationType navigationType = NavigationType.push,
    dynamic result,
    bool Function(Route<dynamic> route)? removeUntilPredicate,
    List<SeafarerTransition>? transitions,
    Duration? transitionDuration,
    Curve? transitionCurve,
    Map<String, dynamic>? params,
    CustomSeafarerTransition? customTransition,
  }) {
    return seafarer.navigate(
      name,
      args: args,
      navigationType: navigationType,
      result: result,
      removeUntilPredicate: removeUntilPredicate,
      transitions: transitions,
      transitionDuration: transitionDuration,
      transitionCurve: transitionCurve,
      params: params,
      customTransition: customTransition,
    );
  }

  /// Delegates to [seafarer.navigate]
  static Future<T> replaceTo<T>(
    String name, {
    BaseArguments? args,
    dynamic result,
    List<SeafarerTransition>? transitions,
    Duration? transitionDuration,
    Curve? transitionCurve,
    Map<String, dynamic>? params,
    CustomSeafarerTransition? customTransition,
  }) {
    return seafarer.navigate(
      name,
      args: args,
      navigationType: NavigationType.pushReplace,
      result: result,
      transitions: transitions,
      transitionDuration: transitionDuration,
      transitionCurve: transitionCurve,
      params: params,
      customTransition: customTransition,
    );
  }
}
