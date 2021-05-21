
import '../../common/resources.dart';
import '../../domain/models/goals.dart';

extension GoalTypeToLocalizedString on GoalType {
  String toText() {
    switch (this) {
      case GoalType.private:
        return S.current.commonPrivateGoal;
      case GoalType.public:
        return S.current.commonPublicGoal;
    }
  }
}
