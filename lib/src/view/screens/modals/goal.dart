import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goals_diary/src/common/resources.dart';

import '../../../domain/models/goal.dart';
import '../../components/dialog.dart';
import '../../utils.dart';

void showGoalInfoModal(BuildContext context, GoalDto goal) async {
  final l10n = S.of(context);
  final hasDescription =
      goal.description != null && goal.description!.isNotEmpty;
  final hasPeriodicity = goal.periodicity.isNotEmpty;

  return showCupertinoDialog(
    context: context,
    barrierDismissible: true,
    builder: (_) => InfoDialog(
      title: Text(
        l10n.modalGoalInfoTitle(goal.title),
        style: TextStyles.h3.copyWith(
          color: AppColors.primary,
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (hasDescription) ...[
            Divider(),
            Text(
              l10n.modalGoalInfoDescriptionLabel,
              style: TextStyles.h3,
            ),
            Text(
              goal.description!,
              style: TextStyle(
                color: AppColors.hintText,
              ),
            ),
            const SizedBox(height: 5),
          ],
          if (hasPeriodicity) ...[
            Divider(),
            Text(
              "${l10n.modalGoalInfoPeriodicityLabel}: "
                  "${goal.joinWeekDaysShort()}",
              style: TextStyle(
                color: AppColors.hintText,
              ),
            ),
          ]
        ],
      ),
    ),
  );
}
