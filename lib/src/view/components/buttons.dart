
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../common/resources/styles.dart';
import '../../domain/models.dart';
import '../constants.dart';

enum ButtonType {
  filled,
  outlined,
}

/// Interactive touchable area
class TouchableArea extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;
  final bool hasSplashEffect;

  const TouchableArea({
    Key? key,
    required this.child,
    this.onTap,
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

class RoundedButtonWrap extends StatelessWidget {
  final ButtonType type;
  final VoidCallback onTap;
  final String text;
  final EdgeInsets? padding;
  final TextStyle? textStyle;
  final Color? primaryColor;
  final Color? onPrimaryColor;
  final bool isUpperText;

  const RoundedButtonWrap({
    Key? key,
    required this.type,
    required this.onTap,
    required this.text,
    this.padding,
    this.textStyle,
    this.primaryColor,
    this.onPrimaryColor,
    this.isUpperText = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (type == ButtonType.filled) {
      return RoundedButton(
        text: text,
        onTap: onTap,
        padding: padding,
        textStyle: textStyle,
        primary: primaryColor,
        onPrimary: onPrimaryColor,
        isUpperText: isUpperText,
      );
    }
    return OutlineRoundedButton(
      text: text,
      onTap: onTap,
      padding: padding,
      color: primaryColor,
      upperText: isUpperText,
    );
  }
}

class RoundedButton extends StatelessWidget {
  static const _defaultPadding = EdgeInsets.symmetric(
    vertical: 18,
    horizontal: 25,
  );
  static TextStyle _defaultTextStyle = TextStyles.h4;

  final String text;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final EdgeInsets? padding;
  final TextStyle? textStyle;
  final Color? primary;
  final Color? onPrimary;
  final bool isUpperText;
  final double? elevation;

  const RoundedButton({
    Key? key,
    required this.text,
    this.onTap,
    this.onLongPress,
    this.padding,
    this.textStyle,
    this.primary,
    this.onPrimary,
    this.isUpperText = true,
    this.elevation,
  })  : assert(onTap != null || onLongPress != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      onLongPress: onLongPress,
      style: ElevatedButton.styleFrom(
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(ButtonBorderRadius)),
        ),
        padding: padding ?? _defaultPadding,
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
  final TextStyle? textStyle;
  final bool upperText;
  final EdgeInsets? padding;
  final Color? color;

  const OutlineRoundedButton({
    Key? key,
    required this.onTap,
    required this.text,
    this.upperText = true,
    this.padding = _defaultPadding,
    this.color,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: color ?? AppColors.primary,
          width: 1,
        ),
        shape: StadiumBorder(),
        primary: AppColors.hintText,
        padding: padding,
      ),
      child: Text(
        upperText ? text.toUpperCase() : text,
        style: textStyle ?? TextStyles.h4,
      ),
    );
  }
}

class NonClickableRoundedButton extends StatelessWidget {
  static const _padding = EdgeInsets.symmetric(
    vertical: 10,
  );

  final String text;
  final bool upperText;

  const NonClickableRoundedButton({
    Key? key,
    required this.text,
    this.upperText = true,
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
          upperText ? text.toUpperCase() : text,
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


enum _LikeButtonIconState {
  active,
  loading,
  inactive,
}

class LikeButton extends StatefulWidget {
  final int qty;
  final bool isActive;
  final VoidCallback? onTap;
  final double size;

  const LikeButton({
    Key? key,
    required this.qty,
    required this.isActive,
    required this.onTap,
    this.size = 24,
  }) : super(key: key);

  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  static const double _loadingIndicatorSize = 10;

  late bool _lastIsActive = widget.isActive;
  late _LikeButtonIconState _state = _getState(widget.isActive);

  _LikeButtonIconState _getState(bool value) => value
      ? _LikeButtonIconState.active
      : _LikeButtonIconState.inactive;

  @override
  Widget build(BuildContext context) {
    if (_state == _LikeButtonIconState.loading
        && _lastIsActive != widget.isActive
    ) {
      _state = _getState(widget.isActive);
      _lastIsActive = widget.isActive;
    }
    return TouchableArea(
      onTap: _onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _stateToWidget(),
          if (widget.qty != 0 && _state != _LikeButtonIconState.loading) ...[
            const SizedBox(width: 4),
            Text(
              widget.qty.toString(),
              style: TextStyles.normalHint,
            ),
          ],
        ],
      ),
    );
  }

  void _onTap() {
    if (widget.onTap != null) {
      widget.onTap!();
    }
    setState(() {
      _state = _LikeButtonIconState.loading;
    });
  }

  Widget _stateToWidget() {
    IconData? icon;
    Color? color;
    switch (_state) {
      case _LikeButtonIconState.loading:
        return Container(
          height: _loadingIndicatorSize,
          width: _loadingIndicatorSize,
          padding: const EdgeInsets.only(left: 8),
          child: CupertinoActivityIndicator(),
        );
      case _LikeButtonIconState.active:
        icon = Icons.favorite;
        color = AppColors.secondary;
        break;
      case _LikeButtonIconState.inactive:
        icon = Icons.favorite_outline;
        color = AppColors.gray[-10];
        break;
    }
    return Icon(
      icon,
      color: color,
      size: widget.size,
    );
  }
}

class CommentButton extends StatefulWidget {
  final int qty;
  final void Function(bool) onTap;
  final bool isActive;
  final double size;

  const CommentButton({
    Key? key,
    required this.qty,
    required this.onTap,
    required this.isActive,
    this.size = 24,
  }) : super(key: key);

  @override
  _CommentButtonState createState() => _CommentButtonState();
}

class _CommentButtonState extends State<CommentButton> {
  late bool _isActive = widget.isActive;

  @override
  Widget build(BuildContext context) {
    return TouchableArea(
      onTap: () {
        setState(() {
          _isActive = !_isActive;
        });
        widget.onTap(_isActive);
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            _isActive ? Icons.chat_bubble : Icons.chat_bubble_outline,
            color: _isActive ? AppColors.primary : AppColors.gray[-10],
            size: widget.size,
          ),
          if (widget.qty != 0) ...[
            const SizedBox(width: 4),
            Text(
              widget.qty.toString(),
              style: TextStyles.normalHint,
            ),
          ],
        ],
      ),
    );
  }
}

class CommentFakeButton extends StatelessWidget {
  final int qty;
  final bool isActive;
  final VoidCallback? onTap;
  final double size;

  const CommentFakeButton({
    Key? key,
    required this.qty,
    required this.isActive,
    this.onTap,
    this.size = 24,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widget = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          isActive ? Icons.chat_bubble : Icons.chat_bubble_outline,
          color: isActive ? AppColors.primary : AppColors.gray[-10],
          size: size,
        ),
        if (qty != 0) ...[
          const SizedBox(width: 4),
          Text(
            qty.toString(),
            style: TextStyles.normalHint,
          ),
        ],
      ],
    );

    if (onTap == null) {
      return widget;
    }

    return TouchableArea(
      onTap: onTap,
      child: widget,
    );
  }
}
