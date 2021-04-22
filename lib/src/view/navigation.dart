import 'package:flutter/material.dart';

import 'screens/screens.dart';

class ScreenNavigationProvider {
  static String initialRoute = LoginScreen.id;

  static Map<String, WidgetBuilder> getRoutes() {
    final Map<String, WidgetBuilder> routes = {};
    _routes.forEach((el) => routes[el.id] = el.builder);
    return routes;
  }

  static List<RouteInfo> _routes = [
    RouteInfo(
      id: LoginScreen.id,
      builder: (_) => LoginScreen(),
    ),
  ];
}

class RouteInfo {
  final String id;
  final WidgetBuilder builder;

  RouteInfo({
    required this.id,
    required this.builder,
  });

  @override
  String toString() {
    return 'RouteInfo(id: $id, builder: $builder)';
  }
}
