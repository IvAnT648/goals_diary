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
class _$ActivityScreenStateTearOff {
  const _$ActivityScreenStateTearOff();

  EmptyActivityScreenState empty() {
    return const EmptyActivityScreenState();
  }

  LoadingActivityScreenState loading() {
    return const LoadingActivityScreenState();
  }

  ListActivityScreenState list(List<GoalActivityDto> activities) {
    return ListActivityScreenState(
      activities,
    );
  }
}

/// @nodoc
const $ActivityScreenState = _$ActivityScreenStateTearOff();

/// @nodoc
mixin _$ActivityScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<GoalActivityDto> activities) list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<GoalActivityDto> activities)? list,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyActivityScreenState value) empty,
    required TResult Function(LoadingActivityScreenState value) loading,
    required TResult Function(ListActivityScreenState value) list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyActivityScreenState value)? empty,
    TResult Function(LoadingActivityScreenState value)? loading,
    TResult Function(ListActivityScreenState value)? list,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityScreenStateCopyWith<$Res> {
  factory $ActivityScreenStateCopyWith(
          ActivityScreenState value, $Res Function(ActivityScreenState) then) =
      _$ActivityScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ActivityScreenStateCopyWithImpl<$Res>
    implements $ActivityScreenStateCopyWith<$Res> {
  _$ActivityScreenStateCopyWithImpl(this._value, this._then);

  final ActivityScreenState _value;
  // ignore: unused_field
  final $Res Function(ActivityScreenState) _then;
}

/// @nodoc
abstract class $EmptyActivityScreenStateCopyWith<$Res> {
  factory $EmptyActivityScreenStateCopyWith(EmptyActivityScreenState value,
          $Res Function(EmptyActivityScreenState) then) =
      _$EmptyActivityScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyActivityScreenStateCopyWithImpl<$Res>
    extends _$ActivityScreenStateCopyWithImpl<$Res>
    implements $EmptyActivityScreenStateCopyWith<$Res> {
  _$EmptyActivityScreenStateCopyWithImpl(EmptyActivityScreenState _value,
      $Res Function(EmptyActivityScreenState) _then)
      : super(_value, (v) => _then(v as EmptyActivityScreenState));

  @override
  EmptyActivityScreenState get _value =>
      super._value as EmptyActivityScreenState;
}

/// @nodoc

class _$EmptyActivityScreenState implements EmptyActivityScreenState {
  const _$EmptyActivityScreenState();

  @override
  String toString() {
    return 'ActivityScreenState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyActivityScreenState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<GoalActivityDto> activities) list,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<GoalActivityDto> activities)? list,
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
    required TResult Function(EmptyActivityScreenState value) empty,
    required TResult Function(LoadingActivityScreenState value) loading,
    required TResult Function(ListActivityScreenState value) list,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyActivityScreenState value)? empty,
    TResult Function(LoadingActivityScreenState value)? loading,
    TResult Function(ListActivityScreenState value)? list,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyActivityScreenState implements ActivityScreenState {
  const factory EmptyActivityScreenState() = _$EmptyActivityScreenState;
}

/// @nodoc
abstract class $LoadingActivityScreenStateCopyWith<$Res> {
  factory $LoadingActivityScreenStateCopyWith(LoadingActivityScreenState value,
          $Res Function(LoadingActivityScreenState) then) =
      _$LoadingActivityScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingActivityScreenStateCopyWithImpl<$Res>
    extends _$ActivityScreenStateCopyWithImpl<$Res>
    implements $LoadingActivityScreenStateCopyWith<$Res> {
  _$LoadingActivityScreenStateCopyWithImpl(LoadingActivityScreenState _value,
      $Res Function(LoadingActivityScreenState) _then)
      : super(_value, (v) => _then(v as LoadingActivityScreenState));

  @override
  LoadingActivityScreenState get _value =>
      super._value as LoadingActivityScreenState;
}

/// @nodoc

class _$LoadingActivityScreenState implements LoadingActivityScreenState {
  const _$LoadingActivityScreenState();

  @override
  String toString() {
    return 'ActivityScreenState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingActivityScreenState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<GoalActivityDto> activities) list,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<GoalActivityDto> activities)? list,
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
    required TResult Function(EmptyActivityScreenState value) empty,
    required TResult Function(LoadingActivityScreenState value) loading,
    required TResult Function(ListActivityScreenState value) list,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyActivityScreenState value)? empty,
    TResult Function(LoadingActivityScreenState value)? loading,
    TResult Function(ListActivityScreenState value)? list,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingActivityScreenState implements ActivityScreenState {
  const factory LoadingActivityScreenState() = _$LoadingActivityScreenState;
}

/// @nodoc
abstract class $ListActivityScreenStateCopyWith<$Res> {
  factory $ListActivityScreenStateCopyWith(ListActivityScreenState value,
          $Res Function(ListActivityScreenState) then) =
      _$ListActivityScreenStateCopyWithImpl<$Res>;
  $Res call({List<GoalActivityDto> activities});
}

/// @nodoc
class _$ListActivityScreenStateCopyWithImpl<$Res>
    extends _$ActivityScreenStateCopyWithImpl<$Res>
    implements $ListActivityScreenStateCopyWith<$Res> {
  _$ListActivityScreenStateCopyWithImpl(ListActivityScreenState _value,
      $Res Function(ListActivityScreenState) _then)
      : super(_value, (v) => _then(v as ListActivityScreenState));

  @override
  ListActivityScreenState get _value => super._value as ListActivityScreenState;

  @override
  $Res call({
    Object? activities = freezed,
  }) {
    return _then(ListActivityScreenState(
      activities == freezed
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<GoalActivityDto>,
    ));
  }
}

/// @nodoc

class _$ListActivityScreenState implements ListActivityScreenState {
  const _$ListActivityScreenState(this.activities);

  @override
  final List<GoalActivityDto> activities;

  @override
  String toString() {
    return 'ActivityScreenState.list(activities: $activities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListActivityScreenState &&
            (identical(other.activities, activities) ||
                const DeepCollectionEquality()
                    .equals(other.activities, activities)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(activities);

  @JsonKey(ignore: true)
  @override
  $ListActivityScreenStateCopyWith<ListActivityScreenState> get copyWith =>
      _$ListActivityScreenStateCopyWithImpl<ListActivityScreenState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<GoalActivityDto> activities) list,
  }) {
    return list(activities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<GoalActivityDto> activities)? list,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(activities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyActivityScreenState value) empty,
    required TResult Function(LoadingActivityScreenState value) loading,
    required TResult Function(ListActivityScreenState value) list,
  }) {
    return list(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyActivityScreenState value)? empty,
    TResult Function(LoadingActivityScreenState value)? loading,
    TResult Function(ListActivityScreenState value)? list,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(this);
    }
    return orElse();
  }
}

abstract class ListActivityScreenState implements ActivityScreenState {
  const factory ListActivityScreenState(List<GoalActivityDto> activities) =
      _$ListActivityScreenState;

  List<GoalActivityDto> get activities => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListActivityScreenStateCopyWith<ListActivityScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
