import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'screens.dart';
import 'screens/blocs.dart';

class ScreenNavigationProvider {
  static String initialRoute = StartupScreen.id;

  static Map<String, WidgetBuilder> routes = {
    StartupScreen.id: (_) => BlocProvider<StartupScreenBloc>(
      create: (_) => StartupScreenBloc(),
      child: StartupScreen(),
    ),
    SignInScreen.id: (_) => SignInScreen(),
    SignUpScreen.id: (_) => SignUpScreen(),
    MyGoalsScreen.id: (_) => BlocProvider<MyGoalsScreenBloc>(
      create: (_) => MyGoalsScreenBloc(),
      child: MyGoalsScreen(),
    ),
  };

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    if (settings.name == '/') {
      return null;
    }

    WidgetBuilder? screenBuilder;

    if (settings.name == EditGoalScreen.id) {
      final args = settings.arguments as EditGoalScreenArgs;
      screenBuilder = (_) => EditGoalScreen(goal: args.goal);

    } else {
      screenBuilder = routes[settings.name];
      if (screenBuilder == null) {
        assert(false, 'Need to implement ${settings.name}');
        return null;
      }
    }

    return MaterialPageRoute(
      settings: settings,
      builder: screenBuilder,
    );
  }
}
