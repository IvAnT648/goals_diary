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
class _$AppDrawerStateTearOff {
  const _$AppDrawerStateTearOff();

  UnauthorizedAppDrawerState unauthorized() {
    return const UnauthorizedAppDrawerState();
  }

  AuthorizedAppDrawerState authorized(UserDto info) {
    return AuthorizedAppDrawerState(
      info,
    );
  }

  LoadingAppDrawerState loading() {
    return const LoadingAppDrawerState();
  }
}

/// @nodoc
const $AppDrawerState = _$AppDrawerStateTearOff();

/// @nodoc
mixin _$AppDrawerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function(UserDto info) authorized,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function(UserDto info)? authorized,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedAppDrawerState value) unauthorized,
    required TResult Function(AuthorizedAppDrawerState value) authorized,
    required TResult Function(LoadingAppDrawerState value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedAppDrawerState value)? unauthorized,
    TResult Function(AuthorizedAppDrawerState value)? authorized,
    TResult Function(LoadingAppDrawerState value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppDrawerStateCopyWith<$Res> {
  factory $AppDrawerStateCopyWith(
          AppDrawerState value, $Res Function(AppDrawerState) then) =
      _$AppDrawerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppDrawerStateCopyWithImpl<$Res>
    implements $AppDrawerStateCopyWith<$Res> {
  _$AppDrawerStateCopyWithImpl(this._value, this._then);

  final AppDrawerState _value;
  // ignore: unused_field
  final $Res Function(AppDrawerState) _then;
}

/// @nodoc
abstract class $UnauthorizedAppDrawerStateCopyWith<$Res> {
  factory $UnauthorizedAppDrawerStateCopyWith(UnauthorizedAppDrawerState value,
          $Res Function(UnauthorizedAppDrawerState) then) =
      _$UnauthorizedAppDrawerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnauthorizedAppDrawerStateCopyWithImpl<$Res>
    extends _$AppDrawerStateCopyWithImpl<$Res>
    implements $UnauthorizedAppDrawerStateCopyWith<$Res> {
  _$UnauthorizedAppDrawerStateCopyWithImpl(UnauthorizedAppDrawerState _value,
      $Res Function(UnauthorizedAppDrawerState) _then)
      : super(_value, (v) => _then(v as UnauthorizedAppDrawerState));

  @override
  UnauthorizedAppDrawerState get _value =>
      super._value as UnauthorizedAppDrawerState;
}

/// @nodoc

class _$UnauthorizedAppDrawerState implements UnauthorizedAppDrawerState {
  const _$UnauthorizedAppDrawerState();

  @override
  String toString() {
    return 'AppDrawerState.unauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnauthorizedAppDrawerState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function(UserDto info) authorized,
    required TResult Function() loading,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function(UserDto info)? authorized,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedAppDrawerState value) unauthorized,
    required TResult Function(AuthorizedAppDrawerState value) authorized,
    required TResult Function(LoadingAppDrawerState value) loading,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedAppDrawerState value)? unauthorized,
    TResult Function(AuthorizedAppDrawerState value)? authorized,
    TResult Function(LoadingAppDrawerState value)? loading,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class UnauthorizedAppDrawerState implements AppDrawerState {
  const factory UnauthorizedAppDrawerState() = _$UnauthorizedAppDrawerState;
}

/// @nodoc
abstract class $AuthorizedAppDrawerStateCopyWith<$Res> {
  factory $AuthorizedAppDrawerStateCopyWith(AuthorizedAppDrawerState value,
          $Res Function(AuthorizedAppDrawerState) then) =
      _$AuthorizedAppDrawerStateCopyWithImpl<$Res>;
  $Res call({UserDto info});
}

/// @nodoc
class _$AuthorizedAppDrawerStateCopyWithImpl<$Res>
    extends _$AppDrawerStateCopyWithImpl<$Res>
    implements $AuthorizedAppDrawerStateCopyWith<$Res> {
  _$AuthorizedAppDrawerStateCopyWithImpl(AuthorizedAppDrawerState _value,
      $Res Function(AuthorizedAppDrawerState) _then)
      : super(_value, (v) => _then(v as AuthorizedAppDrawerState));

  @override
  AuthorizedAppDrawerState get _value =>
      super._value as AuthorizedAppDrawerState;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(AuthorizedAppDrawerState(
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as UserDto,
    ));
  }
}

/// @nodoc

class _$AuthorizedAppDrawerState implements AuthorizedAppDrawerState {
  const _$AuthorizedAppDrawerState(this.info);

  @override
  final UserDto info;

  @override
  String toString() {
    return 'AppDrawerState.authorized(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthorizedAppDrawerState &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  $AuthorizedAppDrawerStateCopyWith<AuthorizedAppDrawerState> get copyWith =>
      _$AuthorizedAppDrawerStateCopyWithImpl<AuthorizedAppDrawerState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function(UserDto info) authorized,
    required TResult Function() loading,
  }) {
    return authorized(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function(UserDto info)? authorized,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedAppDrawerState value) unauthorized,
    required TResult Function(AuthorizedAppDrawerState value) authorized,
    required TResult Function(LoadingAppDrawerState value) loading,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedAppDrawerState value)? unauthorized,
    TResult Function(AuthorizedAppDrawerState value)? authorized,
    TResult Function(LoadingAppDrawerState value)? loading,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class AuthorizedAppDrawerState implements AppDrawerState {
  const factory AuthorizedAppDrawerState(UserDto info) =
      _$AuthorizedAppDrawerState;

  UserDto get info => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorizedAppDrawerStateCopyWith<AuthorizedAppDrawerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingAppDrawerStateCopyWith<$Res> {
  factory $LoadingAppDrawerStateCopyWith(LoadingAppDrawerState value,
          $Res Function(LoadingAppDrawerState) then) =
      _$LoadingAppDrawerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingAppDrawerStateCopyWithImpl<$Res>
    extends _$AppDrawerStateCopyWithImpl<$Res>
    implements $LoadingAppDrawerStateCopyWith<$Res> {
  _$LoadingAppDrawerStateCopyWithImpl(
      LoadingAppDrawerState _value, $Res Function(LoadingAppDrawerState) _then)
      : super(_value, (v) => _then(v as LoadingAppDrawerState));

  @override
  LoadingAppDrawerState get _value => super._value as LoadingAppDrawerState;
}

/// @nodoc

class _$LoadingAppDrawerState implements LoadingAppDrawerState {
  const _$LoadingAppDrawerState();

  @override
  String toString() {
    return 'AppDrawerState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingAppDrawerState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function(UserDto info) authorized,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function(UserDto info)? authorized,
    TResult Function()? loading,
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
    required TResult Function(UnauthorizedAppDrawerState value) unauthorized,
    required TResult Function(AuthorizedAppDrawerState value) authorized,
    required TResult Function(LoadingAppDrawerState value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedAppDrawerState value)? unauthorized,
    TResult Function(AuthorizedAppDrawerState value)? authorized,
    TResult Function(LoadingAppDrawerState value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingAppDrawerState implements AppDrawerState {
  const factory LoadingAppDrawerState() = _$LoadingAppDrawerState;
}
