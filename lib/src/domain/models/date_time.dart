import 'package:flutter/material.dart';

enum WeekDays {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
}

class NotificationTime extends TimeOfDay {
  final List<WeekDays> weekDays;
  @override
  final int hour;
  @override
  final int minute;

  NotificationTime({
    required this.hour,
    required this.minute,
    required this.weekDays,
  }) : assert(hour >= 0 && hour <= 23),
        assert(minute >= 0 && minute <= 59),
        super(hour: hour, minute: minute);

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
}
