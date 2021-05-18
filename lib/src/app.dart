import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../generated/l10n.dart';
import 'common/resources/styles.dart';
import 'view/navigation.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarDividerColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: MaterialApp(
        title: 'Goals Diary',
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: AppColors.primary,
          primaryColorLight: AppColors.primary[10],
          primaryColorDark: AppColors.primary[-10],
          accentColor: AppColors.accent,
          errorColor: AppColors.negative,
          highlightColor: Colors.white.withOpacity(.4),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: AppColors.background,
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
            onSurface: AppColors.onSurface,
            onBackground: AppColors.onBackground,
            onError: AppColors.onPrimary,
            brightness: Brightness.light,
          ),
          pageTransitionsTheme: PageTransitionsTheme(
              builders: {
                TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
                TargetPlatform.android: CupertinoPageTransitionsBuilder(),
              }
          ),
        ),
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        initialRoute: Navigation.initialRoute,
        navigatorKey: Navigation.seafarer.navigatorKey,
        onGenerateRoute: Navigation.seafarer.generator(),
      ),
    );
  }
}
