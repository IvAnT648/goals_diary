
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/models/goals.dart' show GoalType;

import 'bloc/events.dart';
import 'bloc/states.dart';

export 'bloc/events.dart';
export 'bloc/states.dart';

class EditGoalBloc extends Bloc<EditGoalEvent, EditGoalState> {
  EditGoalBloc() : super(EditGoalState.initial(GoalType.private));

  @override
  Stream<EditGoalState> mapEventToState(EditGoalEvent event) =>
      event.when(
        submit: (goal) async* {},
        changeType: (type) async* {
          yield EditGoalState.typeChanged(type);
        }
      );
}
