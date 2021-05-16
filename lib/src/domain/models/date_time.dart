import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../utils.dart';

enum WeekDays {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
}

class NotificationTime extends TimeOfDay with WeekDaysPeriodicity {
  NotificationTime({
    required int hour,
    required int minute,
    required Set<WeekDays> weekDays,
  }) : assert(hour >= 0 && hour <= 23),
        assert(minute >= 0 && minute <= 59),
        super(hour: hour, minute: minute)
  {
    this.weekDays = weekDays;
  }

  String _addLeadingZeroIfNeeded(int value) {
    if (value < 10)
      return '0$value';
    return value.toString();
  }

  @override
  String toString() {
    final String hourLabel = _addLeadingZeroIfNeeded(hour);
    final String minuteLabel = _addLeadingZeroIfNeeded(minute);

    return '$NotificationTime($hourLabel:$minuteLabel, $weekDays)';
  }

  String toText() {
    if (weekDays.length == WeekDays.values.length) {
      return S.current.commonDailyPeriodicity;
    }
    return joinWeekDaysShort();
  }
}

mixin WeekDaysPeriodicity {
  late final Set<WeekDays> weekDays;
  final String weekDaysJoinSeparator = ',';

  String joinWeekDaysShort() {
    var result = '';
    var count = weekDays.length;
    WeekDays.values.forEach((element) {
      if (weekDays.contains(element)) {
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
}
