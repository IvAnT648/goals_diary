
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/models.dart';

import 'bloc/events.dart';
import 'bloc/states.dart';

export 'bloc/events.dart';
export 'bloc/states.dart';

class EditGoalBloc extends Bloc<EditGoalEvent, EditGoalState> {
  EditGoalBloc() : super(EditGoalState.initial());

  @override
  Stream<EditGoalState> mapEventToState(EditGoalEvent event) =>
      event.when(
        submit: _onSubmit,
      );

  Stream<EditGoalState> _onSubmit(GoalDto goal) async* {}
}
