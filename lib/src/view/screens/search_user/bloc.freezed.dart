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
class _$SearchUserStateTearOff {
  const _$SearchUserStateTearOff();

  InitialSearchUserState initial() {
    return const InitialSearchUserState();
  }

  SearchedSearchUserState searched(List<UserDto> list) {
    return SearchedSearchUserState(
      list,
    );
  }
}

/// @nodoc
const $SearchUserState = _$SearchUserStateTearOff();

/// @nodoc
mixin _$SearchUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<UserDto> list) searched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<UserDto> list)? searched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSearchUserState value) initial,
    required TResult Function(SearchedSearchUserState value) searched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSearchUserState value)? initial,
    TResult Function(SearchedSearchUserState value)? searched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchUserStateCopyWith<$Res> {
  factory $SearchUserStateCopyWith(
          SearchUserState value, $Res Function(SearchUserState) then) =
      _$SearchUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchUserStateCopyWithImpl<$Res>
    implements $SearchUserStateCopyWith<$Res> {
  _$SearchUserStateCopyWithImpl(this._value, this._then);

  final SearchUserState _value;
  // ignore: unused_field
  final $Res Function(SearchUserState) _then;
}

/// @nodoc
abstract class $InitialSearchUserStateCopyWith<$Res> {
  factory $InitialSearchUserStateCopyWith(InitialSearchUserState value,
          $Res Function(InitialSearchUserState) then) =
      _$InitialSearchUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialSearchUserStateCopyWithImpl<$Res>
    extends _$SearchUserStateCopyWithImpl<$Res>
    implements $InitialSearchUserStateCopyWith<$Res> {
  _$InitialSearchUserStateCopyWithImpl(InitialSearchUserState _value,
      $Res Function(InitialSearchUserState) _then)
      : super(_value, (v) => _then(v as InitialSearchUserState));

  @override
  InitialSearchUserState get _value => super._value as InitialSearchUserState;
}

/// @nodoc

class _$InitialSearchUserState implements InitialSearchUserState {
  const _$InitialSearchUserState();

  @override
  String toString() {
    return 'SearchUserState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialSearchUserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<UserDto> list) searched,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<UserDto> list)? searched,
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
    required TResult Function(InitialSearchUserState value) initial,
    required TResult Function(SearchedSearchUserState value) searched,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSearchUserState value)? initial,
    TResult Function(SearchedSearchUserState value)? searched,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialSearchUserState implements SearchUserState {
  const factory InitialSearchUserState() = _$InitialSearchUserState;
}

/// @nodoc
abstract class $SearchedSearchUserStateCopyWith<$Res> {
  factory $SearchedSearchUserStateCopyWith(SearchedSearchUserState value,
          $Res Function(SearchedSearchUserState) then) =
      _$SearchedSearchUserStateCopyWithImpl<$Res>;
  $Res call({List<UserDto> list});
}

/// @nodoc
class _$SearchedSearchUserStateCopyWithImpl<$Res>
    extends _$SearchUserStateCopyWithImpl<$Res>
    implements $SearchedSearchUserStateCopyWith<$Res> {
  _$SearchedSearchUserStateCopyWithImpl(SearchedSearchUserState _value,
      $Res Function(SearchedSearchUserState) _then)
      : super(_value, (v) => _then(v as SearchedSearchUserState));

  @override
  SearchedSearchUserState get _value => super._value as SearchedSearchUserState;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(SearchedSearchUserState(
      list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<UserDto>,
    ));
  }
}

/// @nodoc

class _$SearchedSearchUserState implements SearchedSearchUserState {
  const _$SearchedSearchUserState(this.list);

  @override
  final List<UserDto> list;

  @override
  String toString() {
    return 'SearchUserState.searched(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchedSearchUserState &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  $SearchedSearchUserStateCopyWith<SearchedSearchUserState> get copyWith =>
      _$SearchedSearchUserStateCopyWithImpl<SearchedSearchUserState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<UserDto> list) searched,
  }) {
    return searched(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<UserDto> list)? searched,
    required TResult orElse(),
  }) {
    if (searched != null) {
      return searched(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSearchUserState value) initial,
    required TResult Function(SearchedSearchUserState value) searched,
  }) {
    return searched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSearchUserState value)? initial,
    TResult Function(SearchedSearchUserState value)? searched,
    required TResult orElse(),
  }) {
    if (searched != null) {
      return searched(this);
    }
    return orElse();
  }
}

abstract class SearchedSearchUserState implements SearchUserState {
  const factory SearchedSearchUserState(List<UserDto> list) =
      _$SearchedSearchUserState;

  List<UserDto> get list => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchedSearchUserStateCopyWith<SearchedSearchUserState> get copyWith =>
      throw _privateConstructorUsedError;
}
