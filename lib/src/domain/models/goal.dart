import 'date_time.dart';

enum GoalType { private, public }

class GoalDto {
  final String? id;
  final String title;
  final String? description;
  final GoalType type;
  final bool sendNotifications;
  final NotificationTimeDto? notificationsTime;
  final Set<WeekDays> periodicity;

  bool get isPrivate => type == GoalType.private;
  bool get isPublic => type == GoalType.public;

  GoalDto({
    this.id,
    required this.title,
    required this.type,
    this.description,
    this.sendNotifications = false,
    this.notificationsTime,
    required this.periodicity,
  });

  GoalDto copyWith({
    String? id,
    String? title,
    String? description,
    GoalType? type,
    bool? sendNotifications,
    NotificationTimeDto? notificationsTime,
    Set<WeekDays>? periodicity,
  }) {
    return GoalDto(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      type: type ?? this.type,
      sendNotifications: sendNotifications ?? this.sendNotifications,
      notificationsTime: notificationsTime ?? this.notificationsTime,
      periodicity: periodicity ?? this.periodicity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'type': type.index,
      'sendNotifications': sendNotifications,
      'notificationsTime': notificationsTime,
      'periodicity': periodicity,
    };
  }

  factory GoalDto.fromMap(Map<String, dynamic> map) {
    return GoalDto(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      type: GoalType.values[map['type']],
      sendNotifications: map['sendNotifications'],
      notificationsTime: map['notificationsTime'],
      periodicity: map['periodicity'],
    );
  }

  @override
  String toString() {
    return 'GoalDto(id: $id, '
        'title: $title, '
        'description: $description, '
        'type: $type, '
        'sendNotifications: $sendNotifications, '
        'notificationsTime: $notificationsTime, '
        'periodicity: $periodicity, '
        ')';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GoalDto &&
        other.id == id &&
        other.title == title &&
        other.description == description &&
        other.type == type &&
        other.sendNotifications == sendNotifications &&
        other.notificationsTime == notificationsTime &&
        other.periodicity == periodicity;
  }

  @override
  int get hashCode => title.hashCode ^
        description.hashCode ^
        id.hashCode ^
        type.hashCode ^
        sendNotifications.hashCode ^
        notificationsTime.hashCode ^
        periodicity.hashCode;
}
