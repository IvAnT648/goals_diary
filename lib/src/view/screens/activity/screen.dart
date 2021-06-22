import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/resources.dart';
import '../../../domain/models/activity.dart';
import '../../components.dart';
import '../../navigation.dart';
import '../../screens.dart';
import '../drawer/screen.dart';
import 'cubit.dart';

class ActivityScreen extends StatelessWidget {
  static const String id = '/activity';

  const ActivityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MenuTopBar(title: S.of(context).screenActivityTitle),
      drawer: AppDrawer(selected: DrawerMenuItemType.activity),
      body: BlocBuilder<ActivityScreenCubit, ActivityScreenState>(
        builder: (context, state) => state.when(
          empty: () => const _EmptyState(),
          loading: () => const _LoadingState(),
          list: (activities) => _ListState(activities),
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            S.of(context).screenActivityHaveNoTasksMsg,
            style: TextStyle(
              fontSize: 16,
              color: AppColors.hintText,
            ),
          ),
        ],
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

class _ListState extends StatelessWidget {
  final List<GoalActivityDto> activities;

  const _ListState(this.activities, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          vertical: 43,
          horizontal: 30,
        ),
        child: Column(
          children: activities.expand((activity) => [
            ActivityCard(
              entity: activity,
              onLongTap: () {
                context.read<ActivityScreenCubit>().toggle(activity);
              },
              onShortTap: () {
                final messenger = ScaffoldMessenger.of(context);
                messenger.hideCurrentSnackBar();
                messenger.showSnackBar(SnackBar(
                  backgroundColor: AppColors.primary[10],
                  content: Text(
                    S.of(context).screenActivityOnShortPressSnackBarText,
                  ),
                ));
              },
            ),
            const SizedBox(height: 20),
          ]).toList()..removeLast(),
        ),
      ),
    );
  }
}
