
import 'goals.dart';

class GoalActivityDto {
  final GoalDto goal;
  final bool isDone;

  GoalActivityDto({
    required this.goal,
    required this.isDone,
  });

  GoalActivityDto copyWith({
    GoalDto? goal,
    bool? isDone,
  }) {
    return GoalActivityDto(
      goal: goal ?? this.goal,
      isDone: isDone ?? this.isDone,
    );
  }

  @override
  String toString() => 'GoalActivityDto(goal: $goal, isDone: $isDone)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is GoalActivityDto &&
      other.goal == goal &&
      other.isDone == isDone;
  }

  @override
  int get hashCode => goal.hashCode ^ isDone.hashCode;
}
