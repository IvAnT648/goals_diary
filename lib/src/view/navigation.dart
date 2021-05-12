import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'screens/screens.dart';
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

    MyGoalsScreen.id: (_) => MyGoalsScreen(),
  };
}
