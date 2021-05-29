
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/user.dart' show UserDto;

part 'states.freezed.dart';

@freezed
class SubscriptionsScreenState with _$SubscriptionsScreenState {
  const factory SubscriptionsScreenState.loading() =
    LoadingSubscriptionsScreenState;
  const factory SubscriptionsScreenState.loaded(List<UserDto> users) =
    LoadedSubscriptionsScreenState;
  const factory SubscriptionsScreenState.empty() =
    EmptySubscriptionsScreenState;
}

