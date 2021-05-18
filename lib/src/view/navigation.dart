
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seafarer/seafarer.dart';

import '../domain/models.dart';
import 'screens/blocs.dart';
import 'screens.dart';

abstract class Navigation {
  /// Initial route
  static const String initialRoute = StartupScreen.id;

  /// Navigation instance
  static final Seafarer seafarer = Seafarer();

  /// Navigation method shortcut
  static final to = seafarer.navigate;

  /// Executed before app launching
  static void createRoutes() {
    seafarer.addRoutes(_routes);
  }

  /// List of routes
  static final List<SeafarerRoute> _routes = [
    SeafarerRoute(
      name: StartupScreen.id,
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
          name: 'goal',
          defaultValue: null,
        ),
      ],
      builder: (_, __, params) {
        final goal = params.param<GoalDto>('goal');
        return BlocProvider<EditGoalBloc>(
          create: (_) => EditGoalBloc(),
          child: EditGoalScreen(goal: goal),
        );
      },
    ),

  ];
}
