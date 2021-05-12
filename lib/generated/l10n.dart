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
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.of(context).');
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
