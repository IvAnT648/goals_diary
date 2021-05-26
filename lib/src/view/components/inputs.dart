import 'package:flutter/material.dart';
import 'package:weekday_selector/weekday_selector.dart';

import '../../common/resources.dart';
import '../../domain/models.dart';
import '../../domain/utils.dart';
import '../components.dart';
import 'layout.dart';
import 'utils.dart';

class DefaultTextField extends StatelessWidget {
  static const double _borderWidth = 1.2;
  static const double _labelHeight = 0.8;

  final TextEditingController? controller;
  final String? label;
  final bool obscureText;
  final Function(String)? onChanged;

  const DefaultTextField({
    Key? key,
    this.controller,
    this.label,
    this.onChanged,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      obscureText: obscureText,
      cursorColor: AppColors.primary,
      cursorWidth: 1,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        labelText: label,
        labelStyle: TextStyle(
          height: _labelHeight,
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.primary,
            width: _borderWidth,
          ),
        ),
        isDense: true,
      ),
      style: TextStyle(
        fontSize: 16,
      ),
    );
  }
}

class BigTextField extends StatelessWidget {
  static const double _borderWidth = 1.2;
  static const double _labelHeight = 0.8;
  static const int _minLinesQty = 5;
  static const int _maxLinesQty = 8;

  final TextEditingController? controller;
  final String? label;
  final bool obscureText;
  final Function(String)? onChanged;

  const BigTextField({
    Key? key,
    this.controller,
    this.label,
    this.onChanged,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      obscureText: obscureText,
      cursorColor: AppColors.primary,
      cursorWidth: 1,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        labelText: label,
        labelStyle: TextStyle(
          height: _labelHeight,
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.primary,
            width: _borderWidth,
          ),
        ),
        isDense: true,
      ),
      style: TextStyle(
        fontSize: 16,
      ),
      minLines: _minLinesQty,
      maxLines: _maxLinesQty,
    );
  }
}

class GoalTypeSelector extends StatefulWidget {
  final GoalType? selected;
  final void Function(GoalType newType) onChanged;

  const GoalTypeSelector({
    Key? key,
    required this.selected,
    required this.onChanged,
  }) : super(key: key);

  @override
  _GoalTypeSelectorState createState() => _GoalTypeSelectorState();
}

class _GoalTypeSelectorState extends State<GoalTypeSelector> {
  static const double _labelPadding = 8;
  static const double _buttonsPadding = 12;

  GoalType? _selected;

  @override
  void initState() {
    _selected = widget.selected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).screenEditGoalTypeLabel,
            style: TextStyles.normal.copyWith(color: AppColors.hintText),
          ),
          const SizedBox(height: _labelPadding),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: _selected == GoalType.private
                    ? _buildInactiveButton(GoalType.private)
                    : _buildActiveButton(GoalType.private),
              ),
              const SizedBox(width: _buttonsPadding),
              Expanded(
                child: _selected == GoalType.public
                    ? _buildInactiveButton(GoalType.public)
                    : _buildActiveButton(GoalType.public),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActiveButton(GoalType option) {
    return OutlineRoundedButton(
      text: option.toText(),
      upperText: false,
      onTap: () {
        setState(() {
          _selected = option;
        });
      },
    );
  }

  Widget _buildInactiveButton(GoalType option) {
    return NonClickableRoundedButton(
      text: option.toText(),
      upperText: false,
    );
  }
}

class CheckboxWithLabel extends StatefulWidget {
  final String label;
  final bool value;
  final void Function(bool?) onChanged;

  const CheckboxWithLabel({
    Key? key,
    required this.label,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<CheckboxWithLabel> createState() => _CheckboxWithLabelState();
}

class _CheckboxWithLabelState extends State<CheckboxWithLabel> {
  static const double _iconSize = 24;

  bool? _value;

  @override
  void initState() {
    _value = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LabelValueRow(
      label: Text(
        widget.label,
        style: TextStyles.normal.copyWith(color: AppColors.hintText),
      ),
      value: SizedBox(
        height: _iconSize,
        width: _iconSize,
        child: Checkbox(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          activeColor: AppColors.primary,
          value: _value,
          onChanged: (newValue) {
            setState(() {
              _value = newValue;
              widget.onChanged(newValue);
            });
          },
        ),
      ),
    );
  }
}

class SetNotificationsTime extends StatefulWidget {
  final NotificationTime? time;

  const SetNotificationsTime({
    Key? key,
    this.time,
  }) : super(key: key);

  @override
  State<SetNotificationsTime> createState() => _SetNotificationsTimeState();
}

class _SetNotificationsTimeState extends State<SetNotificationsTime> {
  static const double _iconSize = 24;
  static const double _rowVerticalSpace = 20;
  static NotificationTime _defaultTime = NotificationTime(
    hour: 9,
    minute: 0,
    weekDays: WeekDays.values.toSet(),
  );
  static List<String> _weekdayNames = [
    WeekDays.sunday.toShortLocaleStr(),
    WeekDays.monday.toShortLocaleStr(),
    WeekDays.tuesday.toShortLocaleStr(),
    WeekDays.wednesday.toShortLocaleStr(),
    WeekDays.thursday.toShortLocaleStr(),
    WeekDays.friday.toShortLocaleStr(),
    WeekDays.saturday.toShortLocaleStr(),
  ];

  final values = List.filled(7, true);

  late NotificationTime _time;

  @override
  void initState() {
    _time = widget.time ?? _defaultTime;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LabelValueRow(
          label: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                S.of(context).screenEditGoalNotificationsTimeLabel + ':',
                style: TextStyles.normalHint,
              ),
              const SizedBox(width: 8),
              Text(
                _time.toDefaultTimeFormat(),
                style: TextStyles.normal,
              ),
            ],
          ),
          value: PrimaryIconButton(
            icon: Icons.settings,
            color: AppColors.primary,
            size: _iconSize,
            onTap: () async {
              final newTime = await showTimePicker(
                context: context,
                initialTime: _time,
                initialEntryMode: TimePickerEntryMode.dial,
              );
              if (newTime != null) {
                _updateTime(newTime);
              }
            },
          ),
        ),
        const SizedBox(height: _rowVerticalSpace),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).screenEditGoalNotificationsDaysLabel + ':',
              style: TextStyles.normalHint,
            ),
            const SizedBox(height: 7),
            // TODO: integrate
            WeekdaySelector(
              selectedElevation: 10,
              elevation: 5,
              disabledElevation: 0,
              shortWeekdays: _weekdayNames,
              firstDayOfWeek: DateTime.monday,
              onChanged: (i) {
                setState(() {
                  final index = i % 7;
                  values[index] = !values[index];
                });
              },
              values: values,
            ),
          ],
        ),
      ],
    );
  }

  void _updateTime(TimeOfDay newTime) {
    setState(() {
      _time = _time.copyWith(hour: newTime.hour, minute: newTime.minute);
    });
  }
}
