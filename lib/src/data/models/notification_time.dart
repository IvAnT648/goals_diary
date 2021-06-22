
class NotificationTimeRaw {
  final int hour;
  final int minute;
  
  NotificationTimeRaw({
    required this.hour,
    required this.minute,
  });

  factory NotificationTimeRaw.fromMap(Map<String, dynamic> map) {
    return NotificationTimeRaw(
      hour: map['hour'],
      minute: map['minute'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'hour': hour,
      'minute': minute,
    };
  }

  NotificationTimeRaw copyWith({
    int? hour,
    int? minute,
  }) {
    return NotificationTimeRaw(
      hour: hour ?? this.hour,
      minute: minute ?? this.minute,
    );
  }

  @override
  String toString() => 'NotificationTimeRaw(hour: $hour, minute: $minute)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is NotificationTimeRaw &&
      other.hour == hour &&
      other.minute == minute;
  }

  @override
  int get hashCode => hour.hashCode ^ minute.hashCode;
}
