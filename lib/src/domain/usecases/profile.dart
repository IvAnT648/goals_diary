
import 'package:goals_diary/src/domain/models.dart';

final UserInfoDto _sampleUserInfo = UserInfoDto(
  id: 1,
  name: 'Alexander',
  surname: 'Ivanov',
  nickname: 'alexander442',
  info: 'Программист 80 lvl',
  motto: 'Не всякий кодер - программист',
  avatarUrl: 'https://databytenitt.github.io/img/male.png',
);

final UserInfoDto _sampleUserInfoWithoutAvatar = UserInfoDto(
  id: 2,
  name: 'Вероника',
  surname: 'Аксенова',
  nickname: 'veronaksenova',
  info: 'Дизайнер, 24 года',
  motto: 'Если что-то делать - что-то будет.',
);

abstract class GetOwnProfileInfoUseCase {
  UserInfoDto call();
}

class GetOwnProfileInfoUseCaseImpl implements GetOwnProfileInfoUseCase {
  @override
  UserInfoDto call() {
    return _sampleUserInfo;
  }
}

