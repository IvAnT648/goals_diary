import 'package:flutter/material.dart';

import '../../common/resources.dart';
import '../../domain/models.dart';
import '../components.dart';
import 'utils.dart';

class MyGoalsListItem extends StatelessWidget {
  static const _padding = EdgeInsets.symmetric(
    vertical: 5,
    horizontal: 10,
  );

  final GoalDto goal;
  final VoidCallback onTap;

  const MyGoalsListItem({
    Key? key,
    required this.goal,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TouchableArea(
      onTap: onTap,
      hasSplashEffect: true,
      child: Padding(
        padding: _padding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: goal.notificationsTime == null ? 7 : 0,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        goal.title,
                        style: TextStyles.h3,
                      ),
                      if (goal.isPrivate) ...[
                        const SizedBox(width: 3),
                        Icon(
                          Icons.lock_outline,
                          color: theme.colorScheme.secondary,
                          size: 12,
                        ),
                      ],
                    ],
                  ),
                ),
                if (goal.notificationsTime != null) ...[
                  const SizedBox(height: 5),
                  Text(
                    goal.notificationsTime!.getWeekDaysLine(),
                    style: TextStyles.h5.copyWith(color: AppColors.hintText),
                  ),
                ],
              ],
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: AppColors.accent,
            ),
          ],
        ),
      ),
    );
  }
}

class GoalsListDivider extends StatelessWidget {
  const GoalsListDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider();
  }
}

/// Button acts by long press
class ActivityCard extends StatefulWidget {
  final GoalActivityDto entity;
  final bool Function() onCompleteButtonTap;
  final bool Function() onCancelButtonTap;
  final VoidCallback? onShortTap;

  const ActivityCard({
    Key? key,
    required this.entity,
    required this.onCompleteButtonTap,
    required this.onCancelButtonTap,
    this.onShortTap,
  }) : super(key: key);

  @override
  _ActivityCardState createState() => _ActivityCardState();
}

class _ActivityCardState extends State<ActivityCard> {
  static const double _borderRadius = 15;
  static const double _iconSize = 35;

  late bool _isDone = widget.entity.isDone;

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    late final Color color;
    late final Color onColor;
    late final Color buttonColor;
    late final String hintText;
    late final String buttonText;
    late final bool Function() onTap;

    if (_isDone) {
      color = AppColors.primary;
      onColor = AppColors.onPrimary;
      hintText = l10n.screenActivityGoalAchieved;
      buttonText = l10n.screenActivityCancelGoalButton;
      buttonColor = AppColors.primary[10];
      onTap = widget.onCancelButtonTap;
    } else {
      color = AppColors.secondary;
      onColor = AppColors.onSecondary;
      hintText = l10n.screenActivityGoalNotAchieved;
      buttonText = l10n.screenActivityCompleteGoalButton;
      buttonColor = AppColors.accent;
      onTap = widget.onCompleteButtonTap;
    }

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(_borderRadius),
        color: color,
      ),
      padding: const EdgeInsets.only(
        left: 16,
        right: 11,
        top: 18,
        bottom: 10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: _iconSize,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    widget.entity.goal.title,
                    style: TextStyles.h2.copyWith(color: onColor),
                  ),
                ),
                if (_isDone)
                  Icon(
                    Icons.check_circle_outline_outlined,
                    color: AppColors.positive[10],
                    size: _iconSize,
                  ),
              ],
            ),
          ),
          const SizedBox(height: 45),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  hintText,
                  style: TextStyles.normal.copyWith(color: onColor),
                ),
              ),
              const SizedBox(width: 5),
              RoundedButton(
                text: buttonText,
                isUpperText: false,
                elevation: 0,
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                primary: buttonColor,
                textStyle: TextStyles.small,
                onTap: widget.onShortTap,
                onLongPress: () {
                  if (onTap()) {
                    setState(() {
                      _isDone = !_isDone;
                    });
                  }
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
