
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common/resources.dart';
import 'screen.dart';

extension DrawerMenuItemTypeViewExt on DrawerMenuItemType {
  String toText() {
    switch (this) {
      case DrawerMenuItemType.feed:
        return S.current.drawerFeedMenuItem;
      case DrawerMenuItemType.goals:
        return S.current.drawerGoalsMenuItem;
      case DrawerMenuItemType.activity:
        return S.current.drawerActivityMenuItem;
      case DrawerMenuItemType.subscriptions:
        return S.current.drawerSubscriptionsMenuItem;
      // case DrawerMenuItemType.tracked_goals:
      //   return S.current.drawerTrackedGoalsMenuItem;
      case DrawerMenuItemType.profile:
        return S.current.drawerProfileMenuItem;
      // case DrawerMenuItemType.settings:
      //   return S.current.drawerSettingsMenuItem;
      case DrawerMenuItemType.logOut:
        return S.current.drawerLogOutButton;
    }
  }

  IconData toIcon() {
    switch (this) {
      case DrawerMenuItemType.feed:
        return Icons.dynamic_feed;
      case DrawerMenuItemType.goals:
        return Icons.assignment;
      case DrawerMenuItemType.activity:
        return Icons.playlist_add_check;
      case DrawerMenuItemType.subscriptions:
        return Icons.cast;
      // case DrawerMenuItemType.tracked_goals:
      //   return Icons.remove_red_eye;
      case DrawerMenuItemType.profile:
        return Icons.account_circle;
      // case DrawerMenuItemType.settings:
      //   return Icons.settings;
      case DrawerMenuItemType.logOut:
        return Icons.logout;
    }
  }
}
