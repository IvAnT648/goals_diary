import 'package:flutter/material.dart';
import 'package:goals_diary/common/res/styles.dart';

import '../constants.dart';

/// Interactive touchable area
class TouchableArea extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;
  final bool hasSplashEffect;

  const TouchableArea({
    Key? key,
    required this.child,
    this.hasSplashEffect = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Positioned.fill(
          child: InkWell(
            onTap: onTap,
            splashColor: hasSplashEffect
                ? Theme.of(context).splashColor
                : Colors.transparent,
            highlightColor: AppColors.gray[20],
          ),
        ),
      ],
    );
  }
}

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
            borderRadius: BorderRadius.all(Radius.circular(ButtonBorderRadius)),
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

class HyperLinkButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const HyperLinkButton({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TouchableArea(
      onTap: onTap,
      child: Container(
        padding: HyperLinkButtonPadding,
        child: Text(
          text.toLowerCase(),
          style: TextStyles.italicNormal.copyWith(
            color: AppColors.hintText,
          ),
        ),
      ),
    );
  }
}
