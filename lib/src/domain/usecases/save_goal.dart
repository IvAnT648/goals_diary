
import 'package:injectable/injectable.dart';

import '../models.dart';

abstract class SaveGoalUseCase {
  Future<SaveGoalResult> call(GoalDto goal);
}

@Injectable(as: SaveGoalUseCase)
class SaveGoalUseCaseImpl implements SaveGoalUseCase {
  @override
  Future<SaveGoalResult> call(GoalDto goal) async {
    return SaveGoalResult.success();
  }
}
