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

  InitialEditGoalState initial(GoalType type) {
    return InitialEditGoalState(
      type,
    );
  }

  TypeChangedEditGoalState typeChanged(GoalType type) {
    return TypeChangedEditGoalState(
      type,
    );
  }
}

/// @nodoc
const $EditGoalState = _$EditGoalStateTearOff();

/// @nodoc
mixin _$EditGoalState {
  GoalType get type => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GoalType type) initial,
    required TResult Function(GoalType type) typeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GoalType type)? initial,
    TResult Function(GoalType type)? typeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialEditGoalState value) initial,
    required TResult Function(TypeChangedEditGoalState value) typeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEditGoalState value)? initial,
    TResult Function(TypeChangedEditGoalState value)? typeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditGoalStateCopyWith<EditGoalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditGoalStateCopyWith<$Res> {
  factory $EditGoalStateCopyWith(
          EditGoalState value, $Res Function(EditGoalState) then) =
      _$EditGoalStateCopyWithImpl<$Res>;
  $Res call({GoalType type});
}

/// @nodoc
class _$EditGoalStateCopyWithImpl<$Res>
    implements $EditGoalStateCopyWith<$Res> {
  _$EditGoalStateCopyWithImpl(this._value, this._then);

  final EditGoalState _value;
  // ignore: unused_field
  final $Res Function(EditGoalState) _then;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GoalType,
    ));
  }
}

/// @nodoc
abstract class $InitialEditGoalStateCopyWith<$Res>
    implements $EditGoalStateCopyWith<$Res> {
  factory $InitialEditGoalStateCopyWith(InitialEditGoalState value,
          $Res Function(InitialEditGoalState) then) =
      _$InitialEditGoalStateCopyWithImpl<$Res>;
  @override
  $Res call({GoalType type});
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

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(InitialEditGoalState(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GoalType,
    ));
  }
}

/// @nodoc

class _$InitialEditGoalState implements InitialEditGoalState {
  const _$InitialEditGoalState(this.type);

  @override
  final GoalType type;

  @override
  String toString() {
    return 'EditGoalState.initial(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitialEditGoalState &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  $InitialEditGoalStateCopyWith<InitialEditGoalState> get copyWith =>
      _$InitialEditGoalStateCopyWithImpl<InitialEditGoalState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GoalType type) initial,
    required TResult Function(GoalType type) typeChanged,
  }) {
    return initial(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GoalType type)? initial,
    TResult Function(GoalType type)? typeChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialEditGoalState value) initial,
    required TResult Function(TypeChangedEditGoalState value) typeChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEditGoalState value)? initial,
    TResult Function(TypeChangedEditGoalState value)? typeChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialEditGoalState implements EditGoalState {
  const factory InitialEditGoalState(GoalType type) = _$InitialEditGoalState;

  @override
  GoalType get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InitialEditGoalStateCopyWith<InitialEditGoalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeChangedEditGoalStateCopyWith<$Res>
    implements $EditGoalStateCopyWith<$Res> {
  factory $TypeChangedEditGoalStateCopyWith(TypeChangedEditGoalState value,
          $Res Function(TypeChangedEditGoalState) then) =
      _$TypeChangedEditGoalStateCopyWithImpl<$Res>;
  @override
  $Res call({GoalType type});
}

/// @nodoc
class _$TypeChangedEditGoalStateCopyWithImpl<$Res>
    extends _$EditGoalStateCopyWithImpl<$Res>
    implements $TypeChangedEditGoalStateCopyWith<$Res> {
  _$TypeChangedEditGoalStateCopyWithImpl(TypeChangedEditGoalState _value,
      $Res Function(TypeChangedEditGoalState) _then)
      : super(_value, (v) => _then(v as TypeChangedEditGoalState));

  @override
  TypeChangedEditGoalState get _value =>
      super._value as TypeChangedEditGoalState;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(TypeChangedEditGoalState(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GoalType,
    ));
  }
}

/// @nodoc

class _$TypeChangedEditGoalState implements TypeChangedEditGoalState {
  const _$TypeChangedEditGoalState(this.type);

  @override
  final GoalType type;

  @override
  String toString() {
    return 'EditGoalState.typeChanged(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TypeChangedEditGoalState &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  $TypeChangedEditGoalStateCopyWith<TypeChangedEditGoalState> get copyWith =>
      _$TypeChangedEditGoalStateCopyWithImpl<TypeChangedEditGoalState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GoalType type) initial,
    required TResult Function(GoalType type) typeChanged,
  }) {
    return typeChanged(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GoalType type)? initial,
    TResult Function(GoalType type)? typeChanged,
    required TResult orElse(),
  }) {
    if (typeChanged != null) {
      return typeChanged(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialEditGoalState value) initial,
    required TResult Function(TypeChangedEditGoalState value) typeChanged,
  }) {
    return typeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEditGoalState value)? initial,
    TResult Function(TypeChangedEditGoalState value)? typeChanged,
    required TResult orElse(),
  }) {
    if (typeChanged != null) {
      return typeChanged(this);
    }
    return orElse();
  }
}

abstract class TypeChangedEditGoalState implements EditGoalState {
  const factory TypeChangedEditGoalState(GoalType type) =
      _$TypeChangedEditGoalState;

  @override
  GoalType get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TypeChangedEditGoalStateCopyWith<TypeChangedEditGoalState> get copyWith =>
      throw _privateConstructorUsedError;
}
