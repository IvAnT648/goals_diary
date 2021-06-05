import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/resources.dart';
import '../../../domain/models.dart';
import '../../components.dart';
import '../../navigation.dart';
import '../../screens.dart';
import '../drawer/screen.dart';
import 'cubit.dart';

class MyGoalsScreen extends StatelessWidget {
  static const String id = '/goals';

  const MyGoalsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MenuTopBar(
        title: S.of(context).screenMyGoalsTitle,
      ),
      drawer: AppDrawer(
        selected: DrawerMenuItemType.goals,
      ),
      floatingActionButton: _FloatingNewGoalButton(),
      body: BlocBuilder<MyGoalsScreenCubit, MyGoalsScreenState>(
        builder: (context, state) => state.when(
          empty: () => const _EmptyState(),
          loading: () => const _LoadingState(),
          success: (goals) => _SuccessState(goals),
        ),
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        S.of(context).screenEditGoalHaveNoGoals,
        style: TextStyle(
          fontSize: 16,
          color: AppColors.hintText,
        ),
      ),
    );
  }
}

class _LoadingState extends StatelessWidget {
  const _LoadingState();

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator());
  }
}

class _SuccessState extends StatelessWidget {
  final List<GoalDto> goals;

  const _SuccessState(this.goals, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              EditGoalScreen.goalArg: goals[i],
            });
          },
        ),
      ),
    );
  }
}

class _FloatingNewGoalButton extends StatelessWidget {
  const _FloatingNewGoalButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return FloatingActionButton(
      onPressed: () {
        Navigation.to(EditGoalScreen.id);
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
