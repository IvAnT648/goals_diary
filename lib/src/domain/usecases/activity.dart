
import 'package:injectable/injectable.dart';

import '../../data/repository/activity.dart';
import '../models.dart';

abstract class ActivityUseCase {
  void toggle(GoalActivityDto activity);
  Stream<List<GoalActivityDto>> get todayList;
}

@Injectable(as: ActivityUseCase)
class ActivityUseCaseImpl implements ActivityUseCase {
  final ActivityRepository _repository;

  ActivityUseCaseImpl(this._repository);

  @override
  void toggle(GoalActivityDto activity) {
    _repository.setOwn(activity, !activity.isDone);
  }

  @override
  Stream<List<GoalActivityDto>> get todayList async* {
    yield* _repository.myActivities;
  }
}

