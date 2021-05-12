// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StartupScreenEventTearOff {
  const _$StartupScreenEventTearOff();

  InitStartupScreenEvent init() {
    return const InitStartupScreenEvent();
  }
}

/// @nodoc
const $StartupScreenEvent = _$StartupScreenEventTearOff();

/// @nodoc
mixin _$StartupScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitStartupScreenEvent value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitStartupScreenEvent value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartupScreenEventCopyWith<$Res> {
  factory $StartupScreenEventCopyWith(
          StartupScreenEvent value, $Res Function(StartupScreenEvent) then) =
      _$StartupScreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartupScreenEventCopyWithImpl<$Res>
    implements $StartupScreenEventCopyWith<$Res> {
  _$StartupScreenEventCopyWithImpl(this._value, this._then);

  final StartupScreenEvent _value;
  // ignore: unused_field
  final $Res Function(StartupScreenEvent) _then;
}

/// @nodoc
abstract class $InitStartupScreenEventCopyWith<$Res> {
  factory $InitStartupScreenEventCopyWith(InitStartupScreenEvent value,
          $Res Function(InitStartupScreenEvent) then) =
      _$InitStartupScreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitStartupScreenEventCopyWithImpl<$Res>
    extends _$StartupScreenEventCopyWithImpl<$Res>
    implements $InitStartupScreenEventCopyWith<$Res> {
  _$InitStartupScreenEventCopyWithImpl(InitStartupScreenEvent _value,
      $Res Function(InitStartupScreenEvent) _then)
      : super(_value, (v) => _then(v as InitStartupScreenEvent));

  @override
  InitStartupScreenEvent get _value => super._value as InitStartupScreenEvent;
}

/// @nodoc

class _$InitStartupScreenEvent implements InitStartupScreenEvent {
  const _$InitStartupScreenEvent();

  @override
  String toString() {
    return 'StartupScreenEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitStartupScreenEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitStartupScreenEvent value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitStartupScreenEvent value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitStartupScreenEvent implements StartupScreenEvent {
  const factory InitStartupScreenEvent() = _$InitStartupScreenEvent;
}
