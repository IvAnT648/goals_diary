
import 'package:injectable/injectable.dart';

import '../models.dart';

abstract class GetPostsUseCase {
  List<PostDto> call();
}

@Injectable(as: GetPostsUseCase)
class GetPostsUseCaseMock implements GetPostsUseCase {
  @override
  List<PostDto> call() {
    return posts;
  }

  static final List<PostDto> posts = [
    PostDto(
      id: '5',
      date: DateTime(2021, 05, 26, 10, 48),
      goal: GoalDto(
        id: '5',
        title: 'Пробежка',
        description: 'Утренняя пробежка в 07:30',
        type: GoalType.public,
        sendNotifications: false,
      ),
      author: UserDto(
        id: '3',
        name: 'Лиза',
        surname: 'Иванова',
        nickname: 'livanova88',
        about: 'Программист 88 lvl',
        motto: 'Не всякий кодер - программист',
        avatarUrl: 'https://databytenitt.github.io/img/female.png',
      ),
      text: 'Сегодня уже второй день бегаю. Круто, что есть такое приложение!',
      likeQty: 0,
      comments: [],
    ),
    PostDto(
      id: '4',
      date: DateTime(2021, 05, 24, 07, 48),
      goal: GoalDto(
        id: '6',
        title: 'Чтение книг',
        description: 'Цель - 4 книги в месяц',
        type: GoalType.public,
        sendNotifications: false,
      ),
      author: UserDto(
        id: '4',
        name: 'Константин',
        surname: 'Красильников',
        nickname: 'kk_over',
        about: 'Лыжник, у которого лыжи - едут!',
        motto: 'Будь собой!',
        avatarUrl: 'https://databytenitt.github.io/img/male.png',
      ),
      text: 'Сегодня дочитал наконец "Войну и мир". Действительно эпопея! Центральная тема произведения – историческая судьба русского народа в Отечественной войне 1812 года. Также автором подняты темы любви, семьи, жизни и смерти, долга, войны. Всем рекомендую к прочтению это, действительно, великое произведение!',
      likeQty: 5,
      comments: [
        PostCommentDto(
          id: '1',
          date: DateTime(2021, 05, 26, 08, 11),
          text: 'Поздравляю, рада за тебя!',
          author: UserDto(
            id: '2',
            name: 'Вероника',
            surname: 'Аксенова',
            nickname: 'veronaksenova',
            about: 'Дизайнер, 24 года',
            motto: 'Если что-то делать - что-то будет.',
          ),
        ),
        PostCommentDto(
          id: '2',
          date: DateTime(2021, 05, 26, 12, 30),
          text: 'Классно. Я ещё не закончил.',
          author: UserDto(
            id: '1',
            name: 'Alexander',
            surname: 'Ivanov',
            nickname: 'alexander442',
            about: 'Программист 80 lvl',
            motto: 'Не всякий кодер - программист',
            avatarUrl: 'https://databytenitt.github.io/img/male.png',
          ),
        ),
      ],
    ),
    PostDto(
      id: '4',
      date: DateTime(2021, 05, 24, 07, 48),
      goal: GoalDto(
        id: '6',
        title: 'Чтение книг',
        description: 'Цель - 4 книги в месяц',
        type: GoalType.public,
        sendNotifications: false,
      ),
      author: UserDto(
        id: '4',
        name: 'Константин',
        surname: 'Красильников',
        nickname: 'kk_over',
        about: 'Лыжник, у которого лыжи - едут!',
        motto: 'Будь собой!',
        avatarUrl: 'https://databytenitt.github.io/img/male.png',
      ),
      text: 'Сегодня дочитал наконец "Войну и мир". Действительно эпопея! Центральная тема произведения – историческая судьба русского народа в Отечественной войне 1812 года. Также автором подняты темы любви, семьи, жизни и смерти, долга, войны. Всем рекомендую к прочтению это, действительно, великое произведение!',
      likeQty: 5,
      comments: [
        PostCommentDto(
          id: '1',
          date: DateTime(2021, 05, 26, 08, 11),
          text: 'Поздравляю, рада за тебя!',
          author: UserDto(
            id: '2',
            name: 'Вероника',
            surname: 'Аксенова',
            nickname: 'veronaksenova',
            about: 'Дизайнер, 24 года',
            motto: 'Если что-то делать - что-то будет.',
          ),
        ),
        PostCommentDto(
          id: '2',
          date: DateTime(2021, 05, 26, 12, 30),
          text: 'Классно. Я ещё не закончил.',
          author: UserDto(
            id: '1',
            name: 'Alexander',
            surname: 'Ivanov',
            nickname: 'alexander442',
            about: 'Программист 80 lvl',
            motto: 'Не всякий кодер - программист',
            avatarUrl: 'https://databytenitt.github.io/img/male.png',
          ),
        ),
        PostCommentDto(
          id: '2',
          date: DateTime(2021, 05, 26, 12, 30),
          text: 'Классно. Я ещё не закончил.',
          author: UserDto(
            id: '1',
            name: 'Alexander',
            surname: 'Ivanov',
            nickname: 'alexander442',
            about: 'Программист 80 lvl',
            motto: 'Не всякий кодер - программист',
            avatarUrl: 'https://databytenitt.github.io/img/male.png',
          ),
        ),
        PostCommentDto(
          id: '2',
          date: DateTime(2021, 05, 26, 12, 30),
          text: 'Классно. Я ещё не закончил.',
          author: UserDto(
            id: '1',
            name: 'Alexander',
            surname: 'Ivanov',
            nickname: 'alexander442',
            about: 'Программист 80 lvl',
            motto: 'Не всякий кодер - программист',
            avatarUrl: 'https://databytenitt.github.io/img/male.png',
          ),
        ),
        PostCommentDto(
          id: '2',
          date: DateTime(2021, 05, 26, 12, 30),
          text: 'Классно. Я ещё не закончил.',
          author: UserDto(
            id: '1',
            name: 'Alexander',
            surname: 'Ivanov',
            nickname: 'alexander442',
            about: 'Программист 80 lvl',
            motto: 'Не всякий кодер - программист',
            avatarUrl: 'https://databytenitt.github.io/img/male.png',
          ),
        ),
      ],
    ),
  ];
}

