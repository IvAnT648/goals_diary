import 'package:flutter/material.dart';

import '../../common/resources/styles.dart';
import '../constants.dart';

mixin DefaultPreferredSizeAppBar implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(AppBarHeight);
}

class MenuTopBar extends StatelessWidget with DefaultPreferredSizeAppBar {
  final String? title;

  const MenuTopBar({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title == null ? null : Text(
        title!,
        style: TextStyles.h3.copyWith(color: AppColors.regularText),
      ),
      centerTitle: true,
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
