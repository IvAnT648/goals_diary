import 'package:flutter/material.dart';

import '../../common/resources.dart';
import '../../domain/models.dart';
import '../components.dart';
import '../utils.dart';

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
    return TouchableArea(
      onTap: onTap,
      hasSplashEffect: true,
      child: Padding(
        padding: _padding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: goal.periodicity.isEmpty ? 7 : 0,
                    ),
                    child: Text(
                      goal.title,
                      style: TextStyles.h3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  if (goal.periodicity.isNotEmpty) ...[
                    const SizedBox(height: 5),
                    Text(
                      goal.getWeekDaysLine(),
                      style: TextStyles.h5.copyWith(color: AppColors.hintText),
                    ),
                  ],
                ],
              ),
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

class UserGoalsListItem extends StatelessWidget {
  static const _padding = EdgeInsets.symmetric(
    vertical: 15,
    horizontal: 20,
  );

  final GoalDto goal;
  final VoidCallback onTap;
  final IconData trailingIcon;

  const UserGoalsListItem({
    Key? key,
    required this.goal,
    required this.onTap,
    this.trailingIcon = Icons.arrow_forward_ios_outlined,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TouchableArea(
      onTap: onTap,
      hasSplashEffect: true,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.gray[20],
          borderRadius: BorderRadius.circular(10),
        ),
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
                    vertical: goal.periodicity.isEmpty ? 7 : 0,
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
                if (goal.periodicity.isNotEmpty) ...[
                  const SizedBox(height: 5),
                  Text(
                    goal.getWeekDaysLine(),
                    style: TextStyles.h5.copyWith(color: AppColors.hintText),
                  ),
                ],
              ],
            ),
            Icon(
              trailingIcon,
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
class ActivityCard extends StatelessWidget {
  static const double _borderRadius = 15;
  static const double _iconSize = 35;

  final GoalActivityDto entity;
  final VoidCallback? onLongTap;
  final VoidCallback? onShortTap;

  ActivityCard({
    Key? key,
    required this.entity,
    this.onLongTap,
    this.onShortTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    late final Color color;
    late final Color onColor;
    late final Color buttonColor;
    late final String hintText;
    late final String buttonText;

    if (entity.isDone) {
      color = AppColors.primary;
      onColor = AppColors.onPrimary;
      hintText = l10n.screenActivityGoalAchieved;
      buttonText = l10n.screenActivityCancelGoalButton;
      buttonColor = AppColors.primary[10];
    } else {
      color = AppColors.secondary;
      onColor = AppColors.onSecondary;
      hintText = l10n.screenActivityGoalNotAchieved;
      buttonText = l10n.screenActivityCompleteGoalButton;
      buttonColor = AppColors.accent;
    }

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(_borderRadius),
        color: color,
        boxShadow: [
          BoxShadow(
            color: AppColors.gray,
            offset: const Offset(0, 3),
            blurRadius: 3,
          ),
        ],
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
                    entity.goal.title,
                    style: TextStyles.h2.copyWith(color: onColor),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                if (entity.isDone) ...[
                  const SizedBox(width: 1),
                  Icon(
                    Icons.check_circle_outline_outlined,
                    color: AppColors.positive[10],
                    size: _iconSize,
                  ),
                ],
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
                onTap: onShortTap,
                onLongPress: onLongTap,
              )
            ],
          ),
        ],
      ),
    );
  }
}
