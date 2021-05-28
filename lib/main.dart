
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'src/app.dart';
import 'src/common/di/di.dart';
import 'src/view/navigation.dart';

void main() async {
  await init();
  runApp(Application());
}

Future<void> init() async {
  await configureInjection(Env.dev);
  Navigation.createRoutes();
  timeago.setLocaleMessages('ru', timeago.RuMessages());
}
