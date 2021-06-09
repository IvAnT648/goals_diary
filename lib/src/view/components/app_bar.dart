import 'package:flutter/material.dart';

import '../../common/resources/styles.dart';
import '../constants.dart';
import '../navigation.dart';

mixin DefaultPreferredSizeAppBar implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(AppBarHeight);
}

class MenuTopBar extends StatelessWidget with DefaultPreferredSizeAppBar {
  final String? title;
  final List<Widget>? actions;

  const MenuTopBar({
    Key? key,
    this.title,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title == null
          ? null
          : Text(
              title!,
              style: TextStyles.h3.copyWith(color: AppColors.regularText),
            ),
      centerTitle: true,
      actions: actions,
      backgroundColor: AppColors.gray[20],
      leading: IconButton(
        color: AppColors.regularText,
        icon: Icon(
          Icons.menu_outlined,
        ),
        onPressed: () => Scaffold.of(context).openDrawer(),
      ),
    );
  }
}

class ReturnableTopBar extends StatelessWidget with DefaultPreferredSizeAppBar {
  final Widget? title;
  final List<Widget>? actions;

  const ReturnableTopBar({
    Key? key,
    this.title,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title != null
          ? DefaultTextStyle.merge(
              child: title!,
              style: TextStyles.h3.copyWith(color: AppColors.regularText),
            )
          : null,
      centerTitle: true,
      backgroundColor: AppColors.gray[20],
      leading: IconButton(
        color: AppColors.regularText,
        icon: Icon(
          Icons.arrow_back_ios_rounded,
        ),
        onPressed: () async => await Navigation.popSafe(),
      ),
      actions: actions,
    );
  }
}
