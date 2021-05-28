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
class _$EditGoalStateTearOff {
  const _$EditGoalStateTearOff();

  InitialEditGoalState initial() {
    return const InitialEditGoalState();
  }
}

/// @nodoc
const $EditGoalState = _$EditGoalStateTearOff();

/// @nodoc
mixin _$EditGoalState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialEditGoalState value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEditGoalState value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditGoalStateCopyWith<$Res> {
  factory $EditGoalStateCopyWith(
          EditGoalState value, $Res Function(EditGoalState) then) =
      _$EditGoalStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditGoalStateCopyWithImpl<$Res>
    implements $EditGoalStateCopyWith<$Res> {
  _$EditGoalStateCopyWithImpl(this._value, this._then);

  final EditGoalState _value;
  // ignore: unused_field
  final $Res Function(EditGoalState) _then;
}

/// @nodoc
abstract class $InitialEditGoalStateCopyWith<$Res> {
  factory $InitialEditGoalStateCopyWith(InitialEditGoalState value,
          $Res Function(InitialEditGoalState) then) =
      _$InitialEditGoalStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialEditGoalStateCopyWithImpl<$Res>
    extends _$EditGoalStateCopyWithImpl<$Res>
    implements $InitialEditGoalStateCopyWith<$Res> {
  _$InitialEditGoalStateCopyWithImpl(
      InitialEditGoalState _value, $Res Function(InitialEditGoalState) _then)
      : super(_value, (v) => _then(v as InitialEditGoalState));

  @override
  InitialEditGoalState get _value => super._value as InitialEditGoalState;
}

/// @nodoc

class _$InitialEditGoalState implements InitialEditGoalState {
  const _$InitialEditGoalState();

  @override
  String toString() {
    return 'EditGoalState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialEditGoalState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialEditGoalState value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEditGoalState value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialEditGoalState implements EditGoalState {
  const factory InitialEditGoalState() = _$InitialEditGoalState;
}
