import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/resources.dart';
import '../../../domain/models.dart';
import '../../components.dart';
import '../../components/utils.dart';
import '../../navigation.dart';
import '../modals/goal.dart';
import '../profile/screen.dart';
import 'bloc.dart';

class PostScreen extends StatelessWidget {
  static const String id = '/feed/post';
  static const String postArg = 'post';

  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReturnableTopBar(
        title: Text(S.of(context).screenPostTitle),
      ),
      body: BlocBuilder<PostScreenBloc, PostScreenState>(
        builder: (context, state) => state.when(
          notFound: () => _NotFoundWidget(),
          show: (post) => _Post(post),
        ),
      ),
    );
  }
}

class _Post extends StatelessWidget {
  static const double _postPadding = 20;

  final PostDto post;

  _Post(this.post, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<PostScreenBloc>();

    return Padding(
      padding: const EdgeInsets.all(_postPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          StreamBuilder<PostDto?>(
            initialData: post,
            stream: bloc.postStream,
            builder: (context, snapshot) {
              if (snapshot.data == null) {
                bloc.emitPostNotFound();
                return _LoadingWidget();
              }
              return _PostInfo(
                post: snapshot.data!,
                onAuthorTap: () {
                  Navigation.to(
                    ProfileScreen.idOther,
                    params: {
                      ProfileScreen.userArg: post.author,
                    },
                  );
                },
                onGoalTap: () {
                  showGoalInfoModal(context, post.goal);
                },
              );
            },
          ),
          const SizedBox(height: 5),
          Expanded(
            child: StreamBuilder<List<PostCommentDto>>(
              initialData: [],
              stream: bloc.postCommentsStream,
              builder: (context, snapshot) {
                return _Comments(
                  comments: snapshot.data ?? [],
                  onAdded: (String comment) {
                    bloc.addComment(comment);
                  },
                );
              },
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).padding.bottom + 30,
          ),
        ],
      ),
    );
  }
}

class _PostInfo extends StatelessWidget {
  static const double _avatarRadius = 23;
  static const double _postTextBorderRadius = 8;
  static const double _postTextPadding = 10;
  static const double _postTextMinHeight = 80;

  final _tapGestureRecognizer = TapGestureRecognizer();

  final PostDto post;
  final VoidCallback? onAuthorTap;
  final VoidCallback? onGoalTap;

  _PostInfo({
    Key? key,
    required this.post,
    this.onAuthorTap,
    this.onGoalTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TouchableArea(
          onTap: onAuthorTap,
          child: Row(
            children: [
              UserAvatar(
                userInfo: post.author,
                radius: _avatarRadius,
                isBordered: true,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post.author.fullName,
                      style: TextStyles.h4,
                    ),
                    const SizedBox(height: 3),
                    Text(
                      post.date.formatForFeedPost(context),
                      style: TextStyles.smallHint,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 18),
        if (post.goal != null)
          RichText(
            text: TextSpan(
              text: S.of(context).screenFeedGoalProgressText + ' ',
              style: TextStyles.normal.copyWith(
                color: AppColors.regularText,
              ),
              children: [
                TextSpan(
                  text: post.goal.title.toUpperCase(),
                  style: TextStyles.h4.copyWith(color: AppColors.primary),
                  recognizer: _tapGestureRecognizer
                    ..onTap = onGoalTap,
                ),
              ],
            ),
          ),
        if (post.text != null) ...[
          const SizedBox(height: 12),
          ConstrainedBox(
            constraints: BoxConstraints(minHeight: _postTextMinHeight),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.gray[20],
                borderRadius:
                BorderRadius.circular(_postTextBorderRadius),
              ),
              padding: const EdgeInsets.all(_postTextPadding),
              child: Text(
                post.text!,
                style: TextStyles.normal,
              ),
            ),
          ),
        ],
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: LikeButton(
            qty: post.likeQty,
            isActive: post.like,
            onTap: () {
              context.read<PostScreenBloc>().toggleLike();
            },
          ),
        ),
        const SizedBox(height: 12),
        HorizontalLine(
          color: AppColors.gray[10],
          thickness: 1.5,
        )
      ],
    );
  }
}

class _Comments extends StatelessWidget {
  final _commentTextController = TextEditingController();

  final List<PostCommentDto> comments;
  final void Function(String) onAdded;

  _Comments({
    Key? key,
    required this.comments,
    required this.onAdded,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildTextField(context),
          Expanded(
            child: CustomScrollView(
              slivers: [
                if (comments.isEmpty)
                  SliverToBoxAdapter(
                    child: Text(
                      S.of(context).screenFeedNoComments,
                      style: TextStyle(
                        color: AppColors.hintText,
                        fontStyle: FontStyle.italic,
                        fontSize: 13,
                      ),
                    ),
                  )
                else
                  SliverList(
                    delegate: SliverChildListDelegate(
                        comments.expand((comment) => <Widget>[
                          _Comment(comment: comment),
                          Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              child: _Divider()
                          ),
                        ]).toList()
                          ..removeLast()
                          ..insert(0, const SizedBox(height: 10))),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(BuildContext context) {
    final l10n = S.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: OutlinedTextField(
              controller: _commentTextController,
              hintText: l10n.screenPostCommentFieldPlaceholder,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 10,
              bottom: 6,
            ),
            child: InkResponse(
              child: Icon(
                Icons.send,
                color: AppColors.primary,
                size: 24,
              ),
              onTap: () {
                if (_commentTextController.text.isEmpty) {
                  showErrorSnackBar(
                    S.of(context).screenFeedEmptyComment,
                    context,
                  );
                } else {
                  onAdded(_commentTextController.text);
                  _commentTextController.clear();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _Comment extends StatelessWidget {
  static const double _textBorderRadius = 9;

  final PostCommentDto comment;

  const _Comment({
    Key? key,
    required this.comment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              comment.author.fullName,
              style: TextStyles.h5.copyWith(
                color: AppColors.primary[-20],
              ),
            ),
            Text(
              comment.date.formatForFeedPost(context),
              style: TextStyles.smallHint,
            ),
          ],
        ),
        const SizedBox(height: 5),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            color: AppColors.gray[20],
            borderRadius: BorderRadius.circular(_textBorderRadius),
          ),
          child: Text(
            comment.text,
            style: TextStyle(
              fontSize: 13,
            ),
          ),
        ),
      ],
    );
  }
}

class _Divider extends StatelessWidget {
  const _Divider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalLine(
      color: AppColors.gray[10],
      thickness: 1,
    );
  }
}


class _NotFoundWidget extends StatelessWidget {
  const _NotFoundWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        S.of(context).screenPostNotFound,
        style: TextStyles.italicNormal,
      ),
    );
  }
}

class _LoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator();
  }
}
