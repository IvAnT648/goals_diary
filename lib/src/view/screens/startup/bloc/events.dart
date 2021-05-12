
import 'package:freezed_annotation/freezed_annotation.dart';

part 'events.freezed.dart';

@freezed
class StartupScreenEvent with _$StartupScreenEvent {
  const factory StartupScreenEvent.init() = InitStartupScreenEvent;
}
