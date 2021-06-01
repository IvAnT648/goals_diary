
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models.dart';

part 'states.freezed.dart';

@freezed
class AppDrawerState with _$AppDrawerState {
  const factory AppDrawerState.unauthorized() = UnauthorizedAppDrawerState;
  const factory AppDrawerState.authorized(UserDto info) =
    AuthorizedAppDrawerState;
  const factory AppDrawerState.loading() = LoadingAppDrawerState;
}
