import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seafarer/seafarer.dart';

import '../domain/models.dart';
import '../domain/usecases.dart';
import 'screens/blocs.dart';
import 'screens.dart';

abstract class Navigation {
  /// Initial route
  static const String initialRoute = '/';

  /// Home screen id
  static const String home = MyGoalsScreen.id;

  /// Navigation instance
  static final Seafarer seafarer = Seafarer();

  /// List of routes
  static final List<SeafarerRoute> _routes = [
    SeafarerRoute(
      name: initialRoute,
      builder: (context, args, params) {
        return BlocProvider(
          create: (_) => StartupScreenBloc(),
          child: StartupScreen(),
        );
      },
    ),
    SeafarerRoute(
      name: SignInScreen.id,
      builder: (_, __, ___) => SignInScreen(),
    ),
    SeafarerRoute(
      name: SignUpScreen.id,
      builder: (_, __, ___) => SignUpScreen(),
    ),
    SeafarerRoute(
      name: MyGoalsScreen.id,
      builder: (_, __, ___) => BlocProvider<MyGoalsScreenBloc>(
        create: (_) => MyGoalsScreenBloc(),
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
        return BlocProvider<EditGoalBloc>(
          create: (_) => EditGoalBloc(),
          child: EditGoalScreen(goal: goal),
        );
      },
    ),
    SeafarerRoute(
      name: ProfileScreen.id,
      builder: (_, __, ___) => BlocProvider<ProfileScreenCubit>(
        create: (_) => ProfileScreenCubit(
          GetOwnProfileInfoUseCaseImpl(),
        ),
        child: ProfileScreen(),
      ),
    ),
    SeafarerRoute(
      name: ActivityScreen.id,
      builder: (_, __, ___) => BlocProvider<ActivityScreenCubit>(
        create: (_) => ActivityScreenCubit(
          GetMyGoalsUseCaseTest(),
        ),
        child: ActivityScreen(),
      ),
    ),
    SeafarerRoute(
      name: FeedScreen.id,
      builder: (_, __, ___) => BlocProvider<FeedScreenCubit>(
        create: (_) => FeedScreenCubit(GetPostsUseCaseMock()),
        child: FeedScreen(),
      ),
    ),
    SeafarerRoute(
      name: SubscriptionsScreen.id,
      builder: (_, __, ___) => BlocProvider<SubscriptionsScreenCubit>(
        create: (_) => SubscriptionsScreenCubit(GetSubscriptionsUseCaseMock()),
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

  static void pushAndRemoveUntilHome<T extends Object?>(
      String newRouteName, [Object? arguments]
  ) {
    seafarer.navigatorKey!.currentState!.pushNamedAndRemoveUntil(
      newRouteName,
      ModalRoute.withName(home),
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
