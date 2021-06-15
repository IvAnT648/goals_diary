import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/resources.dart';
import '../../../domain/models.dart';
import '../../components.dart';
import '../../navigation.dart';
import 'cubit.dart';

class GoalScreen extends StatelessWidget {
  static const String id = '/goals/form';
  static const String goalArg = 'goal';

  final GoalDto? goal;

  GoalScreen({
    Key? key,
    this.goal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: ReturnableTopBar(
        title: Text(
          goal == null ? l10n.screenEditGoalNewTitle : l10n.screenEditGoalTitle,
        ),
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
                      context.read<GoalScreenCubit>().delete(goal!);
                      Navigation.pop();
                      Navigation.pop();
                    },
                  ),
                );
              },
            ),
        ],
      ),
      body: _Form(goal: goal),
    );
  }
}

class _Form extends StatefulWidget {
  final GoalDto? goal;

  const _Form({
    Key? key,
    required this.goal,
  }) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<_Form> {
  static const GoalType _defaultGoalType = GoalType.private;
  static const bool _defaultNotifyValue = false;
  static const double _inputsPadding = 40;
  static const EdgeInsets _padding = EdgeInsets.only(
    top: 60,
    left: 60,
    right: 60,
    bottom: 30,
  );
  static const Set<WeekDays> _defaultPeriodicity = {
    WeekDays.monday,
    WeekDays.tuesday,
    WeekDays.wednesday,
    WeekDays.thursday,
    WeekDays.friday,
  };
  static const TimeOfDay _defaultTime = TimeOfDay(hour: 9, minute: 0);

  GoalDto? get goal => widget.goal;

  final _titleField = TextEditingController();
  final _descriptionField = TextEditingController();

  late GoalType _goalType = goal?.type ?? _defaultGoalType;
  late bool _notificationsEnabled =
      goal?.sendNotifications ?? _defaultNotifyValue;
  late NotificationTimeDto? _notificationTime = goal?.notificationsTime;

  @override
  void initState() {
    super.initState();
    if (goal != null) {
      _titleField.text = goal!.title;
      _descriptionField.text = goal!.description ?? '';
      _goalType = goal!.type;
      _notificationsEnabled = goal!.sendNotifications;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);

    return SingleChildScrollView(
      child: Padding(
        padding: _padding,
        child: Column(
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
                _goalType = newType;
              },
            ),
            const SizedBox(height: _inputsPadding),
            GoalPeriodicity(
              days: goal?.notificationsTime?.weekDays ?? _defaultPeriodicity,
              onChanged: (newPeriodicity) {
                _notificationTime = _notificationTime != null
                    ? _notificationTime!.copyWith(
                  weekDays: newPeriodicity,
                ) : NotificationTimeDto(
                  hour: _defaultTime.hour,
                  minute: _defaultTime.minute,
                  weekDays: newPeriodicity,
                );
              },
            ),
            // TODO: push-notifications
            // const SizedBox(height: _inputsPadding),
            // CheckboxWithLabel(
            //   label: l10n.screenEditGoalNotificationsEnabledLabel,
            //   value: goal?.sendNotifications ?? false,
            //   onChanged: (newValue) {
            //     setState(() {
            //       _notificationsEnabled = newValue ?? false;
            //     });
            //   },
            // ),
            // if (_notificationsEnabled) ...[
            //   const SizedBox(height: 20),
            //   GoalNotificationTime(
            //     time: _notificationTime ?? _defaultTime,
            //     onChanged: (time) {
            //       _notificationTime = _notificationTime != null
            //           ? _notificationTime!.copyWith(
            //               hour: time.hour,
            //               minute: time.minute,
            //             )
            //           : NotificationTimeDto(
            //               hour: time.hour,
            //               minute: time.minute,
            //               weekDays: _defaultPeriodicity,
            //             );
            //     },
            //   ),
            // ],
            const SizedBox(height: 30),
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
    final result = await context.read<GoalScreenCubit>().save(_collectData());
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
        type: _goalType,
        sendNotifications: _notificationsEnabled,
        notificationsTime: _notificationTime,
      );
    }
    return GoalDto(
      title: _titleField.text,
      description: _descriptionField.text,
      type: _goalType,
      sendNotifications: _notificationsEnabled,
      notificationsTime: _notificationTime,
    );
  }
}
