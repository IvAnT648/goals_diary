
part of 'screen.dart';

class ViewProfileComponent extends StatelessWidget {
  final UserDto info;
  final bool isSubscribed;

  const ViewProfileComponent({
    Key? key,
    required this.info,
    required this.isSubscribed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);

    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          vertical: 35,
          horizontal: 60,
        ),
        child: Column(
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
              style: TextStyles.normalLight.copyWith(color: AppColors.hintText),
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
                  style:
                      TextStyles.normal.copyWith(color: AppColors.regularText),
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
            const SizedBox(height: 20),
            RoundedButtonWrap(
              type: isSubscribed ? ButtonType.outlined : ButtonType.filled,
              text: isSubscribed
                  ? l10n.screenProfileUnsubscribeButton
                  : l10n.screenProfileSubscribeButton,
              padding: buttonsPadding,
              primaryColor: AppColors.secondary,
              onTap: () {
                if (isSubscribed) {
                  context.read<ProfileScreenCubit>().unsubscribe(info);
                } else {
                  context.read<ProfileScreenCubit>().subscribe(info);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
