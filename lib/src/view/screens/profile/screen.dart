import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/models.dart';
import '../../../common/resources.dart';
import '../../components.dart';
import '../drawer/screen.dart';
import '../modals/goal.dart';
import 'cubit.dart';

part 'view.dart';
part 'edit.dart';

const double avatarRadius = 75;

const EdgeInsets buttonsPadding = EdgeInsets.symmetric(
  vertical: 10,
  horizontal: 40,
);

class ProfileScreen extends StatelessWidget {
  static const String id = '/profile';
  static const String idOther = '/profile:user';
  static const String userArg = 'user';

  ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileScreenCubit, ProfileScreenState>(
      builder: (context, state) {
        return Scaffold(
          appBar: state is OwnProfileScreenState
              ? MenuTopBar(title: S.of(context).screenMyProfileTitle)
              : ReturnableTopBar(
                  title: Text(
                    S.of(context).screenProfileTitle,
                    style: TextStyles.h3.copyWith(color: AppColors.regularText),
                )),
          drawer: state is OwnProfileScreenState
              ? AppDrawer(selected: DrawerMenuItemType.profile)
              : null,
          body: state.when(
            loading: () => const _LoadingState(),
            own: (info) => EditProfileComponent(info),
            other: (info) => ViewProfileComponent(info: info),
            userNotFound: () => const _UserNotFound(),
          ),
        );
      },
    );
  }
}

class _LoadingState extends StatelessWidget {
  const _LoadingState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator());
  }
}

class _UserNotFound extends StatelessWidget {
  const _UserNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        S.of(context).screenProfileNotFound,
        style: TextStyles.italicNormal,
      ),
    );
  }
}

