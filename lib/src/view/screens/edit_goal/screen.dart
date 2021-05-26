import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/utils.dart';
import '../../../common/resources.dart';
import '../../../domain/models/goals.dart';
import '../../components.dart';
import 'bloc.dart';

class EditGoalScreen extends StatelessWidget {
  static const String id = '/goals/form';
  static const String goalArg = 'goal';
  static const EdgeInsets _padding = EdgeInsets.symmetric(
    vertical: 38,
    horizontal: 58,
  );
  static const GoalType _defaultGoalType = GoalType.private;
  static const bool _defaultNotifyValue = false;

  final GoalDto? goal;

  final _titleField = TextEditingController();
  final _descriptionField = TextEditingController();
  final _goalTypeField = SingleValue(_defaultGoalType);
  final _notificationsEnabledField = SingleValue(_defaultNotifyValue);

  GoalType get _goalType => goal?.type ?? _defaultGoalType;

  EditGoalScreen({
    Key? key,
    this.goal,
  }) : super(key: key) {
    if (goal != null) {
      _titleField.text = goal!.title;
      _descriptionField.text = goal!.description;
      _goalTypeField.value = goal!.type;
      _notificationsEnabledField.value = goal!.sendNotifications;
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
            GoalTypeSelector(
              selected: _goalType,
              onChanged: (newType) {
                _goalTypeField.value = newType;
              },
            ),
            // TODO: notifications
            // const SizedBox(height: 30),
            // CheckboxWithLabel(
            //   label: S.of(context).screenEditGoalNotificationsEnabledLabel,
            //   value: goal?.sendNotifications ?? false,
            //   onChanged: (newValue) {
            //     _notificationsEnabledField.value = newValue ?? false;
            //   },
            // ),
            // const SizedBox(height: 20),
            // SetNotificationsTime(time: goal?.notificationsTime),
          ],
        ),
      ),
    );
  }
}
