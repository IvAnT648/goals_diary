// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInResultTearOff {
  const _$SignInResultTearOff();

  SuccessSignInResult success() {
    return const SuccessSignInResult();
  }

  UserNotFoundSignInResult userNotFound() {
    return const UserNotFoundSignInResult();
  }

  WrongPasswordSignInResult wrongPassword() {
    return const WrongPasswordSignInResult();
  }

  InvalidEmailSignInResult invalidEmail() {
    return const InvalidEmailSignInResult();
  }

  InternalErrorSignInResult internalError() {
    return const InternalErrorSignInResult();
  }
}

/// @nodoc
const $SignInResult = _$SignInResultTearOff();

/// @nodoc
mixin _$SignInResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() invalidEmail,
    required TResult Function() internalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? invalidEmail,
    TResult Function()? internalError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessSignInResult value) success,
    required TResult Function(UserNotFoundSignInResult value) userNotFound,
    required TResult Function(WrongPasswordSignInResult value) wrongPassword,
    required TResult Function(InvalidEmailSignInResult value) invalidEmail,
    required TResult Function(InternalErrorSignInResult value) internalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessSignInResult value)? success,
    TResult Function(UserNotFoundSignInResult value)? userNotFound,
    TResult Function(WrongPasswordSignInResult value)? wrongPassword,
    TResult Function(InvalidEmailSignInResult value)? invalidEmail,
    TResult Function(InternalErrorSignInResult value)? internalError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInResultCopyWith<$Res> {
  factory $SignInResultCopyWith(
          SignInResult value, $Res Function(SignInResult) then) =
      _$SignInResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInResultCopyWithImpl<$Res> implements $SignInResultCopyWith<$Res> {
  _$SignInResultCopyWithImpl(this._value, this._then);

  final SignInResult _value;
  // ignore: unused_field
  final $Res Function(SignInResult) _then;
}

/// @nodoc
abstract class $SuccessSignInResultCopyWith<$Res> {
  factory $SuccessSignInResultCopyWith(
          SuccessSignInResult value, $Res Function(SuccessSignInResult) then) =
      _$SuccessSignInResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuccessSignInResultCopyWithImpl<$Res>
    extends _$SignInResultCopyWithImpl<$Res>
    implements $SuccessSignInResultCopyWith<$Res> {
  _$SuccessSignInResultCopyWithImpl(
      SuccessSignInResult _value, $Res Function(SuccessSignInResult) _then)
      : super(_value, (v) => _then(v as SuccessSignInResult));

  @override
  SuccessSignInResult get _value => super._value as SuccessSignInResult;
}

/// @nodoc

class _$SuccessSignInResult implements SuccessSignInResult {
  const _$SuccessSignInResult();

  @override
  String toString() {
    return 'SignInResult.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SuccessSignInResult);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() invalidEmail,
    required TResult Function() internalError,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? invalidEmail,
    TResult Function()? internalError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessSignInResult value) success,
    required TResult Function(UserNotFoundSignInResult value) userNotFound,
    required TResult Function(WrongPasswordSignInResult value) wrongPassword,
    required TResult Function(InvalidEmailSignInResult value) invalidEmail,
    required TResult Function(InternalErrorSignInResult value) internalError,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessSignInResult value)? success,
    TResult Function(UserNotFoundSignInResult value)? userNotFound,
    TResult Function(WrongPasswordSignInResult value)? wrongPassword,
    TResult Function(InvalidEmailSignInResult value)? invalidEmail,
    TResult Function(InternalErrorSignInResult value)? internalError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessSignInResult implements SignInResult {
  const factory SuccessSignInResult() = _$SuccessSignInResult;
}

/// @nodoc
abstract class $UserNotFoundSignInResultCopyWith<$Res> {
  factory $UserNotFoundSignInResultCopyWith(UserNotFoundSignInResult value,
          $Res Function(UserNotFoundSignInResult) then) =
      _$UserNotFoundSignInResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserNotFoundSignInResultCopyWithImpl<$Res>
    extends _$SignInResultCopyWithImpl<$Res>
    implements $UserNotFoundSignInResultCopyWith<$Res> {
  _$UserNotFoundSignInResultCopyWithImpl(UserNotFoundSignInResult _value,
      $Res Function(UserNotFoundSignInResult) _then)
      : super(_value, (v) => _then(v as UserNotFoundSignInResult));

  @override
  UserNotFoundSignInResult get _value =>
      super._value as UserNotFoundSignInResult;
}

/// @nodoc

class _$UserNotFoundSignInResult implements UserNotFoundSignInResult {
  const _$UserNotFoundSignInResult();

  @override
  String toString() {
    return 'SignInResult.userNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserNotFoundSignInResult);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() invalidEmail,
    required TResult Function() internalError,
  }) {
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? invalidEmail,
    TResult Function()? internalError,
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
    required TResult Function(SuccessSignInResult value) success,
    required TResult Function(UserNotFoundSignInResult value) userNotFound,
    required TResult Function(WrongPasswordSignInResult value) wrongPassword,
    required TResult Function(InvalidEmailSignInResult value) invalidEmail,
    required TResult Function(InternalErrorSignInResult value) internalError,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessSignInResult value)? success,
    TResult Function(UserNotFoundSignInResult value)? userNotFound,
    TResult Function(WrongPasswordSignInResult value)? wrongPassword,
    TResult Function(InvalidEmailSignInResult value)? invalidEmail,
    TResult Function(InternalErrorSignInResult value)? internalError,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class UserNotFoundSignInResult implements SignInResult {
  const factory UserNotFoundSignInResult() = _$UserNotFoundSignInResult;
}

/// @nodoc
abstract class $WrongPasswordSignInResultCopyWith<$Res> {
  factory $WrongPasswordSignInResultCopyWith(WrongPasswordSignInResult value,
          $Res Function(WrongPasswordSignInResult) then) =
      _$WrongPasswordSignInResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$WrongPasswordSignInResultCopyWithImpl<$Res>
    extends _$SignInResultCopyWithImpl<$Res>
    implements $WrongPasswordSignInResultCopyWith<$Res> {
  _$WrongPasswordSignInResultCopyWithImpl(WrongPasswordSignInResult _value,
      $Res Function(WrongPasswordSignInResult) _then)
      : super(_value, (v) => _then(v as WrongPasswordSignInResult));

  @override
  WrongPasswordSignInResult get _value =>
      super._value as WrongPasswordSignInResult;
}

/// @nodoc

class _$WrongPasswordSignInResult implements WrongPasswordSignInResult {
  const _$WrongPasswordSignInResult();

  @override
  String toString() {
    return 'SignInResult.wrongPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WrongPasswordSignInResult);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() invalidEmail,
    required TResult Function() internalError,
  }) {
    return wrongPassword();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? invalidEmail,
    TResult Function()? internalError,
    required TResult orElse(),
  }) {
    if (wrongPassword != null) {
      return wrongPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessSignInResult value) success,
    required TResult Function(UserNotFoundSignInResult value) userNotFound,
    required TResult Function(WrongPasswordSignInResult value) wrongPassword,
    required TResult Function(InvalidEmailSignInResult value) invalidEmail,
    required TResult Function(InternalErrorSignInResult value) internalError,
  }) {
    return wrongPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessSignInResult value)? success,
    TResult Function(UserNotFoundSignInResult value)? userNotFound,
    TResult Function(WrongPasswordSignInResult value)? wrongPassword,
    TResult Function(InvalidEmailSignInResult value)? invalidEmail,
    TResult Function(InternalErrorSignInResult value)? internalError,
    required TResult orElse(),
  }) {
    if (wrongPassword != null) {
      return wrongPassword(this);
    }
    return orElse();
  }
}

abstract class WrongPasswordSignInResult implements SignInResult {
  const factory WrongPasswordSignInResult() = _$WrongPasswordSignInResult;
}

/// @nodoc
abstract class $InvalidEmailSignInResultCopyWith<$Res> {
  factory $InvalidEmailSignInResultCopyWith(InvalidEmailSignInResult value,
          $Res Function(InvalidEmailSignInResult) then) =
      _$InvalidEmailSignInResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidEmailSignInResultCopyWithImpl<$Res>
    extends _$SignInResultCopyWithImpl<$Res>
    implements $InvalidEmailSignInResultCopyWith<$Res> {
  _$InvalidEmailSignInResultCopyWithImpl(InvalidEmailSignInResult _value,
      $Res Function(InvalidEmailSignInResult) _then)
      : super(_value, (v) => _then(v as InvalidEmailSignInResult));

  @override
  InvalidEmailSignInResult get _value =>
      super._value as InvalidEmailSignInResult;
}

/// @nodoc

class _$InvalidEmailSignInResult implements InvalidEmailSignInResult {
  const _$InvalidEmailSignInResult();

  @override
  String toString() {
    return 'SignInResult.invalidEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidEmailSignInResult);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() invalidEmail,
    required TResult Function() internalError,
  }) {
    return invalidEmail();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? invalidEmail,
    TResult Function()? internalError,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessSignInResult value) success,
    required TResult Function(UserNotFoundSignInResult value) userNotFound,
    required TResult Function(WrongPasswordSignInResult value) wrongPassword,
    required TResult Function(InvalidEmailSignInResult value) invalidEmail,
    required TResult Function(InternalErrorSignInResult value) internalError,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessSignInResult value)? success,
    TResult Function(UserNotFoundSignInResult value)? userNotFound,
    TResult Function(WrongPasswordSignInResult value)? wrongPassword,
    TResult Function(InvalidEmailSignInResult value)? invalidEmail,
    TResult Function(InternalErrorSignInResult value)? internalError,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailSignInResult implements SignInResult {
  const factory InvalidEmailSignInResult() = _$InvalidEmailSignInResult;
}

/// @nodoc
abstract class $InternalErrorSignInResultCopyWith<$Res> {
  factory $InternalErrorSignInResultCopyWith(InternalErrorSignInResult value,
          $Res Function(InternalErrorSignInResult) then) =
      _$InternalErrorSignInResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$InternalErrorSignInResultCopyWithImpl<$Res>
    extends _$SignInResultCopyWithImpl<$Res>
    implements $InternalErrorSignInResultCopyWith<$Res> {
  _$InternalErrorSignInResultCopyWithImpl(InternalErrorSignInResult _value,
      $Res Function(InternalErrorSignInResult) _then)
      : super(_value, (v) => _then(v as InternalErrorSignInResult));

  @override
  InternalErrorSignInResult get _value =>
      super._value as InternalErrorSignInResult;
}

/// @nodoc

class _$InternalErrorSignInResult implements InternalErrorSignInResult {
  const _$InternalErrorSignInResult();

  @override
  String toString() {
    return 'SignInResult.internalError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InternalErrorSignInResult);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() invalidEmail,
    required TResult Function() internalError,
  }) {
    return internalError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? invalidEmail,
    TResult Function()? internalError,
    required TResult orElse(),
  }) {
    if (internalError != null) {
      return internalError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessSignInResult value) success,
    required TResult Function(UserNotFoundSignInResult value) userNotFound,
    required TResult Function(WrongPasswordSignInResult value) wrongPassword,
    required TResult Function(InvalidEmailSignInResult value) invalidEmail,
    required TResult Function(InternalErrorSignInResult value) internalError,
  }) {
    return internalError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessSignInResult value)? success,
    TResult Function(UserNotFoundSignInResult value)? userNotFound,
    TResult Function(WrongPasswordSignInResult value)? wrongPassword,
    TResult Function(InvalidEmailSignInResult value)? invalidEmail,
    TResult Function(InternalErrorSignInResult value)? internalError,
    required TResult orElse(),
  }) {
    if (internalError != null) {
      return internalError(this);
    }
    return orElse();
  }
}

abstract class InternalErrorSignInResult implements SignInResult {
  const factory InternalErrorSignInResult() = _$InternalErrorSignInResult;
}

/// @nodoc
class _$SignUpResultTearOff {
  const _$SignUpResultTearOff();

  SuccessSignUpResult success() {
    return const SuccessSignUpResult();
  }

  AlreadyExistsSignUpResult alreadyExists() {
    return const AlreadyExistsSignUpResult();
  }

  InvalidEmailSignUpResult invalidEmail() {
    return const InvalidEmailSignUpResult();
  }

  WeakPasswordSignUpResult weakPassword() {
    return const WeakPasswordSignUpResult();
  }

  InternalErrorSignUpResult internalError() {
    return const InternalErrorSignUpResult();
  }
}

/// @nodoc
const $SignUpResult = _$SignUpResultTearOff();

/// @nodoc
mixin _$SignUpResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() alreadyExists,
    required TResult Function() invalidEmail,
    required TResult Function() weakPassword,
    required TResult Function() internalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? alreadyExists,
    TResult Function()? invalidEmail,
    TResult Function()? weakPassword,
    TResult Function()? internalError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessSignUpResult value) success,
    required TResult Function(AlreadyExistsSignUpResult value) alreadyExists,
    required TResult Function(InvalidEmailSignUpResult value) invalidEmail,
    required TResult Function(WeakPasswordSignUpResult value) weakPassword,
    required TResult Function(InternalErrorSignUpResult value) internalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessSignUpResult value)? success,
    TResult Function(AlreadyExistsSignUpResult value)? alreadyExists,
    TResult Function(InvalidEmailSignUpResult value)? invalidEmail,
    TResult Function(WeakPasswordSignUpResult value)? weakPassword,
    TResult Function(InternalErrorSignUpResult value)? internalError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpResultCopyWith<$Res> {
  factory $SignUpResultCopyWith(
          SignUpResult value, $Res Function(SignUpResult) then) =
      _$SignUpResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpResultCopyWithImpl<$Res> implements $SignUpResultCopyWith<$Res> {
  _$SignUpResultCopyWithImpl(this._value, this._then);

  final SignUpResult _value;
  // ignore: unused_field
  final $Res Function(SignUpResult) _then;
}

/// @nodoc
abstract class $SuccessSignUpResultCopyWith<$Res> {
  factory $SuccessSignUpResultCopyWith(
          SuccessSignUpResult value, $Res Function(SuccessSignUpResult) then) =
      _$SuccessSignUpResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuccessSignUpResultCopyWithImpl<$Res>
    extends _$SignUpResultCopyWithImpl<$Res>
    implements $SuccessSignUpResultCopyWith<$Res> {
  _$SuccessSignUpResultCopyWithImpl(
      SuccessSignUpResult _value, $Res Function(SuccessSignUpResult) _then)
      : super(_value, (v) => _then(v as SuccessSignUpResult));

  @override
  SuccessSignUpResult get _value => super._value as SuccessSignUpResult;
}

/// @nodoc

class _$SuccessSignUpResult implements SuccessSignUpResult {
  const _$SuccessSignUpResult();

  @override
  String toString() {
    return 'SignUpResult.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SuccessSignUpResult);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() alreadyExists,
    required TResult Function() invalidEmail,
    required TResult Function() weakPassword,
    required TResult Function() internalError,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? alreadyExists,
    TResult Function()? invalidEmail,
    TResult Function()? weakPassword,
    TResult Function()? internalError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessSignUpResult value) success,
    required TResult Function(AlreadyExistsSignUpResult value) alreadyExists,
    required TResult Function(InvalidEmailSignUpResult value) invalidEmail,
    required TResult Function(WeakPasswordSignUpResult value) weakPassword,
    required TResult Function(InternalErrorSignUpResult value) internalError,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessSignUpResult value)? success,
    TResult Function(AlreadyExistsSignUpResult value)? alreadyExists,
    TResult Function(InvalidEmailSignUpResult value)? invalidEmail,
    TResult Function(WeakPasswordSignUpResult value)? weakPassword,
    TResult Function(InternalErrorSignUpResult value)? internalError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessSignUpResult implements SignUpResult {
  const factory SuccessSignUpResult() = _$SuccessSignUpResult;
}

/// @nodoc
abstract class $AlreadyExistsSignUpResultCopyWith<$Res> {
  factory $AlreadyExistsSignUpResultCopyWith(AlreadyExistsSignUpResult value,
          $Res Function(AlreadyExistsSignUpResult) then) =
      _$AlreadyExistsSignUpResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$AlreadyExistsSignUpResultCopyWithImpl<$Res>
    extends _$SignUpResultCopyWithImpl<$Res>
    implements $AlreadyExistsSignUpResultCopyWith<$Res> {
  _$AlreadyExistsSignUpResultCopyWithImpl(AlreadyExistsSignUpResult _value,
      $Res Function(AlreadyExistsSignUpResult) _then)
      : super(_value, (v) => _then(v as AlreadyExistsSignUpResult));

  @override
  AlreadyExistsSignUpResult get _value =>
      super._value as AlreadyExistsSignUpResult;
}

/// @nodoc

class _$AlreadyExistsSignUpResult implements AlreadyExistsSignUpResult {
  const _$AlreadyExistsSignUpResult();

  @override
  String toString() {
    return 'SignUpResult.alreadyExists()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AlreadyExistsSignUpResult);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() alreadyExists,
    required TResult Function() invalidEmail,
    required TResult Function() weakPassword,
    required TResult Function() internalError,
  }) {
    return alreadyExists();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? alreadyExists,
    TResult Function()? invalidEmail,
    TResult Function()? weakPassword,
    TResult Function()? internalError,
    required TResult orElse(),
  }) {
    if (alreadyExists != null) {
      return alreadyExists();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessSignUpResult value) success,
    required TResult Function(AlreadyExistsSignUpResult value) alreadyExists,
    required TResult Function(InvalidEmailSignUpResult value) invalidEmail,
    required TResult Function(WeakPasswordSignUpResult value) weakPassword,
    required TResult Function(InternalErrorSignUpResult value) internalError,
  }) {
    return alreadyExists(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessSignUpResult value)? success,
    TResult Function(AlreadyExistsSignUpResult value)? alreadyExists,
    TResult Function(InvalidEmailSignUpResult value)? invalidEmail,
    TResult Function(WeakPasswordSignUpResult value)? weakPassword,
    TResult Function(InternalErrorSignUpResult value)? internalError,
    required TResult orElse(),
  }) {
    if (alreadyExists != null) {
      return alreadyExists(this);
    }
    return orElse();
  }
}

abstract class AlreadyExistsSignUpResult implements SignUpResult {
  const factory AlreadyExistsSignUpResult() = _$AlreadyExistsSignUpResult;
}

/// @nodoc
abstract class $InvalidEmailSignUpResultCopyWith<$Res> {
  factory $InvalidEmailSignUpResultCopyWith(InvalidEmailSignUpResult value,
          $Res Function(InvalidEmailSignUpResult) then) =
      _$InvalidEmailSignUpResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidEmailSignUpResultCopyWithImpl<$Res>
    extends _$SignUpResultCopyWithImpl<$Res>
    implements $InvalidEmailSignUpResultCopyWith<$Res> {
  _$InvalidEmailSignUpResultCopyWithImpl(InvalidEmailSignUpResult _value,
      $Res Function(InvalidEmailSignUpResult) _then)
      : super(_value, (v) => _then(v as InvalidEmailSignUpResult));

  @override
  InvalidEmailSignUpResult get _value =>
      super._value as InvalidEmailSignUpResult;
}

/// @nodoc

class _$InvalidEmailSignUpResult implements InvalidEmailSignUpResult {
  const _$InvalidEmailSignUpResult();

  @override
  String toString() {
    return 'SignUpResult.invalidEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidEmailSignUpResult);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() alreadyExists,
    required TResult Function() invalidEmail,
    required TResult Function() weakPassword,
    required TResult Function() internalError,
  }) {
    return invalidEmail();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? alreadyExists,
    TResult Function()? invalidEmail,
    TResult Function()? weakPassword,
    TResult Function()? internalError,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessSignUpResult value) success,
    required TResult Function(AlreadyExistsSignUpResult value) alreadyExists,
    required TResult Function(InvalidEmailSignUpResult value) invalidEmail,
    required TResult Function(WeakPasswordSignUpResult value) weakPassword,
    required TResult Function(InternalErrorSignUpResult value) internalError,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessSignUpResult value)? success,
    TResult Function(AlreadyExistsSignUpResult value)? alreadyExists,
    TResult Function(InvalidEmailSignUpResult value)? invalidEmail,
    TResult Function(WeakPasswordSignUpResult value)? weakPassword,
    TResult Function(InternalErrorSignUpResult value)? internalError,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailSignUpResult implements SignUpResult {
  const factory InvalidEmailSignUpResult() = _$InvalidEmailSignUpResult;
}

/// @nodoc
abstract class $WeakPasswordSignUpResultCopyWith<$Res> {
  factory $WeakPasswordSignUpResultCopyWith(WeakPasswordSignUpResult value,
          $Res Function(WeakPasswordSignUpResult) then) =
      _$WeakPasswordSignUpResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeakPasswordSignUpResultCopyWithImpl<$Res>
    extends _$SignUpResultCopyWithImpl<$Res>
    implements $WeakPasswordSignUpResultCopyWith<$Res> {
  _$WeakPasswordSignUpResultCopyWithImpl(WeakPasswordSignUpResult _value,
      $Res Function(WeakPasswordSignUpResult) _then)
      : super(_value, (v) => _then(v as WeakPasswordSignUpResult));

  @override
  WeakPasswordSignUpResult get _value =>
      super._value as WeakPasswordSignUpResult;
}

/// @nodoc

class _$WeakPasswordSignUpResult implements WeakPasswordSignUpResult {
  const _$WeakPasswordSignUpResult();

  @override
  String toString() {
    return 'SignUpResult.weakPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WeakPasswordSignUpResult);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() alreadyExists,
    required TResult Function() invalidEmail,
    required TResult Function() weakPassword,
    required TResult Function() internalError,
  }) {
    return weakPassword();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? alreadyExists,
    TResult Function()? invalidEmail,
    TResult Function()? weakPassword,
    TResult Function()? internalError,
    required TResult orElse(),
  }) {
    if (weakPassword != null) {
      return weakPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessSignUpResult value) success,
    required TResult Function(AlreadyExistsSignUpResult value) alreadyExists,
    required TResult Function(InvalidEmailSignUpResult value) invalidEmail,
    required TResult Function(WeakPasswordSignUpResult value) weakPassword,
    required TResult Function(InternalErrorSignUpResult value) internalError,
  }) {
    return weakPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessSignUpResult value)? success,
    TResult Function(AlreadyExistsSignUpResult value)? alreadyExists,
    TResult Function(InvalidEmailSignUpResult value)? invalidEmail,
    TResult Function(WeakPasswordSignUpResult value)? weakPassword,
    TResult Function(InternalErrorSignUpResult value)? internalError,
    required TResult orElse(),
  }) {
    if (weakPassword != null) {
      return weakPassword(this);
    }
    return orElse();
  }
}

abstract class WeakPasswordSignUpResult implements SignUpResult {
  const factory WeakPasswordSignUpResult() = _$WeakPasswordSignUpResult;
}

/// @nodoc
abstract class $InternalErrorSignUpResultCopyWith<$Res> {
  factory $InternalErrorSignUpResultCopyWith(InternalErrorSignUpResult value,
          $Res Function(InternalErrorSignUpResult) then) =
      _$InternalErrorSignUpResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$InternalErrorSignUpResultCopyWithImpl<$Res>
    extends _$SignUpResultCopyWithImpl<$Res>
    implements $InternalErrorSignUpResultCopyWith<$Res> {
  _$InternalErrorSignUpResultCopyWithImpl(InternalErrorSignUpResult _value,
      $Res Function(InternalErrorSignUpResult) _then)
      : super(_value, (v) => _then(v as InternalErrorSignUpResult));

  @override
  InternalErrorSignUpResult get _value =>
      super._value as InternalErrorSignUpResult;
}

/// @nodoc

class _$InternalErrorSignUpResult implements InternalErrorSignUpResult {
  const _$InternalErrorSignUpResult();

  @override
  String toString() {
    return 'SignUpResult.internalError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InternalErrorSignUpResult);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() alreadyExists,
    required TResult Function() invalidEmail,
    required TResult Function() weakPassword,
    required TResult Function() internalError,
  }) {
    return internalError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? alreadyExists,
    TResult Function()? invalidEmail,
    TResult Function()? weakPassword,
    TResult Function()? internalError,
    required TResult orElse(),
  }) {
    if (internalError != null) {
      return internalError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessSignUpResult value) success,
    required TResult Function(AlreadyExistsSignUpResult value) alreadyExists,
    required TResult Function(InvalidEmailSignUpResult value) invalidEmail,
    required TResult Function(WeakPasswordSignUpResult value) weakPassword,
    required TResult Function(InternalErrorSignUpResult value) internalError,
  }) {
    return internalError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessSignUpResult value)? success,
    TResult Function(AlreadyExistsSignUpResult value)? alreadyExists,
    TResult Function(InvalidEmailSignUpResult value)? invalidEmail,
    TResult Function(WeakPasswordSignUpResult value)? weakPassword,
    TResult Function(InternalErrorSignUpResult value)? internalError,
    required TResult orElse(),
  }) {
    if (internalError != null) {
      return internalError(this);
    }
    return orElse();
  }
}

abstract class InternalErrorSignUpResult implements SignUpResult {
  const factory InternalErrorSignUpResult() = _$InternalErrorSignUpResult;
}

/// @nodoc
class _$SaveGoalResultTearOff {
  const _$SaveGoalResultTearOff();

  SuccessSaveGoalResult success() {
    return const SuccessSaveGoalResult();
  }

  IncorrectNameFailSaveGoalResult incorrectNameFail() {
    return const IncorrectNameFailSaveGoalResult();
  }

  InternalErrorSaveGoalResult internalError() {
    return const InternalErrorSaveGoalResult();
  }
}

/// @nodoc
const $SaveGoalResult = _$SaveGoalResultTearOff();

/// @nodoc
mixin _$SaveGoalResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() incorrectNameFail,
    required TResult Function() internalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? incorrectNameFail,
    TResult Function()? internalError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessSaveGoalResult value) success,
    required TResult Function(IncorrectNameFailSaveGoalResult value)
        incorrectNameFail,
    required TResult Function(InternalErrorSaveGoalResult value) internalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessSaveGoalResult value)? success,
    TResult Function(IncorrectNameFailSaveGoalResult value)? incorrectNameFail,
    TResult Function(InternalErrorSaveGoalResult value)? internalError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveGoalResultCopyWith<$Res> {
  factory $SaveGoalResultCopyWith(
          SaveGoalResult value, $Res Function(SaveGoalResult) then) =
      _$SaveGoalResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveGoalResultCopyWithImpl<$Res>
    implements $SaveGoalResultCopyWith<$Res> {
  _$SaveGoalResultCopyWithImpl(this._value, this._then);

  final SaveGoalResult _value;
  // ignore: unused_field
  final $Res Function(SaveGoalResult) _then;
}

/// @nodoc
abstract class $SuccessSaveGoalResultCopyWith<$Res> {
  factory $SuccessSaveGoalResultCopyWith(SuccessSaveGoalResult value,
          $Res Function(SuccessSaveGoalResult) then) =
      _$SuccessSaveGoalResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuccessSaveGoalResultCopyWithImpl<$Res>
    extends _$SaveGoalResultCopyWithImpl<$Res>
    implements $SuccessSaveGoalResultCopyWith<$Res> {
  _$SuccessSaveGoalResultCopyWithImpl(
      SuccessSaveGoalResult _value, $Res Function(SuccessSaveGoalResult) _then)
      : super(_value, (v) => _then(v as SuccessSaveGoalResult));

  @override
  SuccessSaveGoalResult get _value => super._value as SuccessSaveGoalResult;
}

/// @nodoc

class _$SuccessSaveGoalResult implements SuccessSaveGoalResult {
  const _$SuccessSaveGoalResult();

  @override
  String toString() {
    return 'SaveGoalResult.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SuccessSaveGoalResult);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() incorrectNameFail,
    required TResult Function() internalError,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? incorrectNameFail,
    TResult Function()? internalError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessSaveGoalResult value) success,
    required TResult Function(IncorrectNameFailSaveGoalResult value)
        incorrectNameFail,
    required TResult Function(InternalErrorSaveGoalResult value) internalError,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessSaveGoalResult value)? success,
    TResult Function(IncorrectNameFailSaveGoalResult value)? incorrectNameFail,
    TResult Function(InternalErrorSaveGoalResult value)? internalError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessSaveGoalResult implements SaveGoalResult {
  const factory SuccessSaveGoalResult() = _$SuccessSaveGoalResult;
}

/// @nodoc
abstract class $IncorrectNameFailSaveGoalResultCopyWith<$Res> {
  factory $IncorrectNameFailSaveGoalResultCopyWith(
          IncorrectNameFailSaveGoalResult value,
          $Res Function(IncorrectNameFailSaveGoalResult) then) =
      _$IncorrectNameFailSaveGoalResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$IncorrectNameFailSaveGoalResultCopyWithImpl<$Res>
    extends _$SaveGoalResultCopyWithImpl<$Res>
    implements $IncorrectNameFailSaveGoalResultCopyWith<$Res> {
  _$IncorrectNameFailSaveGoalResultCopyWithImpl(
      IncorrectNameFailSaveGoalResult _value,
      $Res Function(IncorrectNameFailSaveGoalResult) _then)
      : super(_value, (v) => _then(v as IncorrectNameFailSaveGoalResult));

  @override
  IncorrectNameFailSaveGoalResult get _value =>
      super._value as IncorrectNameFailSaveGoalResult;
}

/// @nodoc

class _$IncorrectNameFailSaveGoalResult
    implements IncorrectNameFailSaveGoalResult {
  const _$IncorrectNameFailSaveGoalResult();

  @override
  String toString() {
    return 'SaveGoalResult.incorrectNameFail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is IncorrectNameFailSaveGoalResult);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() incorrectNameFail,
    required TResult Function() internalError,
  }) {
    return incorrectNameFail();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? incorrectNameFail,
    TResult Function()? internalError,
    required TResult orElse(),
  }) {
    if (incorrectNameFail != null) {
      return incorrectNameFail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessSaveGoalResult value) success,
    required TResult Function(IncorrectNameFailSaveGoalResult value)
        incorrectNameFail,
    required TResult Function(InternalErrorSaveGoalResult value) internalError,
  }) {
    return incorrectNameFail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessSaveGoalResult value)? success,
    TResult Function(IncorrectNameFailSaveGoalResult value)? incorrectNameFail,
    TResult Function(InternalErrorSaveGoalResult value)? internalError,
    required TResult orElse(),
  }) {
    if (incorrectNameFail != null) {
      return incorrectNameFail(this);
    }
    return orElse();
  }
}

abstract class IncorrectNameFailSaveGoalResult implements SaveGoalResult {
  const factory IncorrectNameFailSaveGoalResult() =
      _$IncorrectNameFailSaveGoalResult;
}

/// @nodoc
abstract class $InternalErrorSaveGoalResultCopyWith<$Res> {
  factory $InternalErrorSaveGoalResultCopyWith(
          InternalErrorSaveGoalResult value,
          $Res Function(InternalErrorSaveGoalResult) then) =
      _$InternalErrorSaveGoalResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$InternalErrorSaveGoalResultCopyWithImpl<$Res>
    extends _$SaveGoalResultCopyWithImpl<$Res>
    implements $InternalErrorSaveGoalResultCopyWith<$Res> {
  _$InternalErrorSaveGoalResultCopyWithImpl(InternalErrorSaveGoalResult _value,
      $Res Function(InternalErrorSaveGoalResult) _then)
      : super(_value, (v) => _then(v as InternalErrorSaveGoalResult));

  @override
  InternalErrorSaveGoalResult get _value =>
      super._value as InternalErrorSaveGoalResult;
}

/// @nodoc

class _$InternalErrorSaveGoalResult implements InternalErrorSaveGoalResult {
  const _$InternalErrorSaveGoalResult();

  @override
  String toString() {
    return 'SaveGoalResult.internalError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InternalErrorSaveGoalResult);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() incorrectNameFail,
    required TResult Function() internalError,
  }) {
    return internalError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? incorrectNameFail,
    TResult Function()? internalError,
    required TResult orElse(),
  }) {
    if (internalError != null) {
      return internalError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessSaveGoalResult value) success,
    required TResult Function(IncorrectNameFailSaveGoalResult value)
        incorrectNameFail,
    required TResult Function(InternalErrorSaveGoalResult value) internalError,
  }) {
    return internalError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessSaveGoalResult value)? success,
    TResult Function(IncorrectNameFailSaveGoalResult value)? incorrectNameFail,
    TResult Function(InternalErrorSaveGoalResult value)? internalError,
    required TResult orElse(),
  }) {
    if (internalError != null) {
      return internalError(this);
    }
    return orElse();
  }
}

abstract class InternalErrorSaveGoalResult implements SaveGoalResult {
  const factory InternalErrorSaveGoalResult() = _$InternalErrorSaveGoalResult;
}