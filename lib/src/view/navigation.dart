
import 'package:flutter/material.dart';

class Navigation {
  static const String initialRoute = '/';

  static final Map<String, WidgetBuilder> routes = {
    '/': (_) => Container(color: Colors.amber),
  };
}
