
import 'package:flutter/material.dart';

class LabelValueRow extends StatelessWidget {
  final Widget label;
  final Widget value;

  const LabelValueRow({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        label,
        value,
      ],
    );
  }
}

class PrimaryIconButton extends StatelessWidget {
  final IconData icon;
  final double size;
  final VoidCallback onTap;
  final Color color;
  final bool isActive;

  const PrimaryIconButton({
    Key? key,
    required this.icon,
    required this.onTap,
    required this.color,
    this.size = 24,
    this.isActive = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: IconButton(
        color: color,
        icon: Icon(icon),
        padding: EdgeInsets.zero,
        onPressed: isActive ? onTap : null,
      ),
    );
  }
}
