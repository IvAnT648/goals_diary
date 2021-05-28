
import 'package:flutter/material.dart';
import 'package:goals_diary/src/common/resources.dart';

/// App font family is Roboto
///
/// (Default flutter font family is Roboto)
class TextStyles {
  /// Headers text styles
  static TextStyle h1 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );
  static TextStyle h2 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
  static TextStyle h3 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  static TextStyle h4 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
  static TextStyle h5 = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.bold,
  );

  /// Normal text styles
  static TextStyle normal = TextStyle(
    fontSize: 14,
  );
  static TextStyle normalHint = TextStyle(
    fontSize: 14,
    color: AppColors.hintText,
  );
  static TextStyle italicNormal = TextStyle(
      fontSize: 14,
      fontStyle: FontStyle.italic
  );
  static TextStyle normalLight = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );
  static TextStyle small = TextStyle(
    fontSize: 11,
  );
  static TextStyle smallHint = TextStyle(
    fontSize: 11,
    color: AppColors.hintText,
  );

  /// Additional text styles
  static TextStyle input = TextStyle(
    fontSize: 16,
  );
  static TextStyle inputLabel = TextStyle(
    fontSize: 16,
  );

  static TextStyle errorText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColors.negative,
  );

  static TextStyle onErrorText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColors.onPrimary,
  );
}
