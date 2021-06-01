
class GoalActivityData {
  static const String goalIdKey = 'goalId';
  static const String authorIdKey = 'authorId';
  static const String dateKey = 'createdAt';
  static const String isPublicKey = 'isPublic';

  final String goalId;
  final String authorId;
  final DateTime createdAt;
  final bool isPublic;

  GoalActivityData({
    required this.goalId,
    required this.authorId,
    required this.createdAt,
    required this.isPublic,
  });

  GoalActivityData copyWith({
    String? goalId,
    String? authorId,
    DateTime? createdAt,
    bool? isPublic,
  }) {
    return GoalActivityData(
      goalId: goalId ?? this.goalId,
      authorId: authorId ?? this.authorId,
      createdAt: createdAt ?? this.createdAt,
      isPublic: isPublic ?? this.isPublic,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'goalId': goalId,
      'authorId': authorId,
      'createdAt': createdAt.millisecondsSinceEpoch,
      'isPublic': isPublic,
    };
  }

  factory GoalActivityData.fromMap(Map<String, dynamic> map) {
    return GoalActivityData(
      goalId: map['goalId'],
      authorId: map['authorId'],
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt']),
      isPublic: map['isPublic'],
    );
  }

  @override
  String toString() => 'GoalActivityData('
      'goalId: $goalId'
      ', authorId: $authorId'
      ', createdAt: $createdAt'
      ', isPublic: $isPublic'
      ')';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GoalActivityData &&
        other.goalId == goalId &&
        other.authorId == authorId &&
        other.isPublic == isPublic &&
        other.createdAt == createdAt;
  }

  @override
  int get hashCode =>
      goalId.hashCode ^
      authorId.hashCode ^
      createdAt.hashCode ^
      isPublic.hashCode;
}
