
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models.dart';

part 'states.freezed.dart';

@freezed
class ProfileScreenState with _$ProfileScreenState {
  const factory ProfileScreenState.own(
    UserDto info,
    bool withReturnableAppBar,
  ) = OwnProfileScreenState;

  const factory ProfileScreenState.subscribed(UserDto info) =
    SubscribedProfileScreenState;

  const factory ProfileScreenState.unsubscribed(UserDto info) =
    UnsubscribedProfileScreenState;

  const factory ProfileScreenState.loading() = LoadingProfileScreenState;

  const factory ProfileScreenState.userNotFound() =
    UserNotFoundProfileScreenState;
}
