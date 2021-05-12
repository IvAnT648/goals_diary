
import 'package:flutter/material.dart';

import '../../../../common/res/styles.dart';
import '../../../../generated/l10n.dart';
import '../../components.dart';

class SignUpScreen extends StatelessWidget {
  static const double _inputFieldsPadding = 40;
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
                  S.current.screenSignUpTitle,
                  style: TextStyles.h1,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppTextField(
                    label: S.current.screenSignUpNameLabel,
                  ),
                  const SizedBox(height: _inputFieldsPadding),
                  AppTextField(
                    label: S.current.screenSignUpNicknameLabel,
                  ),
                  const SizedBox(height: _inputFieldsPadding),
                  AppTextField(
                    label: S.current.screenSignUpPasswordLabel,
                  ),
                  const SizedBox(height: _inputFieldsPadding),
                  AppTextField(
                    label: S.current.screenSignUpPasswordConfirmLabel,
                  ),
                  const SizedBox(height: 70),
                  RoundedButton(
                    onTap: () {
                      // TODO: login
                    },
                    text: S.current.screenSignUpSubmitButton,
                  ),
                ],
              ),
              const SizedBox(height: 1),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: HyperLinkButton(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  text: S.current.screenSignUpToSignInButton,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

