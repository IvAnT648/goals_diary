import 'package:flutter/material.dart';

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
  }) : super(hour: hour, minute: minute)
  {
    this.weekDays = weekDays;
  }

  String _addLeadingZeroIfNeeded(int value) {
    if (value < 10)
      return '0$value';
    return value.toString();
  }

  String toDefaultTimeFormat() {
    final String hourLabel = _addLeadingZeroIfNeeded(hour);
    final String minuteLabel = _addLeadingZeroIfNeeded(minute);

    return '$hourLabel:$minuteLabel';
  }

  NotificationTime copyWith({
    int? hour,
    int? minute,
    Set<WeekDays>? weekDays,
  }) {
    return NotificationTime(
      hour: hour ?? this.hour,
      minute: minute ?? this.minute,
      weekDays: weekDays ?? this.weekDays,
    );
  }

  @override
  String toString() => '$NotificationTime(${toDefaultTimeFormat()}, $weekDays)';
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
