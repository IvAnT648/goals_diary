
import 'package:freezed_annotation/freezed_annotation.dart';

part 'results.freezed.dart';

@freezed
class SignInResult with _$SignInResult {
  const factory SignInResult.success() = SuccessSignInResult;
  const factory SignInResult.userNotFound() = UserNotFoundSignInResult;
  const factory SignInResult.wrongPassword() = WrongPasswordSignInResult;
  const factory SignInResult.invalidEmail() = InvalidEmailSignInResult;
  const factory SignInResult.internalError() = InternalErrorSignInResult;
}

@freezed
class SignUpResult with _$SignUpResult {
  const factory SignUpResult.success() = SuccessSignUpResult;
  const factory SignUpResult.alreadyExists() = AlreadyExistsSignUpResult;
  const factory SignUpResult.invalidEmail() = InvalidEmailSignUpResult;
  const factory SignUpResult.weakPassword() = WeakPasswordSignUpResult;
  const factory SignUpResult.internalError() = InternalErrorSignUpResult;
}

@freezed
class SaveGoalResult with _$SaveGoalResult {
  const factory SaveGoalResult.success() = SuccessSaveGoalResult;
  const factory SaveGoalResult.incorrectNameFail() =
    IncorrectNameFailSaveGoalResult;
  const factory SaveGoalResult.internalError() = InternalErrorSaveGoalResult;
}
