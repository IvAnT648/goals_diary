// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostScreenStateTearOff {
  const _$PostScreenStateTearOff();

  NotFoundPostScreenState notFound() {
    return const NotFoundPostScreenState();
  }

  ShowPostScreenState show(PostDto post) {
    return ShowPostScreenState(
      post,
    );
  }
}

/// @nodoc
const $PostScreenState = _$PostScreenStateTearOff();

/// @nodoc
mixin _$PostScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function(PostDto post) show,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function(PostDto post)? show,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotFoundPostScreenState value) notFound,
    required TResult Function(ShowPostScreenState value) show,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotFoundPostScreenState value)? notFound,
    TResult Function(ShowPostScreenState value)? show,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostScreenStateCopyWith<$Res> {
  factory $PostScreenStateCopyWith(
          PostScreenState value, $Res Function(PostScreenState) then) =
      _$PostScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostScreenStateCopyWithImpl<$Res>
    implements $PostScreenStateCopyWith<$Res> {
  _$PostScreenStateCopyWithImpl(this._value, this._then);

  final PostScreenState _value;
  // ignore: unused_field
  final $Res Function(PostScreenState) _then;
}

/// @nodoc
abstract class $NotFoundPostScreenStateCopyWith<$Res> {
  factory $NotFoundPostScreenStateCopyWith(NotFoundPostScreenState value,
          $Res Function(NotFoundPostScreenState) then) =
      _$NotFoundPostScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotFoundPostScreenStateCopyWithImpl<$Res>
    extends _$PostScreenStateCopyWithImpl<$Res>
    implements $NotFoundPostScreenStateCopyWith<$Res> {
  _$NotFoundPostScreenStateCopyWithImpl(NotFoundPostScreenState _value,
      $Res Function(NotFoundPostScreenState) _then)
      : super(_value, (v) => _then(v as NotFoundPostScreenState));

  @override
  NotFoundPostScreenState get _value => super._value as NotFoundPostScreenState;
}

/// @nodoc

class _$NotFoundPostScreenState implements NotFoundPostScreenState {
  const _$NotFoundPostScreenState();

  @override
  String toString() {
    return 'PostScreenState.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotFoundPostScreenState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function(PostDto post) show,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function(PostDto post)? show,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotFoundPostScreenState value) notFound,
    required TResult Function(ShowPostScreenState value) show,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotFoundPostScreenState value)? notFound,
    TResult Function(ShowPostScreenState value)? show,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFoundPostScreenState implements PostScreenState {
  const factory NotFoundPostScreenState() = _$NotFoundPostScreenState;
}

/// @nodoc
abstract class $ShowPostScreenStateCopyWith<$Res> {
  factory $ShowPostScreenStateCopyWith(
          ShowPostScreenState value, $Res Function(ShowPostScreenState) then) =
      _$ShowPostScreenStateCopyWithImpl<$Res>;
  $Res call({PostDto post});
}

/// @nodoc
class _$ShowPostScreenStateCopyWithImpl<$Res>
    extends _$PostScreenStateCopyWithImpl<$Res>
    implements $ShowPostScreenStateCopyWith<$Res> {
  _$ShowPostScreenStateCopyWithImpl(
      ShowPostScreenState _value, $Res Function(ShowPostScreenState) _then)
      : super(_value, (v) => _then(v as ShowPostScreenState));

  @override
  ShowPostScreenState get _value => super._value as ShowPostScreenState;

  @override
  $Res call({
    Object? post = freezed,
  }) {
    return _then(ShowPostScreenState(
      post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as PostDto,
    ));
  }
}

/// @nodoc

class _$ShowPostScreenState implements ShowPostScreenState {
  const _$ShowPostScreenState(this.post);

  @override
  final PostDto post;

  @override
  String toString() {
    return 'PostScreenState.show(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowPostScreenState &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(post);

  @JsonKey(ignore: true)
  @override
  $ShowPostScreenStateCopyWith<ShowPostScreenState> get copyWith =>
      _$ShowPostScreenStateCopyWithImpl<ShowPostScreenState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function(PostDto post) show,
  }) {
    return show(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function(PostDto post)? show,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotFoundPostScreenState value) notFound,
    required TResult Function(ShowPostScreenState value) show,
  }) {
    return show(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotFoundPostScreenState value)? notFound,
    TResult Function(ShowPostScreenState value)? show,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show(this);
    }
    return orElse();
  }
}

abstract class ShowPostScreenState implements PostScreenState {
  const factory ShowPostScreenState(PostDto post) = _$ShowPostScreenState;

  PostDto get post => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShowPostScreenStateCopyWith<ShowPostScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
