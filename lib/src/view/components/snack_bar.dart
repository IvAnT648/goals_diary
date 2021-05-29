import 'package:flutter/material.dart';
import 'package:goals_diary/src/common/resources.dart';

void showErrorSnackBar(String text, BuildContext context) {
  final messenger = ScaffoldMessenger.of(context);
  messenger.hideCurrentSnackBar();
  messenger.showSnackBar(SnackBar(
    content: Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyles.onErrorText,
    ),
    backgroundColor: AppColors.negative[-10],
  ));
}

void showSuccessSnackBar(String text, BuildContext context) {
  final messenger = ScaffoldMessenger.of(context);
  messenger.hideCurrentSnackBar();
  messenger.showSnackBar(SnackBar(
    content: Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyles.onErrorText,
    ),
    backgroundColor: AppColors.positive,
  ));
}
