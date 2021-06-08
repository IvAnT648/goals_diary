import 'package:flutter/material.dart';

import '../../common/resources.dart';
import '../../domain/models/user.dart';

class UserAvatar extends StatelessWidget {
  static const double _borderSize = 1;

  final UserDto userInfo;
  final double radius;
  final Color? abbrColor;
  final Color? abbrBackgroundColor;
  final bool isBoldAbbr;
  final bool isBordered;

  const UserAvatar({
    Key? key,
    required this.userInfo,
    this.radius = 24,
    this.abbrColor,
    this.abbrBackgroundColor,
    this.isBoldAbbr = true,
    this.isBordered = false,
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
      borderSide: isBordered
          ? BorderSide(
              color: AppColors.gray.withOpacity(0.3),
              width: _borderSize,
            )
          : BorderSide.none,
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
  final BorderSide borderSide;

  const AbbrCircleAvatar({
    Key? key,
    required this.text,
    this.radius = 24,
    required this.color,
    required this.backgroundColor,
    required this.isBold,
    required this.borderSide,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isBordered = borderSide != BorderSide.none;

    final avatar = CircleAvatar(
      radius: !isBordered ? radius : radius - borderSide.width,
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
    if (!isBordered) {
      return avatar;
    }
    return CircleAvatar(
      radius: radius,
      backgroundColor: borderSide.color,
      child: avatar,
    );
  }
}
