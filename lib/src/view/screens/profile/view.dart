part of 'screen.dart';

class ViewProfileComponent extends StatelessWidget {
  final UserDto info;

  const ViewProfileComponent({
    Key? key,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: _ProfileInfo(info: info),
            ),
            _Goals(goals: info.goals),
          ],
        ),
      ),
    );
  }
}

class _ProfileInfo extends StatelessWidget {
  final UserDto info;

  const _ProfileInfo({
    Key? key,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);

    return Column(
      children: [
        UserAvatar(
          userInfo: info,
          radius: avatarRadius,
          abbrColor: AppColors.onPrimary[-10],
          abbrBackgroundColor: AppColors.primary,
          isBoldAbbr: false,
        ),
        const SizedBox(height: 12),
        Text(
          info.nicknameWithAt,
          style: TextStyles.normalLight.copyWith(
            color: AppColors.hintText,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          info.fullName,
          style: TextStyles.h2,
        ),
        if (info.about != null) ...[
          const SizedBox(height: 12),
          Text(
            info.about!,
            style: TextStyles.normalHint,
          ),
        ],
        if (info.motto != null) ...[
          const SizedBox(height: 15),
          RichText(
            text: TextSpan(
              text: S.of(context).screenProfileMottoField + ': ',
              style: TextStyles.normal.copyWith(
                color: AppColors.regularText,
              ),
              children: [
                TextSpan(
                  text: info.motto!,
                  style: TextStyles.italicNormal.copyWith(
                    color: AppColors.hintText,
                  ),
                ),
              ],
            ),
          ),
        ],
        if (info.isSubscribed != null) ...[
          const SizedBox(height: 20),
          RoundedButtonWrap(
            type: info.isSubscribed! ? ButtonType.outlined : ButtonType.filled,
            text: info.isSubscribed!
                ? l10n.screenProfileUnsubscribeButton
                : l10n.screenProfileSubscribeButton,
            padding: buttonsPadding,
            primaryColor: AppColors.secondary,
            onTap: () {
              if (info.isSubscribed!) {
                context.read<ProfileScreenCubit>().unsubscribe(info);
              } else {
                context.read<ProfileScreenCubit>().subscribe(info);
              }
            },
          ),
        ],
        const SizedBox(height: 50),
      ],
    );
  }
}

class _Goals extends StatelessWidget {
  final List<GoalDto> goals;

  const _Goals({
    Key? key,
    required this.goals,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (goals.isEmpty) {
      return Align(
        alignment: Alignment.center,
        child: Text(
          S.of(context).screenProfileHasNoPublicGoals,
          style: TextStyle(
            fontSize: 16,
            color: AppColors.hintText,
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).screenProfileUserGoalsTitle,
          style: TextStyle(
            fontSize: 16,
            color: AppColors.hintText,
          ),
        ),
        const SizedBox(height: 10),
        ...goals.expand((goal) => [
          UserGoalsListItem(
            goal: goal,
            trailingIcon: Icons.info_outline,
            onTap: () {
              showGoalInfoModal(context, goal);
            },
          ),
          const SizedBox(height: 7),
        ]).toList()..removeLast(),
        const SizedBox(height: 30),
      ],
    );
  }
}
