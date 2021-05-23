
import 'package:flutter/material.dart';

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
  static TextStyle small = TextStyle(
    fontSize: 11,
  );
  static TextStyle italicNormal = TextStyle(
    fontSize: 14,
    fontStyle: FontStyle.italic
  );

  /// Additional text styles
  static TextStyle input = TextStyle(
    fontSize: 16,
  );
  static TextStyle inputLabel = TextStyle(
    fontSize: 16,
  );
}
