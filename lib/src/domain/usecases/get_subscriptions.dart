
import 'package:injectable/injectable.dart';

import '../models/user.dart';

abstract class GetSubscriptionsUseCase {
  List<UserInfoDto> call();
}

@Injectable(as: GetSubscriptionsUseCase)
class GetSubscriptionsUseCaseMock implements GetSubscriptionsUseCase {
  final users = <UserInfoDto>[
    UserInfoDto(
      id: '0',
      name: 'Bot',
      nickname: 'bot1',
    ),
    UserInfoDto(
      id: '0',
      name: 'Bot',
      surname: 'Ivanovich',
      nickname: 'bot2',
      avatarUrl: 'https://databytenitt.github.io/img/male.png',
    ),
    UserInfoDto(
      id: '0',
      name: 'Саша',
      surname: 'Петрова',
      nickname: 'sacsha_p',
    ),
    UserInfoDto(
      id: '3',
      name: 'Лиза',
      surname: 'Иванова',
      nickname: 'livanova88',
      about: 'Программист 88 lvl',
      motto: 'Не всякий кодер - программист',
      avatarUrl: 'https://databytenitt.github.io/img/female.png',
    ),
    UserInfoDto(
      id: '4',
      name: 'Константин',
      surname: 'Красильников',
      nickname: 'kk_over',
      about: 'Лыжник, у которого лыжи - едут!',
      motto: 'Будь собой!',
      avatarUrl: 'https://databytenitt.github.io/img/male.png',
    ),
    UserInfoDto(
      id: '1',
      name: 'Alexander',
      surname: 'Ivanov',
      nickname: 'alexander442',
      about: 'Программист 80 lvl',
      motto: 'Не всякий кодер - программист',
      avatarUrl: 'https://databytenitt.github.io/img/male.png',
    ),
  ];

  @override
  List<UserInfoDto> call() {
    return users;
  }
}

