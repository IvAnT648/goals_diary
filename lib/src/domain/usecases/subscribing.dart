
import 'package:goals_diary/src/data/repository/profile.dart';
import 'package:injectable/injectable.dart';

import '../../data/repository/subscriptions.dart';
import '../models.dart';

abstract class SubscribingUseCase {
  void subscribeTo(UserDto user);
  void unsubscribeFrom(UserDto user);
  Stream<SubscriptionsDto> get own;
  Stream<bool?> isSubscribed(String uid);
}

@Injectable(as: SubscribingUseCase)
class SubscribingUseCaseImpl implements SubscribingUseCase {
  final SubscriptionsRepository _repository;
  final ProfileRepository _profileRepository;

  SubscribingUseCaseImpl(this._repository, this._profileRepository);

  @override
  void subscribeTo(UserDto user) async {
    await _repository.subscribeTo(user.id);
  }

  @override
  void unsubscribeFrom(UserDto user) async {
    await _repository.unsubscribeFrom(user.id);
  }

  @override
  Stream<SubscriptionsDto> get own async* {
    await for (final subIds in _repository.own) {
      final subscriptions = <UserDto>[];
      for (var subId in subIds) {
        final user = await _profileRepository.getSingle(
          id: subId,
          publicFilter: true,
        );
        if (user != null) {
          subscriptions.add(user);
        }
      }
      yield SubscriptionsDto(subscriptions: subscriptions);
    }
  }

  @override
  Stream<bool?> isSubscribed(String uid) async* {
    yield* _repository
        .isSubscribedStream(uid);
  }
}

