import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weekday_selector/weekday_selector.dart';

import '../../common/resources.dart';
import '../../domain/models.dart';
import '../../view/utils.dart';
import '../components.dart';
import 'layout.dart';
import 'utils.dart';

class DefaultTextField extends StatelessWidget {
  static const double _borderWidth = 1.2;
  static const double _labelHeight = 0.8;

  final TextEditingController? controller;
  final String? label;
  final bool obscureText;
  final bool autofocus;
  final Function(String)? onChanged;
  final TextCapitalization textCapitalization;
  final List<TextInputFormatter>? inputFormatters;

  const DefaultTextField({
    Key? key,
    this.controller,
    this.label,
    this.onChanged,
    this.autofocus = false,
    this.obscureText = false,
    this.textCapitalization = TextCapitalization.none,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      obscureText: obscureText,
      cursorColor: AppColors.primary,
      autofocus: autofocus,
      cursorWidth: 1,
      textCapitalization: textCapitalization,
      inputFormatters: inputFormatters,
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

class OutlinedTextField extends StatelessWidget {
  static const int _maxLines = 5;

  final TextEditingController? controller;
  final bool obscureText;
  final Function(String)? onChanged;
  final double fontSize;
  final String? hintText;

  OutlinedTextField({
    Key? key,
    this.controller,
    this.obscureText = false,
    this.onChanged,
    this.fontSize = 14,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: AppColors.gray[5]),
    );

    return TextField(
      controller: controller,
      onChanged: onChanged,
      obscureText: obscureText,
      cursorColor: AppColors.regularText,
      cursorWidth: 1,
      style: TextStyle(
        fontSize: fontSize,
      ),
      maxLines: _maxLines,
      minLines: 1,
      decoration: InputDecoration(
        enabledBorder: border,
        focusedBorder: border,
        filled: true,
        fillColor: AppColors.onPrimary,
        isDense: true,
        contentPadding: const EdgeInsets.all(10),
        hintText: hintText,
      ),
    );
  }
}

/// Custom text form field component
class CTextFormField extends StatelessWidget {
  static const double _borderWidth = 1.2;
  static const double _labelHeight = 0.8;

  final TextEditingController? controller;
  final String? label;
  final bool obscureText;
  final bool autofocus;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldValidator<String>? validator;

  const CTextFormField({
    Key? key,
    this.controller,
    this.onChanged,
    this.label,
    this.obscureText = false,
    this.autofocus = false,
    this.inputFormatters,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      onChanged: onChanged,
      obscureText: obscureText,
      autofocus: autofocus,
      inputFormatters: inputFormatters,
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
    );
  }
}

class GoalTypeSelector extends StatefulWidget {
  final GoalType selected;
  final void Function(GoalType newType) onChanged;

  const GoalTypeSelector({
    Key? key,
    this.selected = GoalType.private,
    required this.onChanged,
  }) : super(key: key);

  @override
  _GoalTypeSelectorState createState() => _GoalTypeSelectorState();
}

class _GoalTypeSelectorState extends State<GoalTypeSelector> {
  static const double _labelPadding = 8;
  static const double _buttonsPadding = 12;

  late GoalType _selected;

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
          widget.onChanged(option);
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

class GoalNotificationTime extends StatefulWidget {
  final TimeOfDay time;
  final void Function(TimeOfDay) onChanged;

  const GoalNotificationTime({
    Key? key,
    required this.time,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<GoalNotificationTime> createState() => _GoalNotificationTimeState();
}

class _GoalNotificationTimeState extends State<GoalNotificationTime> {
  static const double _iconSize = 24;
  static const double _rowVerticalSpace = 20;

  late TimeOfDay _time = widget.time;

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
                _time.format(context),
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
                setState(() {
                  _time = newTime;
                });
                widget.onChanged(_time);
              }
            },
          ),
        ),
        const SizedBox(height: _rowVerticalSpace),
      ],
    );
  }
}

class GoalPeriodicity extends StatefulWidget {
  final Set<WeekDays> days;
  final void Function(Set<WeekDays>) onChanged;

  const GoalPeriodicity({
    Key? key,
    required this.days,
    required this.onChanged,
  }) : super(key: key);

  @override
  _GoalPeriodicityState createState() => _GoalPeriodicityState();
}

class _GoalPeriodicityState extends State<GoalPeriodicity> {
  static List<String> _weekdayNames = [
    WeekDays.monday.toShortLocaleStr(),
    WeekDays.tuesday.toShortLocaleStr(),
    WeekDays.wednesday.toShortLocaleStr(),
    WeekDays.thursday.toShortLocaleStr(),
    WeekDays.friday.toShortLocaleStr(),
    WeekDays.saturday.toShortLocaleStr(),
    WeekDays.sunday.toShortLocaleStr(),
  ];

  late Set<WeekDays> _days = widget.days;
  late final values = toWeekDaysSelector(_days);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).screenEditGoalNotificationsDaysLabel + ':',
          style: TextStyles.normalHint,
        ),
        const SizedBox(height: 7),
        WeekdaySelector(
          selectedElevation: 10,
          elevation: 5,
          disabledElevation: 0,
          shortWeekdays: _weekdayNames,
          firstDayOfWeek: 0,
          onChanged: (i) {
            setState(() {
              final index = i % 7;
              // Prevent empty periodicity
              if (values[index] && values.length == 1) {
                return;
              }
              values[index] = !values[index];
              _days = fromWeekDaysSelector(values);
            });
            widget.onChanged(_days);
          },
          values: values,
        ),
      ],
    );
  }

  List<bool> toWeekDaysSelector(Set<WeekDays> set) {
    final array = <bool>[];
    for (var day in WeekDays.values) {
      array.add(set.contains(day));
    }
    return array;
  }

  Set<WeekDays> fromWeekDaysSelector(List<bool> array) {
    Set<WeekDays> set = {};
    final values = WeekDays.values;
    for (var i = 0; i < values.length; i++) {
      if (array[i]) {
        set.add(values[i]);
      }
    }
    return set;
  }
}

