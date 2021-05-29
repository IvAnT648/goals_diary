import 'dart:convert';

class GoalActivityData {
  static const String goalIdKey = 'goalId';
  static const String dateKey = 'createdAt';

  final String goalId;
  final DateTime createdAt;
  
  GoalActivityData({
    required this.goalId,
    required this.createdAt,
  });

  GoalActivityData copyWith({
    String? goalId,
    DateTime? createdAt,
  }) {
    return GoalActivityData(
      goalId: goalId ?? this.goalId,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'goalId': goalId,
      'createdAt': createdAt.millisecondsSinceEpoch,
    };
  }

  factory GoalActivityData.fromMap(Map<String, dynamic> map) {
    return GoalActivityData(
      goalId: map['goalId'],
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt']),
    );
  }

  String toJson() => json.encode(toMap());

  factory GoalActivityData.fromJson(String source) =>
      GoalActivityData.fromMap(json.decode(source));

  @override
  String toString() => 'GoalActivityData('
      'goalId: $goalId'
      ', createdAt: $createdAt'
      ')';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is GoalActivityData &&
      other.goalId == goalId &&
      other.createdAt == createdAt;
  }

  @override
  int get hashCode => goalId.hashCode ^ createdAt.hashCode;
}
