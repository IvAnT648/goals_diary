import 'package:flutter/material.dart';

import '../../common/resources/styles.dart';
import '../../domain/models/goals.dart';
import '../components.dart';

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
                    goal.notificationsTime!.toText(),
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

