// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditGoalEventTearOff {
  const _$EditGoalEventTearOff();

  SubmitEditGoalEvent submit(GoalDto goal) {
    return SubmitEditGoalEvent(
      goal,
    );
  }
}

/// @nodoc
const $EditGoalEvent = _$EditGoalEventTearOff();

/// @nodoc
mixin _$EditGoalEvent {
  GoalDto get goal => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GoalDto goal) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GoalDto goal)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitEditGoalEvent value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitEditGoalEvent value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditGoalEventCopyWith<EditGoalEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditGoalEventCopyWith<$Res> {
  factory $EditGoalEventCopyWith(
          EditGoalEvent value, $Res Function(EditGoalEvent) then) =
      _$EditGoalEventCopyWithImpl<$Res>;
  $Res call({GoalDto goal});
}

/// @nodoc
class _$EditGoalEventCopyWithImpl<$Res>
    implements $EditGoalEventCopyWith<$Res> {
  _$EditGoalEventCopyWithImpl(this._value, this._then);

  final EditGoalEvent _value;
  // ignore: unused_field
  final $Res Function(EditGoalEvent) _then;

  @override
  $Res call({
    Object? goal = freezed,
  }) {
    return _then(_value.copyWith(
      goal: goal == freezed
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as GoalDto,
    ));
  }
}

/// @nodoc
abstract class $SubmitEditGoalEventCopyWith<$Res>
    implements $EditGoalEventCopyWith<$Res> {
  factory $SubmitEditGoalEventCopyWith(
          SubmitEditGoalEvent value, $Res Function(SubmitEditGoalEvent) then) =
      _$SubmitEditGoalEventCopyWithImpl<$Res>;
  @override
  $Res call({GoalDto goal});
}

/// @nodoc
class _$SubmitEditGoalEventCopyWithImpl<$Res>
    extends _$EditGoalEventCopyWithImpl<$Res>
    implements $SubmitEditGoalEventCopyWith<$Res> {
  _$SubmitEditGoalEventCopyWithImpl(
      SubmitEditGoalEvent _value, $Res Function(SubmitEditGoalEvent) _then)
      : super(_value, (v) => _then(v as SubmitEditGoalEvent));

  @override
  SubmitEditGoalEvent get _value => super._value as SubmitEditGoalEvent;

  @override
  $Res call({
    Object? goal = freezed,
  }) {
    return _then(SubmitEditGoalEvent(
      goal == freezed
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as GoalDto,
    ));
  }
}

/// @nodoc

class _$SubmitEditGoalEvent implements SubmitEditGoalEvent {
  const _$SubmitEditGoalEvent(this.goal);

  @override
  final GoalDto goal;

  @override
  String toString() {
    return 'EditGoalEvent.submit(goal: $goal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SubmitEditGoalEvent &&
            (identical(other.goal, goal) ||
                const DeepCollectionEquality().equals(other.goal, goal)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(goal);

  @JsonKey(ignore: true)
  @override
  $SubmitEditGoalEventCopyWith<SubmitEditGoalEvent> get copyWith =>
      _$SubmitEditGoalEventCopyWithImpl<SubmitEditGoalEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GoalDto goal) submit,
  }) {
    return submit(goal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GoalDto goal)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(goal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitEditGoalEvent value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitEditGoalEvent value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class SubmitEditGoalEvent implements EditGoalEvent {
  const factory SubmitEditGoalEvent(GoalDto goal) = _$SubmitEditGoalEvent;

  @override
  GoalDto get goal => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SubmitEditGoalEventCopyWith<SubmitEditGoalEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
