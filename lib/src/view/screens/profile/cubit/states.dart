
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models.dart';

part 'states.freezed.dart';

@freezed
class ProfileScreenState with _$ProfileScreenState {
  const factory ProfileScreenState.own(UserDto info) = OwnProfileScreenState;

  const factory ProfileScreenState.other(UserDto user) =
    OtherProfileScreenState;

  const factory ProfileScreenState.loading() = LoadingProfileScreenState;

  const factory ProfileScreenState.userNotFound() =
    UserNotFoundProfileScreenState;
}
