// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MyGoalsScreenStateTearOff {
  const _$MyGoalsScreenStateTearOff();

  LoadingMyGoalsScreenState loading() {
    return const LoadingMyGoalsScreenState();
  }

  EmptyMyGoalsScreenState empty() {
    return const EmptyMyGoalsScreenState();
  }

  SuccessMyGoalsScreenState success(List<GoalDto> goals) {
    return SuccessMyGoalsScreenState(
      goals,
    );
  }
}

/// @nodoc
const $MyGoalsScreenState = _$MyGoalsScreenStateTearOff();

/// @nodoc
mixin _$MyGoalsScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<GoalDto> goals) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<GoalDto> goals)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingMyGoalsScreenState value) loading,
    required TResult Function(EmptyMyGoalsScreenState value) empty,
    required TResult Function(SuccessMyGoalsScreenState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMyGoalsScreenState value)? loading,
    TResult Function(EmptyMyGoalsScreenState value)? empty,
    TResult Function(SuccessMyGoalsScreenState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyGoalsScreenStateCopyWith<$Res> {
  factory $MyGoalsScreenStateCopyWith(
          MyGoalsScreenState value, $Res Function(MyGoalsScreenState) then) =
      _$MyGoalsScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MyGoalsScreenStateCopyWithImpl<$Res>
    implements $MyGoalsScreenStateCopyWith<$Res> {
  _$MyGoalsScreenStateCopyWithImpl(this._value, this._then);

  final MyGoalsScreenState _value;
  // ignore: unused_field
  final $Res Function(MyGoalsScreenState) _then;
}

/// @nodoc
abstract class $LoadingMyGoalsScreenStateCopyWith<$Res> {
  factory $LoadingMyGoalsScreenStateCopyWith(LoadingMyGoalsScreenState value,
          $Res Function(LoadingMyGoalsScreenState) then) =
      _$LoadingMyGoalsScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingMyGoalsScreenStateCopyWithImpl<$Res>
    extends _$MyGoalsScreenStateCopyWithImpl<$Res>
    implements $LoadingMyGoalsScreenStateCopyWith<$Res> {
  _$LoadingMyGoalsScreenStateCopyWithImpl(LoadingMyGoalsScreenState _value,
      $Res Function(LoadingMyGoalsScreenState) _then)
      : super(_value, (v) => _then(v as LoadingMyGoalsScreenState));

  @override
  LoadingMyGoalsScreenState get _value =>
      super._value as LoadingMyGoalsScreenState;
}

/// @nodoc

class _$LoadingMyGoalsScreenState implements LoadingMyGoalsScreenState {
  const _$LoadingMyGoalsScreenState();

  @override
  String toString() {
    return 'MyGoalsScreenState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingMyGoalsScreenState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<GoalDto> goals) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<GoalDto> goals)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingMyGoalsScreenState value) loading,
    required TResult Function(EmptyMyGoalsScreenState value) empty,
    required TResult Function(SuccessMyGoalsScreenState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMyGoalsScreenState value)? loading,
    TResult Function(EmptyMyGoalsScreenState value)? empty,
    TResult Function(SuccessMyGoalsScreenState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingMyGoalsScreenState implements MyGoalsScreenState {
  const factory LoadingMyGoalsScreenState() = _$LoadingMyGoalsScreenState;
}

/// @nodoc
abstract class $EmptyMyGoalsScreenStateCopyWith<$Res> {
  factory $EmptyMyGoalsScreenStateCopyWith(EmptyMyGoalsScreenState value,
          $Res Function(EmptyMyGoalsScreenState) then) =
      _$EmptyMyGoalsScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyMyGoalsScreenStateCopyWithImpl<$Res>
    extends _$MyGoalsScreenStateCopyWithImpl<$Res>
    implements $EmptyMyGoalsScreenStateCopyWith<$Res> {
  _$EmptyMyGoalsScreenStateCopyWithImpl(EmptyMyGoalsScreenState _value,
      $Res Function(EmptyMyGoalsScreenState) _then)
      : super(_value, (v) => _then(v as EmptyMyGoalsScreenState));

  @override
  EmptyMyGoalsScreenState get _value => super._value as EmptyMyGoalsScreenState;
}

/// @nodoc

class _$EmptyMyGoalsScreenState implements EmptyMyGoalsScreenState {
  const _$EmptyMyGoalsScreenState();

  @override
  String toString() {
    return 'MyGoalsScreenState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyMyGoalsScreenState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<GoalDto> goals) success,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<GoalDto> goals)? success,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingMyGoalsScreenState value) loading,
    required TResult Function(EmptyMyGoalsScreenState value) empty,
    required TResult Function(SuccessMyGoalsScreenState value) success,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMyGoalsScreenState value)? loading,
    TResult Function(EmptyMyGoalsScreenState value)? empty,
    TResult Function(SuccessMyGoalsScreenState value)? success,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyMyGoalsScreenState implements MyGoalsScreenState {
  const factory EmptyMyGoalsScreenState() = _$EmptyMyGoalsScreenState;
}

/// @nodoc
abstract class $SuccessMyGoalsScreenStateCopyWith<$Res> {
  factory $SuccessMyGoalsScreenStateCopyWith(SuccessMyGoalsScreenState value,
          $Res Function(SuccessMyGoalsScreenState) then) =
      _$SuccessMyGoalsScreenStateCopyWithImpl<$Res>;
  $Res call({List<GoalDto> goals});
}

/// @nodoc
class _$SuccessMyGoalsScreenStateCopyWithImpl<$Res>
    extends _$MyGoalsScreenStateCopyWithImpl<$Res>
    implements $SuccessMyGoalsScreenStateCopyWith<$Res> {
  _$SuccessMyGoalsScreenStateCopyWithImpl(SuccessMyGoalsScreenState _value,
      $Res Function(SuccessMyGoalsScreenState) _then)
      : super(_value, (v) => _then(v as SuccessMyGoalsScreenState));

  @override
  SuccessMyGoalsScreenState get _value =>
      super._value as SuccessMyGoalsScreenState;

  @override
  $Res call({
    Object? goals = freezed,
  }) {
    return _then(SuccessMyGoalsScreenState(
      goals == freezed
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as List<GoalDto>,
    ));
  }
}

/// @nodoc

class _$SuccessMyGoalsScreenState implements SuccessMyGoalsScreenState {
  const _$SuccessMyGoalsScreenState(this.goals);

  @override
  final List<GoalDto> goals;

  @override
  String toString() {
    return 'MyGoalsScreenState.success(goals: $goals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SuccessMyGoalsScreenState &&
            (identical(other.goals, goals) ||
                const DeepCollectionEquality().equals(other.goals, goals)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(goals);

  @JsonKey(ignore: true)
  @override
  $SuccessMyGoalsScreenStateCopyWith<SuccessMyGoalsScreenState> get copyWith =>
      _$SuccessMyGoalsScreenStateCopyWithImpl<SuccessMyGoalsScreenState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<GoalDto> goals) success,
  }) {
    return success(goals);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<GoalDto> goals)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(goals);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingMyGoalsScreenState value) loading,
    required TResult Function(EmptyMyGoalsScreenState value) empty,
    required TResult Function(SuccessMyGoalsScreenState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMyGoalsScreenState value)? loading,
    TResult Function(EmptyMyGoalsScreenState value)? empty,
    TResult Function(SuccessMyGoalsScreenState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessMyGoalsScreenState implements MyGoalsScreenState {
  const factory SuccessMyGoalsScreenState(List<GoalDto> goals) =
      _$SuccessMyGoalsScreenState;

  List<GoalDto> get goals => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuccessMyGoalsScreenStateCopyWith<SuccessMyGoalsScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
