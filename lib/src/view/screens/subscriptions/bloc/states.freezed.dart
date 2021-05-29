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
class _$SubscriptionsScreenStateTearOff {
  const _$SubscriptionsScreenStateTearOff();

  LoadingSubscriptionsScreenState loading() {
    return const LoadingSubscriptionsScreenState();
  }

  LoadedSubscriptionsScreenState loaded(List<UserDto> users) {
    return LoadedSubscriptionsScreenState(
      users,
    );
  }

  EmptySubscriptionsScreenState empty() {
    return const EmptySubscriptionsScreenState();
  }
}

/// @nodoc
const $SubscriptionsScreenState = _$SubscriptionsScreenStateTearOff();

/// @nodoc
mixin _$SubscriptionsScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<UserDto> users) loaded,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<UserDto> users)? loaded,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingSubscriptionsScreenState value) loading,
    required TResult Function(LoadedSubscriptionsScreenState value) loaded,
    required TResult Function(EmptySubscriptionsScreenState value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingSubscriptionsScreenState value)? loading,
    TResult Function(LoadedSubscriptionsScreenState value)? loaded,
    TResult Function(EmptySubscriptionsScreenState value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionsScreenStateCopyWith<$Res> {
  factory $SubscriptionsScreenStateCopyWith(SubscriptionsScreenState value,
          $Res Function(SubscriptionsScreenState) then) =
      _$SubscriptionsScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubscriptionsScreenStateCopyWithImpl<$Res>
    implements $SubscriptionsScreenStateCopyWith<$Res> {
  _$SubscriptionsScreenStateCopyWithImpl(this._value, this._then);

  final SubscriptionsScreenState _value;
  // ignore: unused_field
  final $Res Function(SubscriptionsScreenState) _then;
}

/// @nodoc
abstract class $LoadingSubscriptionsScreenStateCopyWith<$Res> {
  factory $LoadingSubscriptionsScreenStateCopyWith(
          LoadingSubscriptionsScreenState value,
          $Res Function(LoadingSubscriptionsScreenState) then) =
      _$LoadingSubscriptionsScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingSubscriptionsScreenStateCopyWithImpl<$Res>
    extends _$SubscriptionsScreenStateCopyWithImpl<$Res>
    implements $LoadingSubscriptionsScreenStateCopyWith<$Res> {
  _$LoadingSubscriptionsScreenStateCopyWithImpl(
      LoadingSubscriptionsScreenState _value,
      $Res Function(LoadingSubscriptionsScreenState) _then)
      : super(_value, (v) => _then(v as LoadingSubscriptionsScreenState));

  @override
  LoadingSubscriptionsScreenState get _value =>
      super._value as LoadingSubscriptionsScreenState;
}

/// @nodoc

class _$LoadingSubscriptionsScreenState
    implements LoadingSubscriptionsScreenState {
  const _$LoadingSubscriptionsScreenState();

  @override
  String toString() {
    return 'SubscriptionsScreenState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingSubscriptionsScreenState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<UserDto> users) loaded,
    required TResult Function() empty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<UserDto> users)? loaded,
    TResult Function()? empty,
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
    required TResult Function(LoadingSubscriptionsScreenState value) loading,
    required TResult Function(LoadedSubscriptionsScreenState value) loaded,
    required TResult Function(EmptySubscriptionsScreenState value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingSubscriptionsScreenState value)? loading,
    TResult Function(LoadedSubscriptionsScreenState value)? loaded,
    TResult Function(EmptySubscriptionsScreenState value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingSubscriptionsScreenState
    implements SubscriptionsScreenState {
  const factory LoadingSubscriptionsScreenState() =
      _$LoadingSubscriptionsScreenState;
}

/// @nodoc
abstract class $LoadedSubscriptionsScreenStateCopyWith<$Res> {
  factory $LoadedSubscriptionsScreenStateCopyWith(
          LoadedSubscriptionsScreenState value,
          $Res Function(LoadedSubscriptionsScreenState) then) =
      _$LoadedSubscriptionsScreenStateCopyWithImpl<$Res>;
  $Res call({List<UserDto> users});
}

/// @nodoc
class _$LoadedSubscriptionsScreenStateCopyWithImpl<$Res>
    extends _$SubscriptionsScreenStateCopyWithImpl<$Res>
    implements $LoadedSubscriptionsScreenStateCopyWith<$Res> {
  _$LoadedSubscriptionsScreenStateCopyWithImpl(
      LoadedSubscriptionsScreenState _value,
      $Res Function(LoadedSubscriptionsScreenState) _then)
      : super(_value, (v) => _then(v as LoadedSubscriptionsScreenState));

  @override
  LoadedSubscriptionsScreenState get _value =>
      super._value as LoadedSubscriptionsScreenState;

  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(LoadedSubscriptionsScreenState(
      users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserDto>,
    ));
  }
}

/// @nodoc

class _$LoadedSubscriptionsScreenState
    implements LoadedSubscriptionsScreenState {
  const _$LoadedSubscriptionsScreenState(this.users);

  @override
  final List<UserDto> users;

  @override
  String toString() {
    return 'SubscriptionsScreenState.loaded(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedSubscriptionsScreenState &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(users);

  @JsonKey(ignore: true)
  @override
  $LoadedSubscriptionsScreenStateCopyWith<LoadedSubscriptionsScreenState>
      get copyWith => _$LoadedSubscriptionsScreenStateCopyWithImpl<
          LoadedSubscriptionsScreenState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<UserDto> users) loaded,
    required TResult Function() empty,
  }) {
    return loaded(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<UserDto> users)? loaded,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingSubscriptionsScreenState value) loading,
    required TResult Function(LoadedSubscriptionsScreenState value) loaded,
    required TResult Function(EmptySubscriptionsScreenState value) empty,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingSubscriptionsScreenState value)? loading,
    TResult Function(LoadedSubscriptionsScreenState value)? loaded,
    TResult Function(EmptySubscriptionsScreenState value)? empty,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedSubscriptionsScreenState
    implements SubscriptionsScreenState {
  const factory LoadedSubscriptionsScreenState(List<UserDto> users) =
      _$LoadedSubscriptionsScreenState;

  List<UserDto> get users => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedSubscriptionsScreenStateCopyWith<LoadedSubscriptionsScreenState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptySubscriptionsScreenStateCopyWith<$Res> {
  factory $EmptySubscriptionsScreenStateCopyWith(
          EmptySubscriptionsScreenState value,
          $Res Function(EmptySubscriptionsScreenState) then) =
      _$EmptySubscriptionsScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptySubscriptionsScreenStateCopyWithImpl<$Res>
    extends _$SubscriptionsScreenStateCopyWithImpl<$Res>
    implements $EmptySubscriptionsScreenStateCopyWith<$Res> {
  _$EmptySubscriptionsScreenStateCopyWithImpl(
      EmptySubscriptionsScreenState _value,
      $Res Function(EmptySubscriptionsScreenState) _then)
      : super(_value, (v) => _then(v as EmptySubscriptionsScreenState));

  @override
  EmptySubscriptionsScreenState get _value =>
      super._value as EmptySubscriptionsScreenState;
}

/// @nodoc

class _$EmptySubscriptionsScreenState implements EmptySubscriptionsScreenState {
  const _$EmptySubscriptionsScreenState();

  @override
  String toString() {
    return 'SubscriptionsScreenState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptySubscriptionsScreenState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<UserDto> users) loaded,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<UserDto> users)? loaded,
    TResult Function()? empty,
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
    required TResult Function(LoadingSubscriptionsScreenState value) loading,
    required TResult Function(LoadedSubscriptionsScreenState value) loaded,
    required TResult Function(EmptySubscriptionsScreenState value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingSubscriptionsScreenState value)? loading,
    TResult Function(LoadedSubscriptionsScreenState value)? loaded,
    TResult Function(EmptySubscriptionsScreenState value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptySubscriptionsScreenState
    implements SubscriptionsScreenState {
  const factory EmptySubscriptionsScreenState() =
      _$EmptySubscriptionsScreenState;
}
