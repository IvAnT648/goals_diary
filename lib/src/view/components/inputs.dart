import 'package:flutter/material.dart';

import '../../common/resources.dart';
import '../../domain/models/goals.dart';
import '../components.dart';
import 'uitls.dart';

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

class GoalTypeSelector extends StatelessWidget {
  final GoalType? selected;
  final void Function(GoalType newType) onChange;

  const GoalTypeSelector({
    Key? key,
    required this.selected,
    required this.onChange,
  }) : super(key: key);

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
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: selected == GoalType.private
                    ? _buildInactiveButton(GoalType.private)
                    : _buildActiveButton(GoalType.private),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: selected == GoalType.public
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
      onTap: () => onChange(option),
    );
  }

  Widget _buildInactiveButton(GoalType option) {
    return NonClickableRoundedButton(text: option.toText());
  }
}
