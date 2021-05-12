
import 'package:flutter/material.dart';
import 'package:goals_diary/common/res/styles.dart';

import '../../../../generated/l10n.dart';
import '../../components.dart';

class MyGoalsScreen extends StatelessWidget {
  static const String id = '/goals';

  const MyGoalsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MenuTopBar(
        title: S.of(context).screenMyGoalsTitle,
      ),
      // TODO: fix drawer
      drawer: Container(width: 300, color: AppColors.primary),
    );
  }
}

