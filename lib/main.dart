
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'src/app.dart';
import 'src/view/navigation.dart';

void main() async {
  await init();
  runApp(Application());
}

Future<void> init() async {
  Navigation.createRoutes();
  timeago.setLocaleMessages('ru', timeago.RuMessages());
}
