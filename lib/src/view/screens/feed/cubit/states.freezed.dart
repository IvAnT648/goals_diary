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
class _$FeedScreenStateTearOff {
  const _$FeedScreenStateTearOff();

  LoadingFeedScreenState loading() {
    return const LoadingFeedScreenState();
  }

  LoadedFeedScreenState loaded(List<PostDto> posts) {
    return LoadedFeedScreenState(
      posts,
    );
  }

  NetworkErrorFeedScreenState networkError() {
    return const NetworkErrorFeedScreenState();
  }

  EmptyFeedScreenState empty() {
    return const EmptyFeedScreenState();
  }
}

/// @nodoc
const $FeedScreenState = _$FeedScreenStateTearOff();

/// @nodoc
mixin _$FeedScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<PostDto> posts) loaded,
    required TResult Function() networkError,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<PostDto> posts)? loaded,
    TResult Function()? networkError,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingFeedScreenState value) loading,
    required TResult Function(LoadedFeedScreenState value) loaded,
    required TResult Function(NetworkErrorFeedScreenState value) networkError,
    required TResult Function(EmptyFeedScreenState value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingFeedScreenState value)? loading,
    TResult Function(LoadedFeedScreenState value)? loaded,
    TResult Function(NetworkErrorFeedScreenState value)? networkError,
    TResult Function(EmptyFeedScreenState value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedScreenStateCopyWith<$Res> {
  factory $FeedScreenStateCopyWith(
          FeedScreenState value, $Res Function(FeedScreenState) then) =
      _$FeedScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeedScreenStateCopyWithImpl<$Res>
    implements $FeedScreenStateCopyWith<$Res> {
  _$FeedScreenStateCopyWithImpl(this._value, this._then);

  final FeedScreenState _value;
  // ignore: unused_field
  final $Res Function(FeedScreenState) _then;
}

/// @nodoc
abstract class $LoadingFeedScreenStateCopyWith<$Res> {
  factory $LoadingFeedScreenStateCopyWith(LoadingFeedScreenState value,
          $Res Function(LoadingFeedScreenState) then) =
      _$LoadingFeedScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingFeedScreenStateCopyWithImpl<$Res>
    extends _$FeedScreenStateCopyWithImpl<$Res>
    implements $LoadingFeedScreenStateCopyWith<$Res> {
  _$LoadingFeedScreenStateCopyWithImpl(LoadingFeedScreenState _value,
      $Res Function(LoadingFeedScreenState) _then)
      : super(_value, (v) => _then(v as LoadingFeedScreenState));

  @override
  LoadingFeedScreenState get _value => super._value as LoadingFeedScreenState;
}

/// @nodoc

class _$LoadingFeedScreenState implements LoadingFeedScreenState {
  const _$LoadingFeedScreenState();

  @override
  String toString() {
    return 'FeedScreenState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingFeedScreenState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<PostDto> posts) loaded,
    required TResult Function() networkError,
    required TResult Function() empty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<PostDto> posts)? loaded,
    TResult Function()? networkError,
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
    required TResult Function(LoadingFeedScreenState value) loading,
    required TResult Function(LoadedFeedScreenState value) loaded,
    required TResult Function(NetworkErrorFeedScreenState value) networkError,
    required TResult Function(EmptyFeedScreenState value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingFeedScreenState value)? loading,
    TResult Function(LoadedFeedScreenState value)? loaded,
    TResult Function(NetworkErrorFeedScreenState value)? networkError,
    TResult Function(EmptyFeedScreenState value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingFeedScreenState implements FeedScreenState {
  const factory LoadingFeedScreenState() = _$LoadingFeedScreenState;
}

/// @nodoc
abstract class $LoadedFeedScreenStateCopyWith<$Res> {
  factory $LoadedFeedScreenStateCopyWith(LoadedFeedScreenState value,
          $Res Function(LoadedFeedScreenState) then) =
      _$LoadedFeedScreenStateCopyWithImpl<$Res>;
  $Res call({List<PostDto> posts});
}

/// @nodoc
class _$LoadedFeedScreenStateCopyWithImpl<$Res>
    extends _$FeedScreenStateCopyWithImpl<$Res>
    implements $LoadedFeedScreenStateCopyWith<$Res> {
  _$LoadedFeedScreenStateCopyWithImpl(
      LoadedFeedScreenState _value, $Res Function(LoadedFeedScreenState) _then)
      : super(_value, (v) => _then(v as LoadedFeedScreenState));

  @override
  LoadedFeedScreenState get _value => super._value as LoadedFeedScreenState;

  @override
  $Res call({
    Object? posts = freezed,
  }) {
    return _then(LoadedFeedScreenState(
      posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostDto>,
    ));
  }
}

/// @nodoc

class _$LoadedFeedScreenState implements LoadedFeedScreenState {
  const _$LoadedFeedScreenState(this.posts);

  @override
  final List<PostDto> posts;

  @override
  String toString() {
    return 'FeedScreenState.loaded(posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedFeedScreenState &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(posts);

  @JsonKey(ignore: true)
  @override
  $LoadedFeedScreenStateCopyWith<LoadedFeedScreenState> get copyWith =>
      _$LoadedFeedScreenStateCopyWithImpl<LoadedFeedScreenState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<PostDto> posts) loaded,
    required TResult Function() networkError,
    required TResult Function() empty,
  }) {
    return loaded(posts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<PostDto> posts)? loaded,
    TResult Function()? networkError,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingFeedScreenState value) loading,
    required TResult Function(LoadedFeedScreenState value) loaded,
    required TResult Function(NetworkErrorFeedScreenState value) networkError,
    required TResult Function(EmptyFeedScreenState value) empty,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingFeedScreenState value)? loading,
    TResult Function(LoadedFeedScreenState value)? loaded,
    TResult Function(NetworkErrorFeedScreenState value)? networkError,
    TResult Function(EmptyFeedScreenState value)? empty,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedFeedScreenState implements FeedScreenState {
  const factory LoadedFeedScreenState(List<PostDto> posts) =
      _$LoadedFeedScreenState;

  List<PostDto> get posts => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedFeedScreenStateCopyWith<LoadedFeedScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkErrorFeedScreenStateCopyWith<$Res> {
  factory $NetworkErrorFeedScreenStateCopyWith(
          NetworkErrorFeedScreenState value,
          $Res Function(NetworkErrorFeedScreenState) then) =
      _$NetworkErrorFeedScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NetworkErrorFeedScreenStateCopyWithImpl<$Res>
    extends _$FeedScreenStateCopyWithImpl<$Res>
    implements $NetworkErrorFeedScreenStateCopyWith<$Res> {
  _$NetworkErrorFeedScreenStateCopyWithImpl(NetworkErrorFeedScreenState _value,
      $Res Function(NetworkErrorFeedScreenState) _then)
      : super(_value, (v) => _then(v as NetworkErrorFeedScreenState));

  @override
  NetworkErrorFeedScreenState get _value =>
      super._value as NetworkErrorFeedScreenState;
}

/// @nodoc

class _$NetworkErrorFeedScreenState implements NetworkErrorFeedScreenState {
  const _$NetworkErrorFeedScreenState();

  @override
  String toString() {
    return 'FeedScreenState.networkError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NetworkErrorFeedScreenState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<PostDto> posts) loaded,
    required TResult Function() networkError,
    required TResult Function() empty,
  }) {
    return networkError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<PostDto> posts)? loaded,
    TResult Function()? networkError,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingFeedScreenState value) loading,
    required TResult Function(LoadedFeedScreenState value) loaded,
    required TResult Function(NetworkErrorFeedScreenState value) networkError,
    required TResult Function(EmptyFeedScreenState value) empty,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingFeedScreenState value)? loading,
    TResult Function(LoadedFeedScreenState value)? loaded,
    TResult Function(NetworkErrorFeedScreenState value)? networkError,
    TResult Function(EmptyFeedScreenState value)? empty,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class NetworkErrorFeedScreenState implements FeedScreenState {
  const factory NetworkErrorFeedScreenState() = _$NetworkErrorFeedScreenState;
}

/// @nodoc
abstract class $EmptyFeedScreenStateCopyWith<$Res> {
  factory $EmptyFeedScreenStateCopyWith(EmptyFeedScreenState value,
          $Res Function(EmptyFeedScreenState) then) =
      _$EmptyFeedScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyFeedScreenStateCopyWithImpl<$Res>
    extends _$FeedScreenStateCopyWithImpl<$Res>
    implements $EmptyFeedScreenStateCopyWith<$Res> {
  _$EmptyFeedScreenStateCopyWithImpl(
      EmptyFeedScreenState _value, $Res Function(EmptyFeedScreenState) _then)
      : super(_value, (v) => _then(v as EmptyFeedScreenState));

  @override
  EmptyFeedScreenState get _value => super._value as EmptyFeedScreenState;
}

/// @nodoc

class _$EmptyFeedScreenState implements EmptyFeedScreenState {
  const _$EmptyFeedScreenState();

  @override
  String toString() {
    return 'FeedScreenState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyFeedScreenState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<PostDto> posts) loaded,
    required TResult Function() networkError,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<PostDto> posts)? loaded,
    TResult Function()? networkError,
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
    required TResult Function(LoadingFeedScreenState value) loading,
    required TResult Function(LoadedFeedScreenState value) loaded,
    required TResult Function(NetworkErrorFeedScreenState value) networkError,
    required TResult Function(EmptyFeedScreenState value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingFeedScreenState value)? loading,
    TResult Function(LoadedFeedScreenState value)? loaded,
    TResult Function(NetworkErrorFeedScreenState value)? networkError,
    TResult Function(EmptyFeedScreenState value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyFeedScreenState implements FeedScreenState {
  const factory EmptyFeedScreenState() = _$EmptyFeedScreenState;
}
