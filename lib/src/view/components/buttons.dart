import 'package:flutter/material.dart';

import '../../common/resources/styles.dart';
import '../constants.dart';

/// Interactive touchable area
class TouchableArea extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;
  final bool hasSplashEffect;

  const TouchableArea({
    Key? key,
    required this.child,
    required this.onTap,
    this.hasSplashEffect = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
              splashColor: hasSplashEffect
                  ? Theme.of(context).splashColor
                  : Colors.transparent,
            ),
          ),
        ),
      ],
    );
  }
}

class RoundedButton extends StatelessWidget {
  static const _defaultPadding = EdgeInsets.symmetric(
    vertical: 18,
    horizontal: 25,
  );
  static TextStyle _defaultTextStyle = TextStyles.h4;

  final VoidCallback onTap;
  final String text;
  final EdgeInsets padding;
  final TextStyle? textStyle;
  final Color? primary;
  final Color? onPrimary;
  final bool isUpperText;

  const RoundedButton({
    Key? key,
    required this.onTap,
    required this.text,
    this.padding = _defaultPadding,
    this.textStyle,
    this.primary,
    this.onPrimary,
    this.isUpperText = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(ButtonBorderRadius)),
        ),
        padding: padding,
        primary: primary,
        onPrimary: onPrimary,
      ),
      child: Text(
        isUpperText ? text.toUpperCase() : text,
        style: textStyle ?? _defaultTextStyle,
      ),
    );
  }
}

class OutlineRoundedButton extends StatelessWidget {
  static const _defaultPadding = EdgeInsets.symmetric(
    vertical: 10,
  );

  final VoidCallback onTap;
  final String text;
  final bool isSelected;
  final bool upperText;
  final EdgeInsets? padding;

  const OutlineRoundedButton({
    Key? key,
    required this.onTap,
    required this.text,
    this.isSelected = true,
    this.upperText = false,
    this.padding = _defaultPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: AppColors.primary,
          width: 1,
        ),
        shape: StadiumBorder(),
        primary: AppColors.hintText,
        onSurface: AppColors.primary,
        shadowColor: AppColors.primary,
        padding: padding,
      ),
      child: Text(
        upperText ? text.toUpperCase() : text,
        style: TextStyles.h4,
      ),
    );
  }
}

class NonClickableRoundedButton extends StatelessWidget {
  static const _padding = EdgeInsets.symmetric(
    vertical: 10,
  );

  final String text;

  const NonClickableRoundedButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: _padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(ButtonBorderRadius)),
        color: AppColors.primary,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyles.h4.copyWith(color: AppColors.onPrimary),
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
            color: AppColors.gray[-10],
          ),
        ),
      ),
    );
  }
}
