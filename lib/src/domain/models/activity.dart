import 'dart:convert';

import 'goal.dart';

class GoalActivityDto {
  final String? id;
  final GoalDto goal;
  final bool isDone;
  
  GoalActivityDto({
    this.id,
    required this.goal,
    required this.isDone,
  });

  GoalActivityDto copyWith({
    String? id,
    GoalDto? goal,
    bool? isDone,
  }) {
    return GoalActivityDto(
      id: id ?? this.id,
      goal: goal ?? this.goal,
      isDone: isDone ?? this.isDone,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'goal': goal.toMap(),
      'isDone': isDone,
    };
  }

  factory GoalActivityDto.fromMap(Map<String, dynamic> map) {
    return GoalActivityDto(
      id: map['id'],
      goal: GoalDto.fromMap(map['goal']),
      isDone: map['isDone'],
    );
  }

  String toJson() => json.encode(toMap());

  factory GoalActivityDto.fromJson(String source) => GoalActivityDto.fromMap(json.decode(source));

  @override
  String toString() => 'GoalActivityDto(id: $id, goal: $goal, isDone: $isDone)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is GoalActivityDto &&
      other.id == id &&
      other.goal == goal &&
      other.isDone == isDone;
  }

  @override
  int get hashCode => id.hashCode ^ goal.hashCode ^ isDone.hashCode;
}
