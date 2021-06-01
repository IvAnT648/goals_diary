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

  OwnProfileScreenState own(UserDto info, bool withReturnableAppBar) {
    return OwnProfileScreenState(
      info,
      withReturnableAppBar,
    );
  }

  SubscribedProfileScreenState subscribed(UserDto info) {
    return SubscribedProfileScreenState(
      info,
    );
  }

  UnsubscribedProfileScreenState unsubscribed(UserDto info) {
    return UnsubscribedProfileScreenState(
      info,
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
    required TResult Function(UserDto info, bool withReturnableAppBar) own,
    required TResult Function(UserDto info) subscribed,
    required TResult Function(UserDto info) unsubscribed,
    required TResult Function() loading,
    required TResult Function() userNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserDto info, bool withReturnableAppBar)? own,
    TResult Function(UserDto info)? subscribed,
    TResult Function(UserDto info)? unsubscribed,
    TResult Function()? loading,
    TResult Function()? userNotFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OwnProfileScreenState value) own,
    required TResult Function(SubscribedProfileScreenState value) subscribed,
    required TResult Function(UnsubscribedProfileScreenState value)
        unsubscribed,
    required TResult Function(LoadingProfileScreenState value) loading,
    required TResult Function(UserNotFoundProfileScreenState value)
        userNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OwnProfileScreenState value)? own,
    TResult Function(SubscribedProfileScreenState value)? subscribed,
    TResult Function(UnsubscribedProfileScreenState value)? unsubscribed,
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
  $Res call({UserDto info, bool withReturnableAppBar});
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
    Object? withReturnableAppBar = freezed,
  }) {
    return _then(OwnProfileScreenState(
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as UserDto,
      withReturnableAppBar == freezed
          ? _value.withReturnableAppBar
          : withReturnableAppBar // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OwnProfileScreenState implements OwnProfileScreenState {
  const _$OwnProfileScreenState(this.info, this.withReturnableAppBar);

  @override
  final UserDto info;
  @override
  final bool withReturnableAppBar;

  @override
  String toString() {
    return 'ProfileScreenState.own(info: $info, withReturnableAppBar: $withReturnableAppBar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OwnProfileScreenState &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)) &&
            (identical(other.withReturnableAppBar, withReturnableAppBar) ||
                const DeepCollectionEquality()
                    .equals(other.withReturnableAppBar, withReturnableAppBar)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(withReturnableAppBar);

  @JsonKey(ignore: true)
  @override
  $OwnProfileScreenStateCopyWith<OwnProfileScreenState> get copyWith =>
      _$OwnProfileScreenStateCopyWithImpl<OwnProfileScreenState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserDto info, bool withReturnableAppBar) own,
    required TResult Function(UserDto info) subscribed,
    required TResult Function(UserDto info) unsubscribed,
    required TResult Function() loading,
    required TResult Function() userNotFound,
  }) {
    return own(info, withReturnableAppBar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserDto info, bool withReturnableAppBar)? own,
    TResult Function(UserDto info)? subscribed,
    TResult Function(UserDto info)? unsubscribed,
    TResult Function()? loading,
    TResult Function()? userNotFound,
    required TResult orElse(),
  }) {
    if (own != null) {
      return own(info, withReturnableAppBar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OwnProfileScreenState value) own,
    required TResult Function(SubscribedProfileScreenState value) subscribed,
    required TResult Function(UnsubscribedProfileScreenState value)
        unsubscribed,
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
    TResult Function(SubscribedProfileScreenState value)? subscribed,
    TResult Function(UnsubscribedProfileScreenState value)? unsubscribed,
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
  const factory OwnProfileScreenState(UserDto info, bool withReturnableAppBar) =
      _$OwnProfileScreenState;

  UserDto get info => throw _privateConstructorUsedError;
  bool get withReturnableAppBar => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OwnProfileScreenStateCopyWith<OwnProfileScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscribedProfileScreenStateCopyWith<$Res> {
  factory $SubscribedProfileScreenStateCopyWith(
          SubscribedProfileScreenState value,
          $Res Function(SubscribedProfileScreenState) then) =
      _$SubscribedProfileScreenStateCopyWithImpl<$Res>;
  $Res call({UserDto info});
}

/// @nodoc
class _$SubscribedProfileScreenStateCopyWithImpl<$Res>
    extends _$ProfileScreenStateCopyWithImpl<$Res>
    implements $SubscribedProfileScreenStateCopyWith<$Res> {
  _$SubscribedProfileScreenStateCopyWithImpl(
      SubscribedProfileScreenState _value,
      $Res Function(SubscribedProfileScreenState) _then)
      : super(_value, (v) => _then(v as SubscribedProfileScreenState));

  @override
  SubscribedProfileScreenState get _value =>
      super._value as SubscribedProfileScreenState;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(SubscribedProfileScreenState(
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as UserDto,
    ));
  }
}

/// @nodoc

class _$SubscribedProfileScreenState implements SubscribedProfileScreenState {
  const _$SubscribedProfileScreenState(this.info);

  @override
  final UserDto info;

  @override
  String toString() {
    return 'ProfileScreenState.subscribed(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SubscribedProfileScreenState &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  $SubscribedProfileScreenStateCopyWith<SubscribedProfileScreenState>
      get copyWith => _$SubscribedProfileScreenStateCopyWithImpl<
          SubscribedProfileScreenState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserDto info, bool withReturnableAppBar) own,
    required TResult Function(UserDto info) subscribed,
    required TResult Function(UserDto info) unsubscribed,
    required TResult Function() loading,
    required TResult Function() userNotFound,
  }) {
    return subscribed(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserDto info, bool withReturnableAppBar)? own,
    TResult Function(UserDto info)? subscribed,
    TResult Function(UserDto info)? unsubscribed,
    TResult Function()? loading,
    TResult Function()? userNotFound,
    required TResult orElse(),
  }) {
    if (subscribed != null) {
      return subscribed(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OwnProfileScreenState value) own,
    required TResult Function(SubscribedProfileScreenState value) subscribed,
    required TResult Function(UnsubscribedProfileScreenState value)
        unsubscribed,
    required TResult Function(LoadingProfileScreenState value) loading,
    required TResult Function(UserNotFoundProfileScreenState value)
        userNotFound,
  }) {
    return subscribed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OwnProfileScreenState value)? own,
    TResult Function(SubscribedProfileScreenState value)? subscribed,
    TResult Function(UnsubscribedProfileScreenState value)? unsubscribed,
    TResult Function(LoadingProfileScreenState value)? loading,
    TResult Function(UserNotFoundProfileScreenState value)? userNotFound,
    required TResult orElse(),
  }) {
    if (subscribed != null) {
      return subscribed(this);
    }
    return orElse();
  }
}

abstract class SubscribedProfileScreenState implements ProfileScreenState {
  const factory SubscribedProfileScreenState(UserDto info) =
      _$SubscribedProfileScreenState;

  UserDto get info => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscribedProfileScreenStateCopyWith<SubscribedProfileScreenState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnsubscribedProfileScreenStateCopyWith<$Res> {
  factory $UnsubscribedProfileScreenStateCopyWith(
          UnsubscribedProfileScreenState value,
          $Res Function(UnsubscribedProfileScreenState) then) =
      _$UnsubscribedProfileScreenStateCopyWithImpl<$Res>;
  $Res call({UserDto info});
}

/// @nodoc
class _$UnsubscribedProfileScreenStateCopyWithImpl<$Res>
    extends _$ProfileScreenStateCopyWithImpl<$Res>
    implements $UnsubscribedProfileScreenStateCopyWith<$Res> {
  _$UnsubscribedProfileScreenStateCopyWithImpl(
      UnsubscribedProfileScreenState _value,
      $Res Function(UnsubscribedProfileScreenState) _then)
      : super(_value, (v) => _then(v as UnsubscribedProfileScreenState));

  @override
  UnsubscribedProfileScreenState get _value =>
      super._value as UnsubscribedProfileScreenState;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(UnsubscribedProfileScreenState(
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as UserDto,
    ));
  }
}

/// @nodoc

class _$UnsubscribedProfileScreenState
    implements UnsubscribedProfileScreenState {
  const _$UnsubscribedProfileScreenState(this.info);

  @override
  final UserDto info;

  @override
  String toString() {
    return 'ProfileScreenState.unsubscribed(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnsubscribedProfileScreenState &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  $UnsubscribedProfileScreenStateCopyWith<UnsubscribedProfileScreenState>
      get copyWith => _$UnsubscribedProfileScreenStateCopyWithImpl<
          UnsubscribedProfileScreenState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserDto info, bool withReturnableAppBar) own,
    required TResult Function(UserDto info) subscribed,
    required TResult Function(UserDto info) unsubscribed,
    required TResult Function() loading,
    required TResult Function() userNotFound,
  }) {
    return unsubscribed(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserDto info, bool withReturnableAppBar)? own,
    TResult Function(UserDto info)? subscribed,
    TResult Function(UserDto info)? unsubscribed,
    TResult Function()? loading,
    TResult Function()? userNotFound,
    required TResult orElse(),
  }) {
    if (unsubscribed != null) {
      return unsubscribed(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OwnProfileScreenState value) own,
    required TResult Function(SubscribedProfileScreenState value) subscribed,
    required TResult Function(UnsubscribedProfileScreenState value)
        unsubscribed,
    required TResult Function(LoadingProfileScreenState value) loading,
    required TResult Function(UserNotFoundProfileScreenState value)
        userNotFound,
  }) {
    return unsubscribed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OwnProfileScreenState value)? own,
    TResult Function(SubscribedProfileScreenState value)? subscribed,
    TResult Function(UnsubscribedProfileScreenState value)? unsubscribed,
    TResult Function(LoadingProfileScreenState value)? loading,
    TResult Function(UserNotFoundProfileScreenState value)? userNotFound,
    required TResult orElse(),
  }) {
    if (unsubscribed != null) {
      return unsubscribed(this);
    }
    return orElse();
  }
}

abstract class UnsubscribedProfileScreenState implements ProfileScreenState {
  const factory UnsubscribedProfileScreenState(UserDto info) =
      _$UnsubscribedProfileScreenState;

  UserDto get info => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnsubscribedProfileScreenStateCopyWith<UnsubscribedProfileScreenState>
      get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function(UserDto info, bool withReturnableAppBar) own,
    required TResult Function(UserDto info) subscribed,
    required TResult Function(UserDto info) unsubscribed,
    required TResult Function() loading,
    required TResult Function() userNotFound,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserDto info, bool withReturnableAppBar)? own,
    TResult Function(UserDto info)? subscribed,
    TResult Function(UserDto info)? unsubscribed,
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
    required TResult Function(SubscribedProfileScreenState value) subscribed,
    required TResult Function(UnsubscribedProfileScreenState value)
        unsubscribed,
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
    TResult Function(SubscribedProfileScreenState value)? subscribed,
    TResult Function(UnsubscribedProfileScreenState value)? unsubscribed,
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
    required TResult Function(UserDto info, bool withReturnableAppBar) own,
    required TResult Function(UserDto info) subscribed,
    required TResult Function(UserDto info) unsubscribed,
    required TResult Function() loading,
    required TResult Function() userNotFound,
  }) {
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserDto info, bool withReturnableAppBar)? own,
    TResult Function(UserDto info)? subscribed,
    TResult Function(UserDto info)? unsubscribed,
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
    required TResult Function(SubscribedProfileScreenState value) subscribed,
    required TResult Function(UnsubscribedProfileScreenState value)
        unsubscribed,
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
    TResult Function(SubscribedProfileScreenState value)? subscribed,
    TResult Function(UnsubscribedProfileScreenState value)? unsubscribed,
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
