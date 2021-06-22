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

  /// `Something went wrong`
  String get commonInternalErrorText {
    return Intl.message(
      'Something went wrong',
      name: 'commonInternalErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get commonAlertDialogYesButton {
    return Intl.message(
      'Yes',
      name: 'commonAlertDialogYesButton',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get commonAlertDialogNoButton {
    return Intl.message(
      'No',
      name: 'commonAlertDialogNoButton',
      desc: '',
      args: [],
    );
  }

  /// `Feed`
  String get drawerFeedMenuItem {
    return Intl.message(
      'Feed',
      name: 'drawerFeedMenuItem',
      desc: '',
      args: [],
    );
  }

  /// `My goals`
  String get drawerGoalsMenuItem {
    return Intl.message(
      'My goals',
      name: 'drawerGoalsMenuItem',
      desc: '',
      args: [],
    );
  }

  /// `My activity`
  String get drawerActivityMenuItem {
    return Intl.message(
      'My activity',
      name: 'drawerActivityMenuItem',
      desc: '',
      args: [],
    );
  }

  /// `My subscriptions`
  String get drawerSubscriptionsMenuItem {
    return Intl.message(
      'My subscriptions',
      name: 'drawerSubscriptionsMenuItem',
      desc: '',
      args: [],
    );
  }

  /// `Tracked goals`
  String get drawerTrackedGoalsMenuItem {
    return Intl.message(
      'Tracked goals',
      name: 'drawerTrackedGoalsMenuItem',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get drawerProfileMenuItem {
    return Intl.message(
      'Profile',
      name: 'drawerProfileMenuItem',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get drawerSettingsMenuItem {
    return Intl.message(
      'Settings',
      name: 'drawerSettingsMenuItem',
      desc: '',
      args: [],
    );
  }

  /// `You didn't log in`
  String get drawerUnauthorizedHeader {
    return Intl.message(
      'You didn\'t log in',
      name: 'drawerUnauthorizedHeader',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get drawerSignInButton {
    return Intl.message(
      'Sign in',
      name: 'drawerSignInButton',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get drawerLogOutButton {
    return Intl.message(
      'Log out',
      name: 'drawerLogOutButton',
      desc: '',
      args: [],
    );
  }

  /// `The "{goal}" goal`
  String modalGoalInfoTitle(Object goal) {
    return Intl.message(
      'The "$goal" goal',
      name: 'modalGoalInfoTitle',
      desc: '',
      args: [goal],
    );
  }

  /// `Description`
  String get modalGoalInfoDescriptionLabel {
    return Intl.message(
      'Description',
      name: 'modalGoalInfoDescriptionLabel',
      desc: '',
      args: [],
    );
  }

  /// `Periodicity`
  String get modalGoalInfoPeriodicityLabel {
    return Intl.message(
      'Periodicity',
      name: 'modalGoalInfoPeriodicityLabel',
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

  /// `User not found`
  String get screenLoginUserNotFound {
    return Intl.message(
      'User not found',
      name: 'screenLoginUserNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email`
  String get screenLoginInvalidEmail {
    return Intl.message(
      'Invalid email',
      name: 'screenLoginInvalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Wrong password`
  String get screenLoginWrongPassword {
    return Intl.message(
      'Wrong password',
      name: 'screenLoginWrongPassword',
      desc: '',
      args: [],
    );
  }

  /// `E-mail and password can't be empty`
  String get screenLoginFieldsMustNotBeEmpty {
    return Intl.message(
      'E-mail and password can\'t be empty',
      name: 'screenLoginFieldsMustNotBeEmpty',
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

  /// `Surname`
  String get screenSignUpSurnameLabel {
    return Intl.message(
      'Surname',
      name: 'screenSignUpSurnameLabel',
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

  /// `E-mail`
  String get screenSignUpEmailLabel {
    return Intl.message(
      'E-mail',
      name: 'screenSignUpEmailLabel',
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

  /// `Invalid password!`
  String get screenSignUpInvalidPassword {
    return Intl.message(
      'Invalid password!',
      name: 'screenSignUpInvalidPassword',
      desc: '',
      args: [],
    );
  }

  /// `E-mail, name, nickname and passwords fields are required`
  String get screenSignUpFieldsMustBeNotEmpty {
    return Intl.message(
      'E-mail, name, nickname and passwords fields are required',
      name: 'screenSignUpFieldsMustBeNotEmpty',
      desc: '',
      args: [],
    );
  }

  /// `An account with the given email address already exists`
  String get screenSignUpAlreadyExistsFail {
    return Intl.message(
      'An account with the given email address already exists',
      name: 'screenSignUpAlreadyExistsFail',
      desc: '',
      args: [],
    );
  }

  /// `The email address is not valid`
  String get screenSignUpInvalidEmailFail {
    return Intl.message(
      'The email address is not valid',
      name: 'screenSignUpInvalidEmailFail',
      desc: '',
      args: [],
    );
  }

  /// `The password is not strong enough. Password must be at least 6 characters`
  String get screenSignUpWeakPasswordFail {
    return Intl.message(
      'The password is not strong enough. Password must be at least 6 characters',
      name: 'screenSignUpWeakPasswordFail',
      desc: '',
      args: [],
    );
  }

  /// `The nickname already exists`
  String get screenSignUpDuplicatedNicknameFail {
    return Intl.message(
      'The nickname already exists',
      name: 'screenSignUpDuplicatedNicknameFail',
      desc: '',
      args: [],
    );
  }

  /// `The field can't be empty`
  String get screenSignUpFieldCanNotBeEmpty {
    return Intl.message(
      'The field can\'t be empty',
      name: 'screenSignUpFieldCanNotBeEmpty',
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

  /// `Maximum number of goals created`
  String get screenMyGoalsMaxGoalsQtyAreCreated {
    return Intl.message(
      'Maximum number of goals created',
      name: 'screenMyGoalsMaxGoalsQtyAreCreated',
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

  /// `Periodicity`
  String get screenEditGoalNotificationsDaysLabel {
    return Intl.message(
      'Periodicity',
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

  /// `Goal title can't be empty`
  String get screenEditGoalEmptyTitleSnackBar {
    return Intl.message(
      'Goal title can\'t be empty',
      name: 'screenEditGoalEmptyTitleSnackBar',
      desc: '',
      args: [],
    );
  }

  /// `Goal saved successfully`
  String get screenEditGoalSuccessSaveSnackBar {
    return Intl.message(
      'Goal saved successfully',
      name: 'screenEditGoalSuccessSaveSnackBar',
      desc: '',
      args: [],
    );
  }

  /// `You haven't created any goals yet`
  String get screenEditGoalHaveNoGoals {
    return Intl.message(
      'You haven\'t created any goals yet',
      name: 'screenEditGoalHaveNoGoals',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to delete this goal?`
  String get screenEditGoalDeleteGoalAlert {
    return Intl.message(
      'Do you want to delete this goal?',
      name: 'screenEditGoalDeleteGoalAlert',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get screenProfileTitle {
    return Intl.message(
      'Profile',
      name: 'screenProfileTitle',
      desc: '',
      args: [],
    );
  }

  /// `My profile`
  String get screenMyProfileTitle {
    return Intl.message(
      'My profile',
      name: 'screenMyProfileTitle',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get screenProfileNameField {
    return Intl.message(
      'Name',
      name: 'screenProfileNameField',
      desc: '',
      args: [],
    );
  }

  /// `Surname`
  String get screenProfileSurnameField {
    return Intl.message(
      'Surname',
      name: 'screenProfileSurnameField',
      desc: '',
      args: [],
    );
  }

  /// `Motto`
  String get screenProfileMottoField {
    return Intl.message(
      'Motto',
      name: 'screenProfileMottoField',
      desc: '',
      args: [],
    );
  }

  /// `About me`
  String get screenProfileAboutMe {
    return Intl.message(
      'About me',
      name: 'screenProfileAboutMe',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get screenProfileSaveButton {
    return Intl.message(
      'Save',
      name: 'screenProfileSaveButton',
      desc: '',
      args: [],
    );
  }

  /// `Subscribe`
  String get screenProfileSubscribeButton {
    return Intl.message(
      'Subscribe',
      name: 'screenProfileSubscribeButton',
      desc: '',
      args: [],
    );
  }

  /// `Unsubscribe`
  String get screenProfileUnsubscribeButton {
    return Intl.message(
      'Unsubscribe',
      name: 'screenProfileUnsubscribeButton',
      desc: '',
      args: [],
    );
  }

  /// `Name can't be empty`
  String get screenProfileEmptyNameFail {
    return Intl.message(
      'Name can\'t be empty',
      name: 'screenProfileEmptyNameFail',
      desc: '',
      args: [],
    );
  }

  /// `Saved successfully`
  String get screenProfileSuccessSave {
    return Intl.message(
      'Saved successfully',
      name: 'screenProfileSuccessSave',
      desc: '',
      args: [],
    );
  }

  /// `The user not found`
  String get screenProfileNotFound {
    return Intl.message(
      'The user not found',
      name: 'screenProfileNotFound',
      desc: '',
      args: [],
    );
  }

  /// `The user has no published goals yet.`
  String get screenProfileHasNoPublicGoals {
    return Intl.message(
      'The user has no published goals yet.',
      name: 'screenProfileHasNoPublicGoals',
      desc: '',
      args: [],
    );
  }

  /// `User's goals:`
  String get screenProfileUserGoalsTitle {
    return Intl.message(
      'User\'s goals:',
      name: 'screenProfileUserGoalsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Tasks for today`
  String get screenActivityTitle {
    return Intl.message(
      'Tasks for today',
      name: 'screenActivityTitle',
      desc: '',
      args: [],
    );
  }

  /// `The goal is not achieved today!`
  String get screenActivityGoalNotAchieved {
    return Intl.message(
      'The goal is not achieved today!',
      name: 'screenActivityGoalNotAchieved',
      desc: '',
      args: [],
    );
  }

  /// `The goal for today is completed!`
  String get screenActivityGoalAchieved {
    return Intl.message(
      'The goal for today is completed!',
      name: 'screenActivityGoalAchieved',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get screenActivityCompleteGoalButton {
    return Intl.message(
      'Done',
      name: 'screenActivityCompleteGoalButton',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get screenActivityCancelGoalButton {
    return Intl.message(
      'Cancel',
      name: 'screenActivityCancelGoalButton',
      desc: '',
      args: [],
    );
  }

  /// `You haven't any tasks for the today`
  String get screenActivityHaveNoTasksMsg {
    return Intl.message(
      'You haven\'t any tasks for the today',
      name: 'screenActivityHaveNoTasksMsg',
      desc: '',
      args: [],
    );
  }

  /// `Create now`
  String get screenActivityToGoalsCreatingButton {
    return Intl.message(
      'Create now',
      name: 'screenActivityToGoalsCreatingButton',
      desc: '',
      args: [],
    );
  }

  /// `Use a long press`
  String get screenActivityOnShortPressSnackBarText {
    return Intl.message(
      'Use a long press',
      name: 'screenActivityOnShortPressSnackBarText',
      desc: '',
      args: [],
    );
  }

  /// `Feed`
  String get screenFeedTitle {
    return Intl.message(
      'Feed',
      name: 'screenFeedTitle',
      desc: '',
      args: [],
    );
  }

  /// `goal progress`
  String get screenFeedGoalProgressText {
    return Intl.message(
      'goal progress',
      name: 'screenFeedGoalProgressText',
      desc: '',
      args: [],
    );
  }

  /// `at`
  String get screenFeedAtTime {
    return Intl.message(
      'at',
      name: 'screenFeedAtTime',
      desc: '',
      args: [],
    );
  }

  /// `No comments yet...`
  String get screenFeedNoComments {
    return Intl.message(
      'No comments yet...',
      name: 'screenFeedNoComments',
      desc: '',
      args: [],
    );
  }

  /// `No posts yet...`
  String get screenFeedNoPosts {
    return Intl.message(
      'No posts yet...',
      name: 'screenFeedNoPosts',
      desc: '',
      args: [],
    );
  }

  /// `Comment can't be empty`
  String get screenFeedEmptyComment {
    return Intl.message(
      'Comment can\'t be empty',
      name: 'screenFeedEmptyComment',
      desc: '',
      args: [],
    );
  }

  /// `User's activity`
  String get screenPostTitle {
    return Intl.message(
      'User\'s activity',
      name: 'screenPostTitle',
      desc: '',
      args: [],
    );
  }

  /// `The post not found`
  String get screenPostNotFound {
    return Intl.message(
      'The post not found',
      name: 'screenPostNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Your comment...`
  String get screenPostCommentFieldPlaceholder {
    return Intl.message(
      'Your comment...',
      name: 'screenPostCommentFieldPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Start typing a nickname`
  String get screenSearchUserFieldPlaceholder {
    return Intl.message(
      'Start typing a nickname',
      name: 'screenSearchUserFieldPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Search result:`
  String get screenSearchUserSearchResult {
    return Intl.message(
      'Search result:',
      name: 'screenSearchUserSearchResult',
      desc: '',
      args: [],
    );
  }

  /// `My subscriptions`
  String get screenSubscriptionsTitle {
    return Intl.message(
      'My subscriptions',
      name: 'screenSubscriptionsTitle',
      desc: '',
      args: [],
    );
  }

  /// `You don't have any subscriptions yet`
  String get screenSubscriptionsHaveNoSubs {
    return Intl.message(
      'You don\'t have any subscriptions yet',
      name: 'screenSubscriptionsHaveNoSubs',
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
