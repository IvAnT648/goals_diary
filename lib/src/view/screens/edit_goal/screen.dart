import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../domain/models/goals.dart';
import '../../components.dart';

class EditGoalScreenArgs {
  final GoalDto goal;

  EditGoalScreenArgs({required this.goal});
}

class EditGoalScreen extends StatelessWidget {
  static const String id = '/goals/edit';
  static const EdgeInsets _padding = EdgeInsets.symmetric(
    vertical: 38,
    horizontal: 58,
  );

  final GoalDto goal;
  final TextEditingController _titleField = TextEditingController();
  final TextEditingController _descriptionField = TextEditingController();

  EditGoalScreen({
    Key? key,
    required this.goal,
  }) : super(key: key) {
    _titleField.text = goal.title;
    _descriptionField.text = goal.description;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MenuTopBar(),
      body: Padding(
        padding: _padding,
        child: Column(
          children: [
            AppTextField(
              label: S.of(context).screenEditGoalTitleLabel,
              controller: _titleField,
            ),
            AppTextField(
              label: S.of(context).screenEditGoalDescriptionLabel,
              controller: _descriptionField,
            ),
          ],
        ),
      ),
    );
  }
}
