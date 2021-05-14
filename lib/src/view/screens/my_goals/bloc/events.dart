
import 'package:freezed_annotation/freezed_annotation.dart';

part 'events.freezed.dart';

@freezed
class MyGoalsScreenEvent with _$MyGoalsScreenEvent {
  const factory MyGoalsScreenEvent.init() = InitMyGoalsScreenEvent;
}

