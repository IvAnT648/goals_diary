import 'package:flutter/material.dart';
import 'package:goals_diary/common/res/styles.dart';

class RoundedButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const RoundedButton({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 236,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(23)),
          ),
          padding: EdgeInsets.symmetric(
            vertical: 18,
          ),
        ),
        child: Text(
          text.toUpperCase(),
          style: TextStyles.h4,
        ),
      ),
    );
  }
}
