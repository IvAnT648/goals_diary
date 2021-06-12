
import 'package:flutter/foundation.dart';

class NotificationTimeRaw {
  final List<int> days;
  final int hour;
  final int minute;
  
  NotificationTimeRaw({
    required this.days,
    required this.hour,
    required this.minute,
  });

  factory NotificationTimeRaw.fromMap(Map<String, dynamic> map) {
    return NotificationTimeRaw(
      days: List<int>.from(map['days']),
      hour: map['hour'],
      minute: map['minute'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'days': days,
      'hour': hour,
      'minute': minute,
    };
  }

  NotificationTimeRaw copyWith({
    List<int>? days,
    int? hour,
    int? minute,
  }) {
    return NotificationTimeRaw(
      days: days ?? this.days,
      hour: hour ?? this.hour,
      minute: minute ?? this.minute,
    );
  }

  @override
  String toString() => 'NotificationTimeRaw(days: $days, hour: $hour, '
      'minute: $minute)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is NotificationTimeRaw &&
      listEquals(other.days, days) &&
      other.hour == hour &&
      other.minute == minute;
  }

  @override
  int get hashCode => days.hashCode ^ hour.hashCode ^ minute.hashCode;
}
