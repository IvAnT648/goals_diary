// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Goals Diary`
  String get appName {
    return Intl.message(
      'Goals Diary',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `daily`
  String get commonDailyPeriodicity {
    return Intl.message(
      'daily',
      name: 'commonDailyPeriodicity',
      desc: '',
      args: [],
    );
  }

  /// `mon`
  String get commonMondayShort {
    return Intl.message(
      'mon',
      name: 'commonMondayShort',
      desc: '',
      args: [],
    );
  }

  /// `tue`
  String get commonTuesdayShort {
    return Intl.message(
      'tue',
      name: 'commonTuesdayShort',
      desc: '',
      args: [],
    );
  }

  /// `wed`
  String get commonWednesdayShort {
    return Intl.message(
      'wed',
      name: 'commonWednesdayShort',
      desc: '',
      args: [],
    );
  }

  /// `thu`
  String get commonThursdayShort {
    return Intl.message(
      'thu',
      name: 'commonThursdayShort',
      desc: '',
      args: [],
    );
  }

  /// `fri`
  String get commonFridayShort {
    return Intl.message(
      'fri',
      name: 'commonFridayShort',
      desc: '',
      args: [],
    );
  }

  /// `sat`
  String get commonSaturdayShort {
    return Intl.message(
      'sat',
      name: 'commonSaturdayShort',
      desc: '',
      args: [],
    );
  }

  /// `sun`
  String get commonSundayShort {
    return Intl.message(
      'sun',
      name: 'commonSundayShort',
      desc: '',
      args: [],
    );
  }

  /// `Public`
  String get commonPublicGoal {
    return Intl.message(
      'Public',
      name: 'commonPublicGoal',
      desc: '',
      args: [],
    );
  }

  /// `Private`
  String get commonPrivateGoal {
    return Intl.message(
      'Private',
      name: 'commonPrivateGoal',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get screenLoginTitle {
    return Intl.message(
      'Sign In',
      name: 'screenLoginTitle',
      desc: '',
      args: [],
    );
  }

  /// `Nickname`
  String get screenLoginNicknameLabel {
    return Intl.message(
      'Nickname',
      name: 'screenLoginNicknameLabel',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get screenLoginPasswordLabel {
    return Intl.message(
      'Password',
      name: 'screenLoginPasswordLabel',
      desc: '',
      args: [],
    );
  }

  /// `Enter`
  String get screenLoginSignInButton {
    return Intl.message(
      'Enter',
      name: 'screenLoginSignInButton',
      desc: '',
      args: [],
    );
  }

  /// `Create a new account`
  String get screenLoginSignUpButton {
    return Intl.message(
      'Create a new account',
      name: 'screenLoginSignUpButton',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get screenSignUpTitle {
    return Intl.message(
      'Sign Up',
      name: 'screenSignUpTitle',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get screenSignUpNameLabel {
    return Intl.message(
      'Name',
      name: 'screenSignUpNameLabel',
      desc: '',
      args: [],
    );
  }

  /// `Nickname`
  String get screenSignUpNicknameLabel {
    return Intl.message(
      'Nickname',
      name: 'screenSignUpNicknameLabel',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get screenSignUpPasswordLabel {
    return Intl.message(
      'Password',
      name: 'screenSignUpPasswordLabel',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get screenSignUpPasswordConfirmLabel {
    return Intl.message(
      'Confirm password',
      name: 'screenSignUpPasswordConfirmLabel',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get screenSignUpSubmitButton {
    return Intl.message(
      'Sign up',
      name: 'screenSignUpSubmitButton',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get screenSignUpToSignInButton {
    return Intl.message(
      'Sign in',
      name: 'screenSignUpToSignInButton',
      desc: '',
      args: [],
    );
  }

  /// `My goals`
  String get screenMyGoalsTitle {
    return Intl.message(
      'My goals',
      name: 'screenMyGoalsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Edit the goal`
  String get screenEditGoalTitle {
    return Intl.message(
      'Edit the goal',
      name: 'screenEditGoalTitle',
      desc: '',
      args: [],
    );
  }

  /// `Create a goal`
  String get screenEditGoalNewTitle {
    return Intl.message(
      'Create a goal',
      name: 'screenEditGoalNewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Title`
  String get screenEditGoalTitleLabel {
    return Intl.message(
      'Title',
      name: 'screenEditGoalTitleLabel',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get screenEditGoalDescriptionLabel {
    return Intl.message(
      'Description',
      name: 'screenEditGoalDescriptionLabel',
      desc: '',
      args: [],
    );
  }

  /// `Goal type:`
  String get screenEditGoalTypeLabel {
    return Intl.message(
      'Goal type:',
      name: 'screenEditGoalTypeLabel',
      desc: '',
      args: [],
    );
  }

  /// `Receive push-notifications`
  String get screenEditGoalNotificationsEnabledLabel {
    return Intl.message(
      'Receive push-notifications',
      name: 'screenEditGoalNotificationsEnabledLabel',
      desc: '',
      args: [],
    );
  }

  /// `Notifications time`
  String get screenEditGoalNotificationsTimeLabel {
    return Intl.message(
      'Notifications time',
      name: 'screenEditGoalNotificationsTimeLabel',
      desc: '',
      args: [],
    );
  }

  /// `Week days`
  String get screenEditGoalNotificationsDaysLabel {
    return Intl.message(
      'Week days',
      name: 'screenEditGoalNotificationsDaysLabel',
      desc: '',
      args: [],
    );
  }

  /// `Select week days`
  String get screenEditGoalSelectNotificationsDaysLabel {
    return Intl.message(
      'Select week days',
      name: 'screenEditGoalSelectNotificationsDaysLabel',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get screenEditGoalSaveButton {
    return Intl.message(
      'Save',
      name: 'screenEditGoalSaveButton',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
