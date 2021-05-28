import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/resources.dart';
import '../../components.dart';
import '../../navigation.dart';
import '../../screens.dart';
import 'cubit.dart';

class SignInScreen extends StatelessWidget {
  static const double _inputFieldsPadding = 30;
  static const double _submitButtonWidth = 236;
  static String id = '/sign-in';

  final _emailField = TextEditingController();
  final _passwordField = TextEditingController();

  void _submit(BuildContext context) async {
    final l10n = S.of(context);
    if (_emailField.text.isEmpty || _passwordField.text.isEmpty) {
      return showErrorSnackBar(l10n.screenLoginFieldsMustNotBeEmpty, context);
    }
    final result = await context.read<SignInCubit>().signIn(
      email: _emailField.text,
      password: _passwordField.text,
    );
    result.when(
      success: () {
        Navigation.replaceTo(Navigation.home);
      },
      userNotFound: () {
        showErrorSnackBar(l10n.screenLoginUserNotFound, context);
      },
      wrongPassword: () {
        showErrorSnackBar(l10n.screenLoginWrongPassword, context);
      },
      invalidEmail: () {
        showErrorSnackBar(l10n.screenLoginInvalidEmail, context);
      },
      internalError: () {
        showErrorSnackBar(l10n.commonInternalErrorText, context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.background,
      body: SafeArea(
        top: true,
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
                padding: const EdgeInsets.only(top: 90),
                child: Text(
                  S.of(context).screenLoginTitle,
                  style: TextStyles.h1,
                  textAlign: TextAlign.center,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DefaultTextField(
                    label: S.of(context).screenLoginNicknameLabel,
                    controller: _emailField,
                  ),
                  const SizedBox(height: _inputFieldsPadding),
                  DefaultTextField(
                    label: S.of(context).screenLoginPasswordLabel,
                    controller: _passwordField,
                  ),
                  const SizedBox(height: 60),
                  SizedBox(
                    width: _submitButtonWidth,
                    child: RoundedButton(
                      onTap: () => _submit(context),
                      text: S.of(context).screenLoginSignInButton,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 1),
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: HyperLinkButton(
                  text: S.of(context).screenLoginSignUpButton,
                  onTap: () {
                    Navigation.replaceTo(SignUpScreen.id);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
