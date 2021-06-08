import 'package:flutter/material.dart';

import '../../common/resources.dart';
import '../../domain/models/user.dart';
import '../components/buttons.dart';
import 'avatar.dart';

class SubscriptionListItem extends StatelessWidget {
  final UserDto user;
  final VoidCallback onTap;

  const SubscriptionListItem({
    Key? key,
    required this.user,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TouchableArea(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 10,
        ),
        child: Row(
          children: [
            UserAvatar(userInfo: user, isBordered: true),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.fullName,
                    style: TextStyles.h4,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    user.nicknameWithAt,
                    style: TextStyles.h5.copyWith(color: AppColors.hintText),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
