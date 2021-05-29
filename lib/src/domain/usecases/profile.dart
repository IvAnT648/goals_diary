
import 'package:injectable/injectable.dart';

import '../models.dart';

abstract class GetOwnProfileInfoUseCase {
  UserDto call();
}

@Injectable(as: GetOwnProfileInfoUseCase)
class GetOwnProfileInfoUseCaseImpl implements GetOwnProfileInfoUseCase {
  @override
  UserDto call() {
    return _sampleUserInfo;
  }
}

final UserDto _sampleUserInfo = UserDto(
  id: '1',
  name: 'Alexander',
  surname: 'Ivanov',
  nickname: 'alexander442',
  about: 'Программист 80 lvl',
  motto: 'Не всякий кодер - программист',
  avatarUrl: 'https://databytenitt.github.io/img/male.png',
);

final UserDto _sampleUserInfoWithoutAvatar = UserDto(
  id: '2',
  name: 'Вероника',
  surname: 'Аксенова',
  nickname: 'veronaksenova',
  about: 'Дизайнер, 24 года',
  motto: 'Если что-то делать - что-то будет.',
);
