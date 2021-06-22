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

class NotificationTimeDto extends TimeOfDay {
  NotificationTimeDto({
    required int hour,
    required int minute,
  }) : super(hour: hour, minute: minute);

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

  NotificationTimeDto copyWith({
    int? hour,
    int? minute,
  }) {
    return NotificationTimeDto(
      hour: hour ?? this.hour,
      minute: minute ?? this.minute,
    );
  }

  @override
  String toString() => '$NotificationTimeDto(${toDefaultTimeFormat()})';


  @override
  bool operator ==(Object other) {
    return other is NotificationTimeDto
        && other.hour == hour
        && other.minute == minute;
  }

  @override
  int get hashCode => hour.hashCode ^ minute.hashCode;
}
