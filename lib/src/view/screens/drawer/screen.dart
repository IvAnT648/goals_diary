import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/di/di.dart';
import '../../../common/resources.dart';
import '../../../domain/models/user.dart';
import '../../components.dart';
import '../../navigation.dart';
import '../../screens.dart';
import 'cubit.dart';
import 'utils.dart';

enum DrawerMenuItemType {
  feed,
  goals,
  activity,
  subscriptions,
  //tracked_goals,
  profile,
  // settings,
  logOut,
}

typedef DrawerMenuItemCallback = void Function(DrawerMenuItemType type);

class AppDrawer extends StatelessWidget {
  final DrawerMenuItemType? selected;

  const AppDrawer({Key? key, this.selected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = getIt<AppDrawerCubit>();
    return Drawer(
      child: Container(
        color: AppColors.primary,
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 10),
        child: SingleChildScrollView(
          child: BlocBuilder<AppDrawerCubit, AppDrawerState>(
            bloc: cubit,
            builder: (context, state) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  state.when(
                    unauthorized: () => _UnauthorizedHeader(),
                    authorized: (user) => _AuthorizedHeader(user),
                    loading: () => _LoadingHeader(),
                  ),
                  _Divider(),
                  _DrawerMenuItems(
                    showLogoutButton: state is AuthorizedAppDrawerState,
                    selected: selected,
                    onTap: (type) {
                      switch(type) {
                        case DrawerMenuItemType.feed:
                          Navigation.replaceTo(FeedScreen.id);
                          return;
                        case DrawerMenuItemType.goals:
                          Navigation.replaceTo(MyGoalsScreen.id);
                          return;
                        case DrawerMenuItemType.activity:
                          Navigation.replaceTo(ActivityScreen.id);
                          return;
                        case DrawerMenuItemType.subscriptions:
                          Navigation.replaceTo(SubscriptionsScreen.id);
                          return;
                        // case DrawerMenuItemType.tracked_goals:
                        //   // TODO: Handle this case.
                        //   Navigation.pop();
                        //   return;
                        case DrawerMenuItemType.profile:
                          Navigation.replaceTo(ProfileScreen.id);
                          return;
                        // case DrawerMenuItemType.settings:
                        //   // TODO: Handle this case.
                        //   Navigation.pop();
                        //   return;
                        case DrawerMenuItemType.logOut:
                          cubit.logout();
                          return Navigation.clearAndPush(SignInScreen.id);
                      }
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class _AuthorizedHeader extends StatelessWidget {
  final UserDto userInfo;

  const _AuthorizedHeader(this.userInfo, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 10,
        left: 30,
        bottom: 20,
      ),
      child: Row(
        children: [
          UserAvatar(userInfo: userInfo),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userInfo.fullName,
                  style: TextStyles.h3.copyWith(color: AppColors.onPrimary),
                ),
                const SizedBox(height: 5),
                Text(
                  userInfo.nicknameWithAt,
                  style: TextStyles.normalLight.copyWith(color: AppColors.onPrimary),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _UnauthorizedHeader extends StatelessWidget {
  const _UnauthorizedHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          S.of(context).drawerUnauthorizedHeader,
          style: TextStyles.h3.copyWith(color: AppColors.onPrimary[-10]),
        ),
        const SizedBox(height: 17),
        RoundedButton(
          text: S.of(context).drawerSignInButton,
          padding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 36,
          ),
          textStyle: TextStyles.h4.copyWith(color: AppColors.hintText),
          primary: AppColors.onPrimary,
          onPrimary: AppColors.primary,
          isUpperText: false,
          onTap: () {
            Navigation.to(SignInScreen.id);
          },
        ),
      ],
    );
  }
}

class _LoadingHeader extends StatelessWidget {
  static const double _indicatorSize = 20;

  const _LoadingHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 10,
        bottom: 20,
      ),
      child: Center(
        child: SizedBox(
          height: _indicatorSize,
          width: _indicatorSize,
          child: CircularProgressIndicator(
            strokeWidth: 3,
          ),
        ),
      ),
    );
  }
}


class _Divider extends StatelessWidget {
  static const double _indent = 20;

  const _Divider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
      ),
      child: Divider(
        thickness: 1,
        color: AppColors.primary[10],
        indent: _indent,
        endIndent: _indent,
      ),
    );
  }
}

class _DrawerMenuItems extends StatelessWidget {
  final DrawerMenuItemType? selected;
  final DrawerMenuItemCallback onTap;
  final bool showLogoutButton;

  const _DrawerMenuItems({
    Key? key,
    this.selected,
    required this.onTap,
    required this.showLogoutButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: DrawerMenuItemType.values
          .map((el) {
            if (el == DrawerMenuItemType.logOut && !showLogoutButton) {
              return Container();
            }
            return _DrawerMenuItem(
              type: el,
              onTap: onTap,
              isActive: selected == el,
            );
          })
          .toList(),
    );
  }
}

class _DrawerMenuItem extends StatelessWidget {
  static const double _leftPadding = 38;
  static const double _verticalPadding = 16;
  static const double _space = 24;
  static const double _iconSize = 24;

  final DrawerMenuItemType type;
  final DrawerMenuItemCallback onTap;
  final bool isActive;

  const _DrawerMenuItem({
    Key? key,
    required this.type,
    required this.onTap,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widget = Container(
      padding: const EdgeInsets.only(
        left: _leftPadding,
        top: _verticalPadding,
        bottom: _verticalPadding,
      ),
      color: isActive ? AppColors.accent : null,
      child: Row(
        children: [
          Icon(
            type.toIcon(),
            size: _iconSize,
            color: AppColors.onPrimary,
          ),
          const SizedBox(width: _space),
          Text(
            type.toText(),
            style: TextStyles.normal.copyWith(color: AppColors.onPrimary),
          ),
        ],
      ),
    );
    return isActive
        ? widget
        : TouchableArea(child: widget, onTap: () => onTap(type));
  }
}
