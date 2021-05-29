import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/models.dart';
import '../../../common/resources.dart';
import '../../components.dart';
import '../drawer/screen.dart';
import 'cubit.dart';

class FeedScreen extends StatelessWidget {
  static const String id = '/feed';

  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: MenuTopBar(
        title: S.of(context).screenFeedTitle,
      ),
      drawer: AppDrawer(
        selected: DrawerMenuItemType.feed,
      ),
      body: BlocBuilder<FeedScreenCubit, FeedScreenState>(
        buildWhen: (previous, current) =>
            current is! NetworkErrorFeedScreenState,
        builder: (context, state) => state.maybeWhen(
          loading: () => _LoadingState(),
          loaded: (posts) => _LoadedState(posts),
          // TODO: empty state
          empty: () => Container(),
          orElse: () => Container(),
        ),
      ),
    );
  }
}

class _LoadingState extends StatelessWidget {
  static const double _margin = 30;
  static const double _indicatorSize = 20;

  const _LoadingState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _indicatorSize,
      margin: const EdgeInsets.only(top: _margin),
      alignment: Alignment.center,
      child: SizedBox(
        height: _indicatorSize,
        width: _indicatorSize,
        child: CircularProgressIndicator(
          strokeWidth: 3,
        ),
      ),
    );
  }
}

class _LoadedState extends StatelessWidget {
  static const double _horizontalPadding = 15;
  static const double _postsPadding = 15;

  final List<PostDto> posts;

  const _LoadedState(this.posts, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(
        horizontal: _horizontalPadding,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: posts.expand((post) => [
            FeedPost(
              post: post,
              onSentComment: (comment) {
                // TODO: send comment
              },
              onAuthorTap: () {
                // TODO: open user detail modal screen
              },
              onGoalTitleTap: () {
                // TODO: show modal screen with goal detail page
              },
            ),
            const SizedBox(height: _postsPadding),
          ]).toList()
            ..insert(0, const SizedBox(height: _postsPadding)),
        ),
      ),
    );
  }
}
