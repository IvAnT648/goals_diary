import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/resources.dart';
import '../../../domain/models.dart';
import '../../navigation.dart';
import '../../screens.dart';
import '../../components.dart';
import 'cubit.dart';

class SubscriptionsScreen extends StatelessWidget {
  static const String id = '/subscriptions';

  const SubscriptionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MenuTopBar(
        title: S.of(context).screenSubscriptionsTitle,
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: AppColors.hintText,
            ),
            onPressed: () {
              Navigation.to(SearchUserScreen.id);
            },
          ),
        ],
      ),
      drawer: AppDrawer(selected: DrawerMenuItemType.subscriptions),
      body: BlocBuilder<SubscriptionsScreenCubit, SubscriptionsScreenState>(
        builder: (context, state) => state.when(
          loading: () => _LoadingState(),
          loaded: (users) => _LoadedState(users),
          empty: () => _EmptyState(),
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

class _EmptyState extends StatelessWidget {
  const _EmptyState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        S.of(context).screenSubscriptionsHaveNoSubs,
        style: TextStyles.italicNormal,
      ),
    );
  }
}

class _LoadedState extends StatelessWidget {
  static const double _listItemPadding = 20;

  final List<UserDto> users;

  const _LoadedState(this.users, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: users.length,
      separatorBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: _listItemPadding + 20),
        child: HorizontalLine(
          thickness: 1,
          color: AppColors.gray[20],
        ),
      ),
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.only(
          left: _listItemPadding,
          right: _listItemPadding,
          top: index == 0 ? 10 : 0,
        ),
        child: SubscriptionListItem(
          user: users[index],
          onTap: () {
            Navigation.to(
              ProfileScreen.idOther,
              params: {
                ProfileScreen.userArg: users[index],
              }
            );
          },
        ),
      ),
    );
  }
}
