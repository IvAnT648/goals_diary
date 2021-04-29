
import 'package:flutter/material.dart';
import 'package:goals_diary/common/res/styles.dart';

import '../../../../generated/l10n.dart';
import '../../components/all.dart';

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
          padding: EdgeInsets.symmetric(
            horizontal: 58,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: _titlePadding),
              Text(
                S.current.screenLoginTitle,
                style: TextStyles.h1,
              ),
              SizedBox(height: _titlePadding),
              AppTextField(
                label: S.current.screenLoginNicknameLabel,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

