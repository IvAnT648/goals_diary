
import 'package:freezed_annotation/freezed_annotation.dart';

part 'results.freezed.dart';

@freezed
class SaveGoalResult with _$SaveGoalResult {
  const factory SaveGoalResult.success() = SuccessSaveGoalResult;
  const factory SaveGoalResult.incorrectNameFail() =
    IncorrectNameFailSaveGoalResult;
  const factory SaveGoalResult.internalError() = InternalErrorSaveGoalResult;
}
