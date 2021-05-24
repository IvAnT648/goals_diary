
import '../../generated/l10n.dart';
import 'models.dart';

extension WeekDaysEnumExt on WeekDays {
  String toShortLocaleStr() {
    switch (this) {
      case WeekDays.monday:
        return S.current.commonMondayShort;
      case WeekDays.tuesday:
        return S.current.commonTuesdayShort;
      case WeekDays.wednesday:
        return S.current.commonWednesdayShort;
      case WeekDays.thursday:
        return S.current.commonThursdayShort;
      case WeekDays.friday:
        return S.current.commonFridayShort;
      case WeekDays.saturday:
        return S.current.commonSaturdayShort;
      case WeekDays.sunday:
        return S.current.commonSundayShort;
    }
  }
}
