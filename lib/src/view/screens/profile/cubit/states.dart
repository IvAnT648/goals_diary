
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models.dart';

part 'states.freezed.dart';

@freezed
class ProfileScreenState with _$ProfileScreenState {
  const factory ProfileScreenState.own(UserInfoDto info) =
    OwnProfileScreenState;

  const factory ProfileScreenState.subscribed(UserInfoDto info) =
    SubscribedProfileScreenState;

  const factory ProfileScreenState.unsubscribed(UserInfoDto info) =
    UnsubscribedProfileScreenState;
}
