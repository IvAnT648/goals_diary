import 'package:flutter/material.dart';

import '../../../../common/res/styles.dart';
import '../../../../generated/l10n.dart';
import '../../components.dart';
import '../screens.dart';

class SignInScreen extends StatelessWidget {
  static const double _inputFieldsPadding = 35;
  static String id = '/sign-in';

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
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppTextField(
                    label: S.of(context).screenLoginNicknameLabel,
                  ),
                  const SizedBox(height: _inputFieldsPadding),
                  AppTextField(
                    label: S.of(context).screenLoginPasswordLabel,
                  ),
                  const SizedBox(height: 60),
                  RoundedButton(
                    onTap: () {
                      // TODO: correct login
                      Navigator.pushReplacementNamed(context, MyGoalsScreen.id);
                    },
                    text: S.of(context).screenLoginSignInButton,
                  ),
                ],
              ),
              const SizedBox(height: 1),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: HyperLinkButton(
                  onTap: () {
                    Navigator.pushNamed(context, SignUpScreen.id);
                  },
                  text: S.of(context).screenLoginSignUpButton,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
