
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../common/res/styles.dart';
import '../generated/l10n.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Goals Diary',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        primaryColorLight: AppColors.primary[10],
        primaryColorDark: AppColors.primary[-10],
        accentColor: AppColors.accent,
      ),
      home: Container(
        color: Colors.blue,
      ),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
