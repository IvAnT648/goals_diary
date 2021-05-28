
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'cubit/states.dart';

@injectable
class EditGoalCubit extends Cubit<EditGoalState> {
  EditGoalCubit() : super(EditGoalState.initial());

  bool save() {
    return true;
  }
}
