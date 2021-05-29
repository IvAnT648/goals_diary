import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/utils.dart';
import '../../../common/resources.dart';
import '../../../domain/models/goal.dart';
import '../../components.dart';
import '../../navigation.dart';
import 'cubit.dart';

class EditGoalScreen extends StatelessWidget {
  static const String id = '/goals/form';
  static const String goalArg = 'goal';
  static const GoalType _defaultGoalType = GoalType.private;
  static const bool _defaultNotifyValue = false;
  static const double _inputsPadding = 40;
  static const EdgeInsets _padding = EdgeInsets.only(
    top: 60,
    left: 60,
    right: 60,
    bottom: 30,
  );

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
      _descriptionField.text = goal!.description ?? '';
      _goalTypeField.value = goal!.type;
      _notificationsEnabledField.value = goal!.sendNotifications;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: ReturnableTopBar(
        title: goal == null
            ? l10n.screenEditGoalNewTitle
            : l10n.screenEditGoalTitle,
        actions: [
          if (goal != null)
            IconButton(
              icon: Icon(
                Icons.delete,
                color: AppColors.secondary,
              ),
              onPressed: () {
                showCupertinoDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (_) => YesNoAlertDialog(
                    title: l10n.screenEditGoalDeleteGoalAlert,
                    onYesTap: () {
                      context.read<EditGoalCubit>().delete(goal!);
                      Navigation.pop();
                      Navigation.pop();
                    },
                  ),
                );
              },
            ),
        ],
      ),
      body: Padding(
        padding: _padding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                DefaultTextField(
                  label: l10n.screenEditGoalTitleLabel,
                  controller: _titleField,
                ),
                const SizedBox(height: _inputsPadding),
                BigTextField(
                  label: l10n.screenEditGoalDescriptionLabel,
                  controller: _descriptionField,
                ),
                const SizedBox(height: _inputsPadding),
                GoalTypeSelector(
                  selected: _goalType,
                  onChanged: (newType) {
                    _goalTypeField.value = newType;
                  },
                ),
              ],
            ),
            // TODO: notifications
            // const SizedBox(height: 30),
            // CheckboxWithLabel(
            //   label: l10n.screenEditGoalNotificationsEnabledLabel,
            //   value: goal?.sendNotifications ?? false,
            //   onChanged: (newValue) {
            //     _notificationsEnabledField.value = newValue ?? false;
            //   },
            // ),
            // const SizedBox(height: 20),
            // SetNotificationsTime(time: goal?.notificationsTime),
            RoundedButtonWrap(
              text: l10n.screenEditGoalSaveButton,
              type: ButtonType.filled,
              primaryColor: AppColors.positive,
              padding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 60,
              ),
              onTap: () => _submit(context),
            )
          ],
        ),
      ),
    );
  }

  void _submit(BuildContext context) async {
    final result = await context.read<EditGoalCubit>().save(_collectData());
    final l10n = S.of(context);
    result.when(
      success: () {
        showSuccessSnackBar(l10n.screenEditGoalSuccessSaveSnackBar, context);
        Navigation.pop();
      },
      incorrectName: () {
        showErrorSnackBar(l10n.screenEditGoalEmptyTitleSnackBar, context);
      },
      internalError: () {
        showErrorSnackBar(l10n.commonInternalErrorText, context);
      },
    );
  }

  GoalDto _collectData() {
    if (goal != null) {
      return goal!.copyWith(
        title: _titleField.text,
        description: _descriptionField.text,
        type: _goalTypeField.value,
        sendNotifications: _notificationsEnabledField.value,
      );
    }
    return GoalDto(
      title: _titleField.text,
      description: _descriptionField.text,
      type: _goalTypeField.value,
      sendNotifications: _notificationsEnabledField.value,
    );
  }
}
