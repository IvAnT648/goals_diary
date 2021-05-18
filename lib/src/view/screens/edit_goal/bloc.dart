import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/events.dart';
import 'bloc/states.dart';

class EditGoalBloc extends Bloc<EditGoalEvent, EditGoalState> {
  EditGoalBloc() : super(EditGoalState.initial());

  @override
  Stream<EditGoalState> mapEventToState(EditGoalEvent event) =>
      event.when(
        submit: (goal) async* {},
      );
}
