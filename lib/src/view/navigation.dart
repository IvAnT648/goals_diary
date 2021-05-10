import 'package:flutter/material.dart';

import 'screens/screens.dart';

class ScreenNavigationProvider {
  static String initialRoute = LoginScreen.id;

  static Map<String, WidgetBuilder> routes = {
    LoginScreen.id: (_) => LoginScreen(),
  };
}
