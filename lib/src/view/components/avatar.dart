import 'package:flutter/material.dart';

import '../../common/resources.dart';
import '../../domain/models/user.dart';

class UserAvatar extends StatelessWidget {
  final UserDto userInfo;
  final double radius;
  final Color? abbrColor;
  final Color? abbrBackgroundColor;
  final bool isBoldAbbr;

  const UserAvatar({
    Key? key,
    required this.userInfo,
    this.radius = 24,
    this.abbrColor,
    this.abbrBackgroundColor,
    this.isBoldAbbr = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (userInfo.avatarUrl != null) {
      return ImageAvatar(
        radius: radius,
        imageUrl: userInfo.avatarUrl!,
      );
    }
    return AbbrCircleAvatar(
      radius: radius,
      text: userInfo.nameAbbreviation,
      color: abbrColor ?? AppColors.accent,
      backgroundColor: abbrBackgroundColor ?? AppColors.onPrimary,
      isBold: isBoldAbbr,
    );
  }
}

class ImageAvatar extends StatelessWidget {
  final String imageUrl;
  final double radius;

  const ImageAvatar({
    Key? key,
    required this.imageUrl,
    this.radius = 24,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: AppColors.onPrimary[-10],
      backgroundImage: NetworkImage(imageUrl),
    );
  }
}

class AbbrCircleAvatar extends StatelessWidget {
  static const double _fontSizeCoeff = 1.5;

  final String text;
  final double radius;
  final Color color;
  final Color backgroundColor;
  final bool isBold;

  const AbbrCircleAvatar({
    Key? key,
    required this.text,
    this.radius = 24,
    required this.color,
    required this.backgroundColor,
    required this.isBold,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: backgroundColor,
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontWeight: isBold ? FontWeight.bold : null,
          fontSize: radius / _fontSizeCoeff,
        ),
      ),
    );
  }
}
