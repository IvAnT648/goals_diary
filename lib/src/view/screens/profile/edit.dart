
part of 'screen.dart';

class EditProfileComponent extends StatelessWidget {
  static const double _betweenFieldsSpace = 18;

  final _nameFieldController = TextEditingController();
  final _surnameFieldController = TextEditingController();
  final _mottoFieldController = TextEditingController();
  final _aboutFieldController = TextEditingController();

  final UserDto info;

  EditProfileComponent(this.info, {Key? key}) : super(key: key) {
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
    final _name = _nameFieldController.text;
    final _surname = _surnameFieldController.text;
    final _motto = _mottoFieldController.text;
    final _about = _aboutFieldController.text;

    final l10n = S.of(context);
    context
        .read<ProfileScreenCubit>()
        .save(
          name: _name,
          surname: _surname,
          motto: _motto,
          about: _about,
        )
        .then((result) => result.when(
              success: () {
                showSuccessSnackBar(l10n.screenProfileSuccessSave, context);
              },
              emptyName: () {
                showErrorSnackBar(l10n.screenProfileEmptyNameFail, context);
              },
              error: () {
                showErrorSnackBar(l10n.commonInternalErrorText, context);
              },
            ));
  }
}
