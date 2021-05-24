
import '../../common/resources.dart';
import '../../domain/models.dart';

extension GoalTypeToLocalizedString on GoalType {
  String toText() {
    switch (this) {
      case GoalType.private:
        return S.current.commonPrivateGoal;
      case GoalType.public:
        return S.current.commonPublicGoal;
    }
  }
}

extension NotificationTimePresentationExt on NotificationTime {
  String getWeekDaysLine({bool asEnum = false}) {
    if (weekDays.length == WeekDays.values.length && !asEnum) {
      return S.current.commonDailyPeriodicity;
    }
    return joinWeekDaysShort();
  }
}
