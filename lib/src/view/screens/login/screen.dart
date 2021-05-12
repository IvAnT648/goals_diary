import 'package:flutter/material.dart';
import 'package:goals_diary/common/res/styles.dart';

import '../../../../generated/l10n.dart';
import '../../components/export.dart';

class LoginScreen extends StatelessWidget {
  static String id = '/login';

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
                  S.current.screenLoginTitle,
                  style: TextStyles.h1,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppTextField(
                    label: S.current.screenLoginNicknameLabel,
                  ),
                  const SizedBox(height: 40),
                  AppTextField(
                    label: S.current.screenLoginPasswordLabel,
                  ),
                  const SizedBox(height: 60),
                  RoundedButton(
                    onTap: () {
                      // TODO: login
                    },
                    text: S.current.screenLoginSignInButton,
                  ),
                ],
              ),
              const SizedBox(height: 1),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: HyperLinkButton(
                  onTap: () {
                    // TODO: move to create account screen
                  },
                  text: S.current.screenLoginSignUpButton,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
