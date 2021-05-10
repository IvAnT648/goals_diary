import 'package:flutter/material.dart';
import 'package:goals_diary/common/res/styles.dart';

import '../../../../generated/l10n.dart';
import '../../components/export.dart';

class LoginScreen extends StatelessWidget {
  static String id = '/login';
  static const double _titlePadding = 90;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        top: true,
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(
            horizontal: 58,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: _titlePadding),
              Text(
                S.current.screenLoginTitle,
                style: TextStyles.h1,
              ),
              const SizedBox(height: _titlePadding),
              AppTextField(
                label: S.current.screenLoginNicknameLabel,
              ),
              const SizedBox(height: 40),
              AppTextField(
                label: S.current.screenLoginPasswordLabel,
              ),
              const SizedBox(height: 50),
              RoundedButton(
                onTap: () {},
                text: 'Войти',
              ),
              const SizedBox(height: 80),
              HyperLinkButton(
                onTap: () {},
                text: 'Создать новый аккаунт',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
