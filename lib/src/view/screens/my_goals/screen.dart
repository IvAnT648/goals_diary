
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../common/res/styles.dart';
import '../../components.dart';

class MyGoalsScreen extends StatelessWidget {
  static const String id = '/goals';

  const MyGoalsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: MenuTopBar(
        title: S.of(context).screenMyGoalsTitle,
      ),
      // TODO: fix drawer
      drawer: Container(width: 300, color: AppColors.primary),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: to add a new goal screen
        },
        child: Text(
          '+',
          style: TextStyle(
            fontSize: 36,
            color: theme.colorScheme.onPrimary,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(35),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Container();
          },
        ),
      ),
    );
  }
}

