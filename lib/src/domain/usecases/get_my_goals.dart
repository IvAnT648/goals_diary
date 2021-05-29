
import '../models.dart';
import 'package:injectable/injectable.dart';

abstract class GetMyGoalsUseCase {
  List<GoalDto> call();
}

@Injectable(as: GetMyGoalsUseCase)
class GetMyGoalsUseCaseTest implements GetMyGoalsUseCase {
  final List<GoalDto> _goals = [
    GoalDto(
      id: '1',
      title: 'Зарядка',
      description: 'Каждое утро в 8:30 делать зарядку, длительностю не меннее 30 мин. Подтягивания, упражнения на пресс, отжимания.',
      type: GoalType.public,
      sendNotifications: true,
      notificationsTime: NotificationTime(
        hour: 8,
        minute: 0,
        weekDays: {
          WeekDays.monday,
          WeekDays.tuesday,
          WeekDays.wednesday,
          WeekDays.thursday,
          WeekDays.friday,
          WeekDays.saturday,
          WeekDays.sunday,
        },
      ),
    ),
    GoalDto(
      id: '2',
      title: 'Чтение книг',
      description: 'Цель - 4 книги в месяц',
      type: GoalType.private,
      sendNotifications: false,
    ),
    GoalDto(
      id: '3',
      title: 'Пробежка',
      description: 'Утренняя пробежка в 07:30',
      type: GoalType.public,
      sendNotifications: true,
      notificationsTime: NotificationTime(
        hour: 7,
        minute: 30,
        weekDays: {
          WeekDays.monday,
          WeekDays.wednesday,
          WeekDays.friday,
        },
      ),
    ),
    GoalDto(
      id: '4',
      title: 'Бассейн',
      description: 'Еженедельный абонемент по субботам в 08:00',
      type: GoalType.public,
      sendNotifications: true,
      notificationsTime: NotificationTime(
        hour: 7,
        minute: 0,
        weekDays: {
          WeekDays.saturday,
        },
      ),
    ),
  ];

  @override
  List<GoalDto> call() {
    return _goals;
  }
}
