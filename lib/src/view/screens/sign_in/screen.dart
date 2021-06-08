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

  final _formKey = GlobalKey<FormState>();

  final _emailField = TextEditingController();
  final _passwordField = TextEditingController();

  void _submit(BuildContext context) async {
    if (!(_formKey.currentState?.validate() ?? false)) {
      return;
    }

    final l10n = S.of(context);

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
    final l10n = S.of(context);
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
                  l10n.screenLoginTitle,
                  style: TextStyles.h1,
                  textAlign: TextAlign.center,
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CTextFormField(
                      label: l10n.screenLoginNicknameLabel,
                      controller: _emailField,
                      validator: (val) => val == null || val.isEmpty
                          ? l10n.screenSignUpFieldCanNotBeEmpty
                          : null,
                    ),
                    const SizedBox(height: _inputFieldsPadding),
                    CTextFormField(
                      label: l10n.screenLoginPasswordLabel,
                      controller: _passwordField,
                      obscureText: true,
                      validator: (val) => val == null || val.isEmpty
                          ? l10n.screenSignUpFieldCanNotBeEmpty
                          : null,
                    ),
                    const SizedBox(height: 60),
                    SizedBox(
                      width: _submitButtonWidth,
                      child: RoundedButton(
                        onTap: () => _submit(context),
                        text: l10n.screenLoginSignInButton,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 1),
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: HyperLinkButton(
                  text: l10n.screenLoginSignUpButton,
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
