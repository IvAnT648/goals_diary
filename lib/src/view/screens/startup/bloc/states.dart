import 'package:freezed_annotation/freezed_annotation.dart';

part 'states.freezed.dart';

@freezed
class StartupScreenState with _$StartupScreenState {
  const factory StartupScreenState.initial() = InitialStartupScreenState;
  const factory StartupScreenState.authorized() = AuthorizedStartupScreenState;
  const factory StartupScreenState.notAuthorized() =
      NotAuthorizedStartupScreenState;
}
