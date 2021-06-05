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
class _$ProfileScreenStateTearOff {
  const _$ProfileScreenStateTearOff();

  OwnProfileScreenState own(UserDto info) {
    return OwnProfileScreenState(
      info,
    );
  }

  OtherProfileScreenState other(UserDto user) {
    return OtherProfileScreenState(
      user,
    );
  }

  LoadingProfileScreenState loading() {
    return const LoadingProfileScreenState();
  }

  UserNotFoundProfileScreenState userNotFound() {
    return const UserNotFoundProfileScreenState();
  }
}

/// @nodoc
const $ProfileScreenState = _$ProfileScreenStateTearOff();

/// @nodoc
mixin _$ProfileScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserDto info) own,
    required TResult Function(UserDto user) other,
    required TResult Function() loading,
    required TResult Function() userNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserDto info)? own,
    TResult Function(UserDto user)? other,
    TResult Function()? loading,
    TResult Function()? userNotFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OwnProfileScreenState value) own,
    required TResult Function(OtherProfileScreenState value) other,
    required TResult Function(LoadingProfileScreenState value) loading,
    required TResult Function(UserNotFoundProfileScreenState value)
        userNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OwnProfileScreenState value)? own,
    TResult Function(OtherProfileScreenState value)? other,
    TResult Function(LoadingProfileScreenState value)? loading,
    TResult Function(UserNotFoundProfileScreenState value)? userNotFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileScreenStateCopyWith<$Res> {
  factory $ProfileScreenStateCopyWith(
          ProfileScreenState value, $Res Function(ProfileScreenState) then) =
      _$ProfileScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileScreenStateCopyWithImpl<$Res>
    implements $ProfileScreenStateCopyWith<$Res> {
  _$ProfileScreenStateCopyWithImpl(this._value, this._then);

  final ProfileScreenState _value;
  // ignore: unused_field
  final $Res Function(ProfileScreenState) _then;
}

/// @nodoc
abstract class $OwnProfileScreenStateCopyWith<$Res> {
  factory $OwnProfileScreenStateCopyWith(OwnProfileScreenState value,
          $Res Function(OwnProfileScreenState) then) =
      _$OwnProfileScreenStateCopyWithImpl<$Res>;
  $Res call({UserDto info});
}

/// @nodoc
class _$OwnProfileScreenStateCopyWithImpl<$Res>
    extends _$ProfileScreenStateCopyWithImpl<$Res>
    implements $OwnProfileScreenStateCopyWith<$Res> {
  _$OwnProfileScreenStateCopyWithImpl(
      OwnProfileScreenState _value, $Res Function(OwnProfileScreenState) _then)
      : super(_value, (v) => _then(v as OwnProfileScreenState));

  @override
  OwnProfileScreenState get _value => super._value as OwnProfileScreenState;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(OwnProfileScreenState(
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as UserDto,
    ));
  }
}

/// @nodoc

class _$OwnProfileScreenState implements OwnProfileScreenState {
  const _$OwnProfileScreenState(this.info);

  @override
  final UserDto info;

  @override
  String toString() {
    return 'ProfileScreenState.own(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OwnProfileScreenState &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  $OwnProfileScreenStateCopyWith<OwnProfileScreenState> get copyWith =>
      _$OwnProfileScreenStateCopyWithImpl<OwnProfileScreenState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserDto info) own,
    required TResult Function(UserDto user) other,
    required TResult Function() loading,
    required TResult Function() userNotFound,
  }) {
    return own(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserDto info)? own,
    TResult Function(UserDto user)? other,
    TResult Function()? loading,
    TResult Function()? userNotFound,
    required TResult orElse(),
  }) {
    if (own != null) {
      return own(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OwnProfileScreenState value) own,
    required TResult Function(OtherProfileScreenState value) other,
    required TResult Function(LoadingProfileScreenState value) loading,
    required TResult Function(UserNotFoundProfileScreenState value)
        userNotFound,
  }) {
    return own(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OwnProfileScreenState value)? own,
    TResult Function(OtherProfileScreenState value)? other,
    TResult Function(LoadingProfileScreenState value)? loading,
    TResult Function(UserNotFoundProfileScreenState value)? userNotFound,
    required TResult orElse(),
  }) {
    if (own != null) {
      return own(this);
    }
    return orElse();
  }
}

abstract class OwnProfileScreenState implements ProfileScreenState {
  const factory OwnProfileScreenState(UserDto info) = _$OwnProfileScreenState;

  UserDto get info => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OwnProfileScreenStateCopyWith<OwnProfileScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherProfileScreenStateCopyWith<$Res> {
  factory $OtherProfileScreenStateCopyWith(OtherProfileScreenState value,
          $Res Function(OtherProfileScreenState) then) =
      _$OtherProfileScreenStateCopyWithImpl<$Res>;
  $Res call({UserDto user});
}

/// @nodoc
class _$OtherProfileScreenStateCopyWithImpl<$Res>
    extends _$ProfileScreenStateCopyWithImpl<$Res>
    implements $OtherProfileScreenStateCopyWith<$Res> {
  _$OtherProfileScreenStateCopyWithImpl(OtherProfileScreenState _value,
      $Res Function(OtherProfileScreenState) _then)
      : super(_value, (v) => _then(v as OtherProfileScreenState));

  @override
  OtherProfileScreenState get _value => super._value as OtherProfileScreenState;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(OtherProfileScreenState(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
    ));
  }
}

/// @nodoc

class _$OtherProfileScreenState implements OtherProfileScreenState {
  const _$OtherProfileScreenState(this.user);

  @override
  final UserDto user;

  @override
  String toString() {
    return 'ProfileScreenState.other(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OtherProfileScreenState &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $OtherProfileScreenStateCopyWith<OtherProfileScreenState> get copyWith =>
      _$OtherProfileScreenStateCopyWithImpl<OtherProfileScreenState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserDto info) own,
    required TResult Function(UserDto user) other,
    required TResult Function() loading,
    required TResult Function() userNotFound,
  }) {
    return other(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserDto info)? own,
    TResult Function(UserDto user)? other,
    TResult Function()? loading,
    TResult Function()? userNotFound,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OwnProfileScreenState value) own,
    required TResult Function(OtherProfileScreenState value) other,
    required TResult Function(LoadingProfileScreenState value) loading,
    required TResult Function(UserNotFoundProfileScreenState value)
        userNotFound,
  }) {
    return other(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OwnProfileScreenState value)? own,
    TResult Function(OtherProfileScreenState value)? other,
    TResult Function(LoadingProfileScreenState value)? loading,
    TResult Function(UserNotFoundProfileScreenState value)? userNotFound,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(this);
    }
    return orElse();
  }
}

abstract class OtherProfileScreenState implements ProfileScreenState {
  const factory OtherProfileScreenState(UserDto user) =
      _$OtherProfileScreenState;

  UserDto get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtherProfileScreenStateCopyWith<OtherProfileScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingProfileScreenStateCopyWith<$Res> {
  factory $LoadingProfileScreenStateCopyWith(LoadingProfileScreenState value,
          $Res Function(LoadingProfileScreenState) then) =
      _$LoadingProfileScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingProfileScreenStateCopyWithImpl<$Res>
    extends _$ProfileScreenStateCopyWithImpl<$Res>
    implements $LoadingProfileScreenStateCopyWith<$Res> {
  _$LoadingProfileScreenStateCopyWithImpl(LoadingProfileScreenState _value,
      $Res Function(LoadingProfileScreenState) _then)
      : super(_value, (v) => _then(v as LoadingProfileScreenState));

  @override
  LoadingProfileScreenState get _value =>
      super._value as LoadingProfileScreenState;
}

/// @nodoc

class _$LoadingProfileScreenState implements LoadingProfileScreenState {
  const _$LoadingProfileScreenState();

  @override
  String toString() {
    return 'ProfileScreenState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingProfileScreenState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserDto info) own,
    required TResult Function(UserDto user) other,
    required TResult Function() loading,
    required TResult Function() userNotFound,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserDto info)? own,
    TResult Function(UserDto user)? other,
    TResult Function()? loading,
    TResult Function()? userNotFound,
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
    required TResult Function(OwnProfileScreenState value) own,
    required TResult Function(OtherProfileScreenState value) other,
    required TResult Function(LoadingProfileScreenState value) loading,
    required TResult Function(UserNotFoundProfileScreenState value)
        userNotFound,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OwnProfileScreenState value)? own,
    TResult Function(OtherProfileScreenState value)? other,
    TResult Function(LoadingProfileScreenState value)? loading,
    TResult Function(UserNotFoundProfileScreenState value)? userNotFound,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingProfileScreenState implements ProfileScreenState {
  const factory LoadingProfileScreenState() = _$LoadingProfileScreenState;
}

/// @nodoc
abstract class $UserNotFoundProfileScreenStateCopyWith<$Res> {
  factory $UserNotFoundProfileScreenStateCopyWith(
          UserNotFoundProfileScreenState value,
          $Res Function(UserNotFoundProfileScreenState) then) =
      _$UserNotFoundProfileScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserNotFoundProfileScreenStateCopyWithImpl<$Res>
    extends _$ProfileScreenStateCopyWithImpl<$Res>
    implements $UserNotFoundProfileScreenStateCopyWith<$Res> {
  _$UserNotFoundProfileScreenStateCopyWithImpl(
      UserNotFoundProfileScreenState _value,
      $Res Function(UserNotFoundProfileScreenState) _then)
      : super(_value, (v) => _then(v as UserNotFoundProfileScreenState));

  @override
  UserNotFoundProfileScreenState get _value =>
      super._value as UserNotFoundProfileScreenState;
}

/// @nodoc

class _$UserNotFoundProfileScreenState
    implements UserNotFoundProfileScreenState {
  const _$UserNotFoundProfileScreenState();

  @override
  String toString() {
    return 'ProfileScreenState.userNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserNotFoundProfileScreenState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserDto info) own,
    required TResult Function(UserDto user) other,
    required TResult Function() loading,
    required TResult Function() userNotFound,
  }) {
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserDto info)? own,
    TResult Function(UserDto user)? other,
    TResult Function()? loading,
    TResult Function()? userNotFound,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OwnProfileScreenState value) own,
    required TResult Function(OtherProfileScreenState value) other,
    required TResult Function(LoadingProfileScreenState value) loading,
    required TResult Function(UserNotFoundProfileScreenState value)
        userNotFound,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OwnProfileScreenState value)? own,
    TResult Function(OtherProfileScreenState value)? other,
    TResult Function(LoadingProfileScreenState value)? loading,
    TResult Function(UserNotFoundProfileScreenState value)? userNotFound,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class UserNotFoundProfileScreenState implements ProfileScreenState {
  const factory UserNotFoundProfileScreenState() =
      _$UserNotFoundProfileScreenState;
}
