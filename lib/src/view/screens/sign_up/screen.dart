
import 'package:flutter/material.dart';

import '../../../common/resources/styles.dart';
import '../../../../generated/l10n.dart';
import '../../components.dart';
import '../../navigation.dart';
import '../../screens.dart';

class SignUpScreen extends StatelessWidget {
  static const double _inputFieldsPadding = 35;
  static const double _submitButtonWidth = 236;
  static const String id = '/sign-up';

  const SignUpScreen({Key? key}) : super(key: key);

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
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DefaultTextField(
                    label: S.of(context).screenSignUpNameLabel,
                  ),
                  const SizedBox(height: _inputFieldsPadding),
                  DefaultTextField(
                    label: S.of(context).screenSignUpNicknameLabel,
                  ),
                  const SizedBox(height: _inputFieldsPadding),
                  DefaultTextField(
                    label: S.of(context).screenSignUpPasswordLabel,
                  ),
                  const SizedBox(height: _inputFieldsPadding),
                  DefaultTextField(
                    label: S.of(context).screenSignUpPasswordConfirmLabel,
                  ),
                  const SizedBox(height: 70),
                  SizedBox(
                    width: _submitButtonWidth,
                    child: RoundedButton(
                      onTap: () {
                        // TODO: correct login
                        Navigation.replaceTo(Navigation.home);
                      },
                      text: S.of(context).screenSignUpSubmitButton,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 1),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: HyperLinkButton(
                  onTap: () {
                    Navigation.replaceTo(SignInScreen.id);
                  },
                  text: S.of(context).screenSignUpToSignInButton,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

