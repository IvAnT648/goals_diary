import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/models.dart';
import '../../../domain/usecases.dart';
import 'cubit/states.dart';

export 'cubit/states.dart';

enum ProfileScreenType { own, other }

class ProfileScreenCubit extends Cubit<ProfileScreenState> {
  final ProfileUseCase _profileUseCase;
  final SubscribingUseCase _subscriptionUseCase;
  final GoalsUseCases _goalsUseCases;
  final ProfileScreenType type;
  UserDto? user;

  bool get _isOwnProfile =>
      type == ProfileScreenType.own ||
      (user != null && user!.id == _profileUseCase.ownId);

  ProfileScreenCubit(
    this._profileUseCase,
    this._subscriptionUseCase,
    this._goalsUseCases, {
    required this.type,
    this.user,
  }) : super(ProfileScreenState.loading()) {
    _init();
  }

  void _init() async {
    if (_isOwnProfile) {
      _profileUseCase.ownStream.listen((profile) {
        if (profile != null) {
          user = profile;
          return emit(ProfileScreenState.own(profile));
        }
        emit(ProfileScreenState.userNotFound());
      });
      return;
    }

    if (user == null) {
      emit(ProfileScreenState.userNotFound());
      return;
    }

    // listen goals changes
    _goalsUseCases
        .onlyPublicByAuthorId(user!.id)
        .listen((goals) {
          if (user != null) {
            user = user!.copyWith(goals: goals);
            emit(ProfileScreenState.other(user!));
          }
        });

    // listen subscriptions changes
    _subscriptionUseCase
        .isSubscribed(user!.id)
        .listen((value) {
          if (user != null) {
            user = user!.copyWith(isSubscribed: value);
            emit(ProfileScreenState.other(user!));
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
    if (user == null) {
      return SaveProfileResult.error();
    }

    return await _profileUseCase.saveOwn(
        user!.copyWith(
          name: name,
          surname: surname,
          motto: motto,
          about: about,
        )
    );
  }

  void subscribe(UserDto user) {
    _subscriptionUseCase.subscribeTo(user);
  }

  void unsubscribe(UserDto user) {
    _subscriptionUseCase.unsubscribeFrom(user);
  }
}
