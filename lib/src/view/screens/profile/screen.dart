import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/models.dart';
import '../../../common/resources.dart';
import '../../components.dart';
import '../drawer/screen.dart';
import 'cubit.dart';

const double avatarRadius = 75;

const EdgeInsets buttonsPadding = EdgeInsets.symmetric(
  vertical: 10,
  horizontal: 40,
);

class ProfileScreen extends StatelessWidget {
  static const String id = '/profile';
  static const String idOther = '/profile:user';
  static const String userArg = 'user';

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileScreenCubit, ProfileScreenState>(
      builder: (context, state) {
        return Scaffold(
          appBar: state is OwnProfileScreenState && !state.withReturnableAppBar
              ? MenuTopBar(title: S.of(context).screenMyProfileTitle)
              : ReturnableTopBar(title: S.of(context).screenProfileTitle),
          drawer: state is OwnProfileScreenState
              ? AppDrawer(selected: DrawerMenuItemType.profile)
              : null,
          body: state.when(
            loading: () => const _LoadingState(),
            own: (info, withReturnableAppBar) => _OwnProfile(info),
            subscribed: (info) => _OtherProfile(
              info: info,
              isSubscribed: true,
            ),
            unsubscribed: (info) => _OtherProfile(
              info: info,
              isSubscribed: false,
            ),
            userNotFound: () => const _UserNotFound(),
          ),
        );
      },
    );
  }
}

class _OwnProfile extends StatelessWidget {
  static const double _betweenFieldsSpace = 18;

  final _nameFieldController = TextEditingController();
  final _surnameFieldController = TextEditingController();
  final _mottoFieldController = TextEditingController();
  final _aboutFieldController = TextEditingController();

  final UserDto info;

  _OwnProfile(this.info, {Key? key}) : super(key: key) {
    _nameFieldController.text = info.name;
    _surnameFieldController.text = info.surname ?? '';
    _mottoFieldController.text = info.motto ?? '';
    _aboutFieldController.text = info.about ?? '';
  }

  @override
  Widget build(BuildContext context) {
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
            const SizedBox(height: 12),
            DefaultTextField(
              label: S.of(context).screenProfileNameField,
              controller: _nameFieldController,
            ),
            const SizedBox(height: _betweenFieldsSpace),
            DefaultTextField(
              label: S.of(context).screenProfileSurnameField,
              controller: _surnameFieldController,
            ),
            const SizedBox(height: _betweenFieldsSpace),
            DefaultTextField(
              label: S.of(context).screenProfileMottoField,
              controller: _mottoFieldController,
            ),
            const SizedBox(height: _betweenFieldsSpace),
            BigTextField(
              label: S.of(context).screenProfileAboutMe,
              controller: _aboutFieldController,
            ),
            const SizedBox(height: 25),
            RoundedButton(
              text: S.of(context).screenProfileSaveButton,
              primary: AppColors.positive,
              padding: buttonsPadding,
              onTap: () => _submit(context),
            ),
          ],
        ),
      ),
    );
  }

  void _submit(BuildContext context) async {
    final result = await context.read<ProfileScreenCubit>().save(
      name: _nameFieldController.text,
      surname: _surnameFieldController.text,
      motto: _mottoFieldController.text,
      about: _aboutFieldController.text,
    );
    final l10n = S.of(context);
    result.when(
      success: () {
        showSuccessSnackBar(l10n.screenProfileSuccessSave, context);
      },
      emptyName: () {
        showErrorSnackBar(l10n.screenProfileEmptyNameFail, context);
      },
      error: () {
        showErrorSnackBar(l10n.commonInternalErrorText, context);
      },
    );
  }
}

class _OtherProfile extends StatelessWidget {
  final UserDto info;
  final bool isSubscribed;

  const _OtherProfile({
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
                  style: TextStyles.normal.copyWith(color: AppColors.regularText),
                  children: [
                    TextSpan(
                      text: info.motto!,
                      style: TextStyles.italicNormal.copyWith(
                        color: AppColors.hintText,
                      ),
                    ),
                  ]
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

class _LoadingState extends StatelessWidget {
  const _LoadingState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator());
  }
}


class _UserNotFound extends StatelessWidget {
  const _UserNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        S.of(context).screenProfileNotFound,
        style: TextStyles.italicNormal,
      ),
    );;
  }
}

