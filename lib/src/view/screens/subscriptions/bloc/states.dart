
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/user.dart' show UserInfoDto;

part 'states.freezed.dart';

@freezed
class SubscriptionsScreenState with _$SubscriptionsScreenState {
  const factory SubscriptionsScreenState.loading() =
    LoadingSubscriptionsScreenState;
  const factory SubscriptionsScreenState.loaded(List<UserInfoDto> users) =
    LoadedSubscriptionsScreenState;
  const factory SubscriptionsScreenState.empty() =
    EmptySubscriptionsScreenState;
}

