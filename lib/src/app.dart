import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../common/res/styles.dart';
import '../generated/l10n.dart';
import 'view/navigation.dart';

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
          colorScheme: ColorScheme(
            primary: AppColors.primary,
            primaryVariant: AppColors.primary[-10],
            secondary: AppColors.secondary,
            secondaryVariant: AppColors.secondary[-10],
            surface: AppColors.surface,
            background: AppColors.background,
            error: AppColors.negative,
            onPrimary: AppColors.onPrimary,
            onSecondary: AppColors.onSecondary,
            onSurface: AppColors.gray[-10],
            onBackground: AppColors.gray[-10],
            onError: AppColors.onPrimary,
            brightness: Brightness.light,
          ),
      ),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      initialRoute: ScreenNavigationProvider.initialRoute,
      routes: ScreenNavigationProvider.getRoutes(),
    );
  }
}
