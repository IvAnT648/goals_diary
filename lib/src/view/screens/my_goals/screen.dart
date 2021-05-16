import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goals_diary/src/view/components/goals.dart';
import 'package:goals_diary/src/view/screens.dart';

import '../../../../generated/l10n.dart';
import '../../../common/resources/styles.dart';
import '../../components.dart';
import 'bloc.dart';

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
      body: BlocBuilder<MyGoalsScreenBloc, MyGoalsScreenState>(
        builder: (context, state) => state.when(
          loading: () => Center(
            child: CircularProgressIndicator(),
          ),
          success: (goals) => Container(
            padding: EdgeInsets.symmetric(
              vertical: 35,
              horizontal: 43,
            ),
            child: ListView.separated(
              itemCount: goals.length,
              separatorBuilder: (_, __) => GoalsListDivider(),
              itemBuilder: (_, i) => MyGoalsListItem(
                goal: goals[i],
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    EditGoalScreen.id,
                    arguments: EditGoalScreenArgs(goal: goals[i]),
                  );
                },
              ),
            ),
          ),
        ),
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
