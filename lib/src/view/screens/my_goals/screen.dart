import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../generated/l10n.dart';
import '../../../common/resources/styles.dart';
import '../../components.dart';
import '../../navigation.dart';
import '../../screens.dart';
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
      floatingActionButton: _FloatingAddButton(
        onTap: () {
          Navigation.to(EditGoalScreen.id);
        },
      ),
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
                  Navigation.to(EditGoalScreen.id, params: {
                    'goal': goals[i],
                  });
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
  final VoidCallback onTap;

  const _FloatingAddButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return FloatingActionButton(
      onPressed: onTap,
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
