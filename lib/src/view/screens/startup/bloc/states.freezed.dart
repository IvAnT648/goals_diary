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
class _$StartupScreenStateTearOff {
  const _$StartupScreenStateTearOff();

  InitialStartupScreenState initial() {
    return const InitialStartupScreenState();
  }

  AuthorizedStartupScreenState authorized() {
    return const AuthorizedStartupScreenState();
  }

  NotAuthorizedStartupScreenState notAuthorized() {
    return const NotAuthorizedStartupScreenState();
  }
}

/// @nodoc
const $StartupScreenState = _$StartupScreenStateTearOff();

/// @nodoc
mixin _$StartupScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authorized,
    required TResult Function() notAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authorized,
    TResult Function()? notAuthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStartupScreenState value) initial,
    required TResult Function(AuthorizedStartupScreenState value) authorized,
    required TResult Function(NotAuthorizedStartupScreenState value)
        notAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStartupScreenState value)? initial,
    TResult Function(AuthorizedStartupScreenState value)? authorized,
    TResult Function(NotAuthorizedStartupScreenState value)? notAuthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartupScreenStateCopyWith<$Res> {
  factory $StartupScreenStateCopyWith(
          StartupScreenState value, $Res Function(StartupScreenState) then) =
      _$StartupScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartupScreenStateCopyWithImpl<$Res>
    implements $StartupScreenStateCopyWith<$Res> {
  _$StartupScreenStateCopyWithImpl(this._value, this._then);

  final StartupScreenState _value;
  // ignore: unused_field
  final $Res Function(StartupScreenState) _then;
}

/// @nodoc
abstract class $InitialStartupScreenStateCopyWith<$Res> {
  factory $InitialStartupScreenStateCopyWith(InitialStartupScreenState value,
          $Res Function(InitialStartupScreenState) then) =
      _$InitialStartupScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialStartupScreenStateCopyWithImpl<$Res>
    extends _$StartupScreenStateCopyWithImpl<$Res>
    implements $InitialStartupScreenStateCopyWith<$Res> {
  _$InitialStartupScreenStateCopyWithImpl(InitialStartupScreenState _value,
      $Res Function(InitialStartupScreenState) _then)
      : super(_value, (v) => _then(v as InitialStartupScreenState));

  @override
  InitialStartupScreenState get _value =>
      super._value as InitialStartupScreenState;
}

/// @nodoc

class _$InitialStartupScreenState implements InitialStartupScreenState {
  const _$InitialStartupScreenState();

  @override
  String toString() {
    return 'StartupScreenState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialStartupScreenState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authorized,
    required TResult Function() notAuthorized,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authorized,
    TResult Function()? notAuthorized,
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
    required TResult Function(InitialStartupScreenState value) initial,
    required TResult Function(AuthorizedStartupScreenState value) authorized,
    required TResult Function(NotAuthorizedStartupScreenState value)
        notAuthorized,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStartupScreenState value)? initial,
    TResult Function(AuthorizedStartupScreenState value)? authorized,
    TResult Function(NotAuthorizedStartupScreenState value)? notAuthorized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialStartupScreenState implements StartupScreenState {
  const factory InitialStartupScreenState() = _$InitialStartupScreenState;
}

/// @nodoc
abstract class $AuthorizedStartupScreenStateCopyWith<$Res> {
  factory $AuthorizedStartupScreenStateCopyWith(
          AuthorizedStartupScreenState value,
          $Res Function(AuthorizedStartupScreenState) then) =
      _$AuthorizedStartupScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthorizedStartupScreenStateCopyWithImpl<$Res>
    extends _$StartupScreenStateCopyWithImpl<$Res>
    implements $AuthorizedStartupScreenStateCopyWith<$Res> {
  _$AuthorizedStartupScreenStateCopyWithImpl(
      AuthorizedStartupScreenState _value,
      $Res Function(AuthorizedStartupScreenState) _then)
      : super(_value, (v) => _then(v as AuthorizedStartupScreenState));

  @override
  AuthorizedStartupScreenState get _value =>
      super._value as AuthorizedStartupScreenState;
}

/// @nodoc

class _$AuthorizedStartupScreenState implements AuthorizedStartupScreenState {
  const _$AuthorizedStartupScreenState();

  @override
  String toString() {
    return 'StartupScreenState.authorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthorizedStartupScreenState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authorized,
    required TResult Function() notAuthorized,
  }) {
    return authorized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authorized,
    TResult Function()? notAuthorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStartupScreenState value) initial,
    required TResult Function(AuthorizedStartupScreenState value) authorized,
    required TResult Function(NotAuthorizedStartupScreenState value)
        notAuthorized,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStartupScreenState value)? initial,
    TResult Function(AuthorizedStartupScreenState value)? authorized,
    TResult Function(NotAuthorizedStartupScreenState value)? notAuthorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class AuthorizedStartupScreenState implements StartupScreenState {
  const factory AuthorizedStartupScreenState() = _$AuthorizedStartupScreenState;
}

/// @nodoc
abstract class $NotAuthorizedStartupScreenStateCopyWith<$Res> {
  factory $NotAuthorizedStartupScreenStateCopyWith(
          NotAuthorizedStartupScreenState value,
          $Res Function(NotAuthorizedStartupScreenState) then) =
      _$NotAuthorizedStartupScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotAuthorizedStartupScreenStateCopyWithImpl<$Res>
    extends _$StartupScreenStateCopyWithImpl<$Res>
    implements $NotAuthorizedStartupScreenStateCopyWith<$Res> {
  _$NotAuthorizedStartupScreenStateCopyWithImpl(
      NotAuthorizedStartupScreenState _value,
      $Res Function(NotAuthorizedStartupScreenState) _then)
      : super(_value, (v) => _then(v as NotAuthorizedStartupScreenState));

  @override
  NotAuthorizedStartupScreenState get _value =>
      super._value as NotAuthorizedStartupScreenState;
}

/// @nodoc

class _$NotAuthorizedStartupScreenState
    implements NotAuthorizedStartupScreenState {
  const _$NotAuthorizedStartupScreenState();

  @override
  String toString() {
    return 'StartupScreenState.notAuthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotAuthorizedStartupScreenState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authorized,
    required TResult Function() notAuthorized,
  }) {
    return notAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authorized,
    TResult Function()? notAuthorized,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStartupScreenState value) initial,
    required TResult Function(AuthorizedStartupScreenState value) authorized,
    required TResult Function(NotAuthorizedStartupScreenState value)
        notAuthorized,
  }) {
    return notAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStartupScreenState value)? initial,
    TResult Function(AuthorizedStartupScreenState value)? authorized,
    TResult Function(NotAuthorizedStartupScreenState value)? notAuthorized,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized(this);
    }
    return orElse();
  }
}

abstract class NotAuthorizedStartupScreenState implements StartupScreenState {
  const factory NotAuthorizedStartupScreenState() =
      _$NotAuthorizedStartupScreenState;
}
