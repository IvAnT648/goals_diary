import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/models.dart';
import '../../../domain/usecases.dart';
import 'cubit/states.dart';

export 'cubit/states.dart';

enum ProfileScreenType { own, other }

class ProfileScreenCubit extends Cubit<ProfileScreenState> {
  final ProfileUseCase _profile;
  final SubscribingUseCase _subscription;
  final ProfileScreenType type;
  final UserDto? user;

  ProfileScreenCubit(
    this._profile,
    this._subscription, {
    required this.type,
    this.user,
  }) : super(ProfileScreenState.loading()) {
    _init();
  }

  void _init() async {
    if (type == ProfileScreenType.own) {
      _profile.ownStream.listen((profile) {
        if (profile != null) {
          emit(ProfileScreenState.own(profile));
        }
      });
      return;
    }

    if (user == null) {
      emit(ProfileScreenState.userNotFound());
      return;
    }

    _subscription.own.listen((e) {
      // Check whether the user in subscriptions
      final isSubscribed =
          e.subscriptions.indexWhere((sub) => sub == user) != -1;

      if (isSubscribed) {
        emit(ProfileScreenState.subscribed(user!));
      } else {
        emit(ProfileScreenState.unsubscribed(user!));
      }
    });
  }

  Future<SaveProfileResult> save({
    required String name,
    required String surname,
    required String motto,
    required String about,
  }) async {
    if (name.isEmpty) {
      return SaveProfileResult.emptyName();
    }

    await _profile.saveOwn(UserDto(
      id: '',
      name: name,
      surname: surname,
      motto: motto,
      about: about,
    ));

    return SaveProfileResult.success();
  }

  void subscribe(UserDto user) {
    _subscription.subscribeTo(user);
  }

  void unsubscribe(UserDto user) {
    _subscription.unsubscribeFrom(user);
  }
}
