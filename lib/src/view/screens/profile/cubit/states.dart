
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models.dart';

part 'states.freezed.dart';

@freezed
class ProfileScreenState with _$ProfileScreenState {
  const factory ProfileScreenState.own(UserDto info) =
    OwnProfileScreenState;

  const factory ProfileScreenState.subscribed(UserDto info) =
    SubscribedProfileScreenState;

  const factory ProfileScreenState.unsubscribed(UserDto info) =
    UnsubscribedProfileScreenState;
}
