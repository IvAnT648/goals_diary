import 'package:flutter/material.dart';

import '../../../common/resources/styles.dart';
import '../../../../generated/l10n.dart';
import '../../components.dart';
import '../../navigation.dart';
import '../../screens.dart';

class SignInScreen extends StatelessWidget {
  static const double _inputFieldsPadding = 30;
  static const double _submitButtonWidth = 236;
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
                  textAlign: TextAlign.center,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DefaultTextField(
                    label: S.of(context).screenLoginNicknameLabel,
                  ),
                  const SizedBox(height: _inputFieldsPadding),
                  DefaultTextField(
                    label: S.of(context).screenLoginPasswordLabel,
                  ),
                  const SizedBox(height: 60),
                  SizedBox(
                    width: _submitButtonWidth,
                    child: RoundedButton(
                      onTap: () {
                        // TODO: correct login
                        Navigation.to(MyGoalsScreen.id);
                      },
                      text: S.of(context).screenLoginSignInButton,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 1),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: HyperLinkButton(
                  onTap: () {
                    Navigation.to(SignUpScreen.id);
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
