
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/resources/styles.dart';
import '../../../common/utils.dart';
import '../../../../generated/l10n.dart';
import '../../components.dart';
import '../../navigation.dart';
import '../../screens.dart';
import '../../utils.dart';
import 'cubit.dart';

class SignUpScreen extends StatelessWidget {
  static const double _inputFieldsPadding = 40;
  static const double _submitButtonWidth = 236;
  static const String id = '/sign-up';

  final _formKey = GlobalKey<FormState>();

  final _emailField = TextEditingController();
  final _nameField = TextEditingController();
  final _surnameField = TextEditingController();
  final _nicknameField = TextEditingController();
  final _passwordField = TextEditingController();
  final _password2Field = TextEditingController();

  SignUpScreen({Key? key}) : super(key: key);

  void _submit(BuildContext context) async {
    final l10n = S.of(context);

    if (!(_formKey.currentState?.validate() ?? false)) {
      return;
    }

    if (_passwordField.text != _password2Field.text) {
      return showErrorSnackBar(
        l10n.screenSignUpInvalidPassword,
        context,
      );
    }

    var result = await context.read<SignUpCubit>().signUp(
      email: _emailField.text,
      password: _passwordField.text,
      name: _nameField.text,
      surname: _surnameField.text.toNullable(),
      nickname: _nicknameField.text,
    );

    result.when(
      success: (_) {
        Navigation.replaceTo(Navigation.home);
      },
      alreadyExists: () {
        showErrorSnackBar(l10n.screenSignUpAlreadyExistsFail, context);
      },
      invalidEmail: () {
        showErrorSnackBar(l10n.screenSignUpInvalidEmailFail, context);
      },
      weakPassword: () {
        showErrorSnackBar(l10n.screenSignUpWeakPasswordFail, context);
      },
      internalError: () {
        showErrorSnackBar(l10n.commonInternalErrorText, context);
      },
      duplicatedNickname: () {
        showErrorSnackBar(l10n.screenSignUpDuplicatedNicknameFail, context);
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(
              horizontal: 60,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 40,
                    bottom: 10,
                  ),
                  child: Text(
                    S.of(context).screenSignUpTitle,
                    style: TextStyles.h1,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 60),
                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CTextFormField(
                        label: S.of(context).screenSignUpEmailLabel,
                        controller: _emailField,
                        validator: (val) => val == null || val.isEmpty
                            ? l10n.screenSignUpFieldCanNotBeEmpty
                            : null,
                      ),
                      const SizedBox(height: _inputFieldsPadding),
                      CTextFormField(
                        label: S.of(context).screenSignUpNameLabel,
                        controller: _nameField,
                        validator: (val) => val == null || val.isEmpty
                            ? l10n.screenSignUpFieldCanNotBeEmpty
                            : null,
                      ),
                      const SizedBox(height: _inputFieldsPadding),
                      CTextFormField(
                        label: S.of(context).screenSignUpSurnameLabel,
                        controller: _surnameField,
                        validator: (val) => val == null || val.isEmpty
                            ? l10n.screenSignUpFieldCanNotBeEmpty
                            : null,
                      ),
                      const SizedBox(height: _inputFieldsPadding),
                      CTextFormField(
                        label: S.of(context).screenSignUpNicknameLabel,
                        controller: _nicknameField,
                        validator: (val) => val == null || val.isEmpty
                            ? l10n.screenSignUpFieldCanNotBeEmpty
                            : null,
                        inputFormatters: [
                          LowerCaseTextFormatter()
                        ],
                      ),
                      const SizedBox(height: _inputFieldsPadding),
                      CTextFormField(
                        label: S.of(context).screenSignUpPasswordLabel,
                        controller: _passwordField,
                        obscureText: true,
                        validator: (val) => val == null || val.isEmpty
                            ? l10n.screenSignUpFieldCanNotBeEmpty
                            : null,
                      ),
                      const SizedBox(height: _inputFieldsPadding),
                      CTextFormField(
                        label: S.of(context).screenSignUpPasswordConfirmLabel,
                        controller: _password2Field,
                        obscureText: true,
                        validator: (val) => val == null || val.isEmpty
                            ? l10n.screenSignUpFieldCanNotBeEmpty
                            : null,
                      ),
                      const SizedBox(height: 50),
                      SizedBox(
                        width: _submitButtonWidth,
                        child: RoundedButton(
                          text: S.of(context).screenSignUpSubmitButton,
                          onTap: () => _submit(context),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: HyperLinkButton(
                    text: S.of(context).screenSignUpToSignInButton,
                    onTap: () {
                      Navigation.replaceTo(SignInScreen.id);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
