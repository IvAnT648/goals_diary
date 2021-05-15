
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../common/resources/styles.dart';
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
      floatingActionButton: _FloatingAddButton(),
      body: Container(
        padding: EdgeInsets.all(35),
      ),
    );
  }
}

class _FloatingAddButton extends StatelessWidget {
  const _FloatingAddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return FloatingActionButton(
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
    );
  }
}


