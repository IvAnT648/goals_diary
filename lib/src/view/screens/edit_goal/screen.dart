import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/resources.dart';
import '../../../domain/models/goals.dart';
import '../../components.dart';
import 'bloc.dart';

class EditGoalScreen extends StatelessWidget {
  static const String id = '/goals/edit';
  static const EdgeInsets _padding = EdgeInsets.symmetric(
    vertical: 38,
    horizontal: 58,
  );

  final GoalDto? goal;
  final TextEditingController _titleField = TextEditingController();
  final TextEditingController _descriptionField = TextEditingController();

  EditGoalScreen({
    Key? key,
    this.goal,
  }) : super(key: key) {
    if (goal != null) {
      _titleField.text = goal!.title;
      _descriptionField.text = goal!.description;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReturnableTopBar(
        title: S.of(context).screenEditGoalTitle,
      ),
      body: Padding(
        padding: _padding,
        child: Column(
          children: [
            DefaultTextField(
              label: S.of(context).screenEditGoalTitleLabel,
              controller: _titleField,
            ),
            const SizedBox(height: 30),
            BigTextField(
              label: S.of(context).screenEditGoalDescriptionLabel,
              controller: _descriptionField,
            ),
            const SizedBox(height: 30),
            BlocBuilder<EditGoalBloc, EditGoalState>(
              buildWhen: (prev, curr) =>
                  curr is InitialEditGoalState ||
                  curr is TypeChangedEditGoalState,
              builder: (context, state) {
                GoalType? type;
                if (state is InitialEditGoalState) {
                  type = state.type;
                }
                if (state is TypeChangedEditGoalState) {
                  type = state.type;
                }
                return GoalTypeSelector(
                  selected: type,
                  onChange: (newType) {
                    context.read<EditGoalBloc>()
                        .add(EditGoalEvent.changeType(newType));
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
