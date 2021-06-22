
import 'notification_time.dart';

class GoalData {
  static const String authorIdKey = 'authorId';
  static const String isPublicKey = 'isPublic';
  static const String periodicityKey = 'periodicity';

  final String title;
  final String? description;
  final bool isPublic;
  final String authorId;
  final bool isNotifying;
  final List<int> periodicity;
  final NotificationTimeRaw? notificationTime;

  GoalData({
    required this.title,
    this.description,
    required this.isPublic,
    required this.authorId,
    required this.isNotifying,
    required this.periodicity,
    this.notificationTime,
  });

  GoalData copyWith({
    String? title,
    String? description,
    bool? isPublic,
    bool? isNotifying,
    String? authorId,
    List<int>? periodicity,
    NotificationTimeRaw? notificationTime,
  }) {
    return GoalData(
      title: title ?? this.title,
      description: description ?? this.description,
      isPublic: isPublic ?? this.isPublic,
      isNotifying: isNotifying ?? this.isNotifying,
      authorId: authorId ?? this.authorId,
      periodicity: periodicity ?? this.periodicity,
      notificationTime: notificationTime ?? this.notificationTime,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'isPublic': isPublic,
      'isNotifying': isNotifying,
      'periodicity': periodicity,
      authorIdKey: authorId,
      'notificationTime': notificationTime?.toMap(),
    };
  }

  factory GoalData.fromMap(Map<String, dynamic> map) {
    return GoalData(
      title: map['title'],
      description: map['description'],
      isPublic: map['isPublic'],
      isNotifying: map['isNotifying'],
      periodicity: map['periodicity'],
      authorId: map[authorIdKey],
      notificationTime: NotificationTimeRaw.fromMap(map['notificationTime']),
    );
  }

  factory GoalData.fromFirestore(Map<String, dynamic> map) {
    return GoalData(
      title: map['title'] as String,
      description: map['description'] as String?,
      isPublic: map['isPublic'] as bool,
      isNotifying: map['isNotifying'] as bool,
      periodicity: List<int>.from(map['periodicity'] ?? []),
      authorId: map[authorIdKey] as String,
      notificationTime: map['notificationTime'] != null
          ? NotificationTimeRaw.fromMap(map['notificationTime'])
          : null,
    );
  }

  @override
  String toString() {
    return 'GoalData(title: $title'
        ', description: $description'
        ', isPublic: $isPublic'
        ', isNotifying: $isNotifying'
        ', periodicity: $periodicity'
        ', notificationTime: $notificationTime'
        ', $authorIdKey: $authorId'
        ')';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is GoalData &&
      other.title == title &&
      other.description == description &&
      other.isPublic == isPublic &&
      other.isNotifying == isNotifying &&
      other.periodicity == periodicity &&
      other.notificationTime == notificationTime &&
      other.authorId == authorId;
  }

  @override
  int get hashCode {
    return title.hashCode ^
      description.hashCode ^
      isPublic.hashCode ^
      isNotifying.hashCode ^
      periodicity.hashCode ^
      notificationTime.hashCode ^
      authorId.hashCode;
  }
}
