
import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/foundation.dart';

class AppColors {
  static AppColorSwatch primary = AppColorSwatch.withDefaultIndex({
    10: Color(0xFF6DA8E3),
    0: Color(0xFF428AE0),
    -10: Color(0xFF3377D8),
    -20: Color(0xFF2C65B8),
  });

  static AppColorSwatch onPrimary = AppColorSwatch.withDefaultIndex({
    0: Color(0xFFFFFFFF),
    -10: Color(0xFFDAE4F6),
  });

  static AppColorSwatch secondary = AppColorSwatch.withDefaultIndex({
    10: Color(0xFFFF92A8),
    0: Color(0xFFFE6779),
    -10: Color(0xFFD85B70),
  });

  static AppColorSwatch onSecondary = AppColorSwatch.withDefaultIndex({
    0: Color(0xFFFFFFFF),
  });

  static const accent = Color(0xFFFFA285);

  static const background = Color(0xFFFFFFFF);

  static const onBackground = Color(0xFF686867);

  static const surface = Color(0xFFFFFFFF);

  static const onSurface = Color(0xFF686867);

  static AppColorSwatch positive = AppColorSwatch.withDefaultIndex({
    10: Color(0xFF72E9C1),
    0: Color(0xFF55C39E),
  });

  static AppColorSwatch negative = AppColorSwatch.withDefaultIndex({
    5: Color(0xFFD72D30),
    0: Color(0xFFC82B2E),
    -10: Color(0xFFB42528),
  });

  static AppColorSwatch warning = AppColorSwatch.withDefaultIndex({
    0: Color(0xFFFFDB00),
  });

  static AppColorSwatch gray = AppColorSwatch.withDefaultIndex({
    20: Color(0xFFF2F2F2),
    10: Color(0xFFDCDCDC),
    5: Color(0xFFC4C4C4),
    0: Color(0xFFA6A6A6),
    -10: Color(0xFF686867),
    -20: Color(0xFF000000),
  });

  static Color regularText = gray[-20];
  static Color hintText = gray[-10];
}

class AppColorSwatch extends Color {
  /// Creates constants swatch value, but constrained by clean [primary] value.
  const AppColorSwatch(int primary, this._swatch) : super(primary);

  /// Creates swatch with zero index as primary value. Throws an exception if
  /// value doesn't exist.
  AppColorSwatch.withDefaultIndex(this._swatch) : super(_swatch[0]!.value);

  /// Creates swatch with specified index. Throws an exception if value doesn't
  /// exist.
  AppColorSwatch.withPrimaryIndex(int primaryIndex, this._swatch)
      : super(_swatch[primaryIndex]!.value);

  final Map<int, Color> _swatch;

  /// Lowest color value in swatch.
  Color? get lowest => _swatch[_swatch.keys.reduce(math.min)];

  /// Highest color value in swatch.
  Color? get highest => _swatch[_swatch.keys.reduce(math.max)];

  /// Returns an element of the color table or null.
  Color? getOrNull(int index) => _swatch[index];

  /// Returns an element of the color table or closest value.
  Color getOrClosest(int index) =>
      _swatch[index] ??
          _swatch[_swatch.keys.toList().findClosest(index)] ??
          this;

  /// Returns an element of the color table or primary.
  Color operator [](int index) => _swatch[index] ?? this;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other.runtimeType != runtimeType) return false;
    return super == other
        && other is AppColorSwatch
        && mapEquals<int, Color>(other._swatch, _swatch);
  }

  @override
  int get hashCode => hashValues(runtimeType, value, _swatch);

  @override
  String toString() => '${objectRuntimeType(this, 'AppColorSwatch')}'
      '(primary: ${super.toString()})';
}

extension on List<int> {
  int findClosest(int value) {
    var distance = (first - value).abs();
    var closestIndex = 0;

    for (var i = 1; i < length; i++) {
      final closestDistance = (this[i] - value).abs();
      if (closestDistance < distance) {
        closestIndex = i;
        distance = closestDistance;
      }
    }

    return this[closestIndex];
  }
}
