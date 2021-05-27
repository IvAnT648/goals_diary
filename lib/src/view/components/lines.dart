
import 'package:flutter/material.dart';

import '../../common/resources.dart';

class HorizontalLine extends StatelessWidget {
  final Color? color;
  final double thickness;
  final double length;
  final double radius;

  const HorizontalLine({
    Key? key,
    this.color,
    this.length = double.infinity,
    this.thickness = 5,
    this.radius = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: thickness,
      width: length,
      decoration: BoxDecoration(
        color: color ?? AppColors.gray[5],
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }
}
