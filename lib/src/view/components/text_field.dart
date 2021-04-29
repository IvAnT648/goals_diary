import 'package:flutter/material.dart';
import 'package:goals_diary/common/res.dart';

class AppTextField extends StatelessWidget {
  static const double _borderWidth = 1.2;
  static const double _labelHeight = 0.8;

  final TextEditingController? controller;
  final String? label;
  final bool obscureText;
  final Function(String)? onChanged;

  const AppTextField({
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
        fontSize: 15,
      ),
    );
  }
}
