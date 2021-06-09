import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/models.dart';
import '../../../common/resources.dart';
import '../../components.dart';
import '../../navigation.dart';
import '../../screens.dart';
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
        builder: (context, state) => state.when(
          loading: () => _LoadingState(),
          loaded: (posts) => _LoadedState(posts),
          empty: () => _EmptyState(),
          networkError: () => Container(),
        ),
      ),
    );
  }
}

class _LoadingState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator();
  }
}

class _EmptyState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        S.of(context).screenFeedNoPosts,
        style: TextStyle(
          color: AppColors.onPrimary,
          fontStyle: FontStyle.italic,
          fontSize: 16,
        ),
      ),
    );
  }
}

class _LoadedState extends StatefulWidget {
  final List<PostDto> posts;

  const _LoadedState(this.posts, {Key? key}) : super(key: key);

  @override
  _LoadedStateState createState() => _LoadedStateState();
}

class _LoadedStateState extends State<_LoadedState> {
  static const double _horizontalPadding = 15;
  static const double _postsPadding = 15;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(
        horizontal: _horizontalPadding,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: widget.posts.expand((post) => [
            FeedPost(
              key: UniqueKey(),
              post: post,
              onTap: () {
                Navigation.to(PostScreen.id, params: {
                  PostScreen.postArg: post,
                });
              },
              onLikeTap: () {
                context.read<FeedScreenCubit>().toggleLike(post);
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
