
import 'package:flutter/services.dart';

import '../../generated/l10n.dart';
import '../domain/models.dart';

class LowerCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue,
      TextEditingValue newValue
  ) {
    return TextEditingValue(
      text: newValue.text.toLowerCase(),
      selection: newValue.selection,
    );
  }
}

extension WeekDaysPresentationExt on WeekDays {
  String toShortLocaleStr() {
    switch (this) {
      case WeekDays.monday:
        return S.current.commonMondayShort;
      case WeekDays.tuesday:
        return S.current.commonTuesdayShort;
      case WeekDays.wednesday:
        return S.current.commonWednesdayShort;
      case WeekDays.thursday:
        return S.current.commonThursdayShort;
      case WeekDays.friday:
        return S.current.commonFridayShort;
      case WeekDays.saturday:
        return S.current.commonSaturdayShort;
      case WeekDays.sunday:
        return S.current.commonSundayShort;
    }
  }
}

extension PeriodicityViewExt on GoalDto {
  static const String weekDaysJoinSeparator = ',';

  String joinWeekDaysShort() {
    var result = '';
    var count = periodicity.length;
    WeekDays.values.forEach((element) {
      if (periodicity.contains(element)) {
        result += element.toShortLocaleStr();
        if (--count != 0) {
          result += _getWeekDaysJoinSeparator();
        }
      }
    });
    return result;
  }

  String _getWeekDaysJoinSeparator() {
    return '$weekDaysJoinSeparator ';
  }

  String getWeekDaysLine({bool asEnum = false}) {
    if (periodicity.length == WeekDays.values.length && !asEnum) {
      return S.current.commonDailyPeriodicity;
    }
    return joinWeekDaysShort();
  }
}
