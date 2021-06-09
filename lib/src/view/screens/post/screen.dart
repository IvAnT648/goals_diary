
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/resources.dart';
import '../../../domain/models.dart';
import '../../components.dart';
import '../../components/utils.dart';
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
        builder: (context, state) =>
            state.when(
              loading: () => _LoadingState(),
              notFound: () => _NotFoundWidget(),
              show: (post) => _Post(post),
            ),
      ),
    );
  }
}

class _Post extends StatelessWidget {
  static const double _postPadding = 15;
  static const double _avatarRadius = 23;
  static const double _postTextBorderRadius = 8;
  static const double _postTextPadding = 10;
  static const double _postTextMinHeight = 80;

  final _tapGestureRecognizer = TapGestureRecognizer();
  final _commentTextController = TextEditingController();

  final PostDto post;

  _Post(this.post, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(_postPadding),
      child: Column(
        children: [
          _buildPostSection(context),
          _buildCommentsSection(context),
        ],
      ),
    );
  }

  void _onGoalTitleTap() {
    // TODO: open goal modal
  }

  void _onAuthorTap() {
    // TODO: open author profile
  }

  void _onCommentSend(String comment) {
    // TODO: send comment
  }

  Widget _buildPostSection(BuildContext context) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TouchableArea(
            onTap: _onAuthorTap,
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
                    text: post.goal!.title.toUpperCase(),
                    style: TextStyles.h4.copyWith(color: AppColors.primary),
                    recognizer: _tapGestureRecognizer
                      ..onTap = _onGoalTitleTap,
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
                  borderRadius: BorderRadius.circular(_postTextBorderRadius),
                ),
                padding: const EdgeInsets.all(_postTextPadding),
                child: Text(
                  post.text!,
                  style: TextStyles.normal,
                ),
              ),
            ),
          ],
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LikeButton(
                  qty: post.likeQty,
                  isActive: post.like,
                  onTap: () {
                    //context.read<PostScreenBloc>().toggleLike(post);
                  },
                ),
              ],
            ),
          ),
        ],
      );


  Widget _buildCommentsSection(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        if (post.comments.isEmpty)
          Text(
            S.of(context).screenFeedNoComments,
            style: TextStyle(
              color: AppColors.hintText,
              fontStyle: FontStyle.italic,
              fontSize: 13,
            ),
          ),

        _buildCommentTextField(context),

        if (post.comments.isNotEmpty)
          _buildComments(),
      ],
    );
  }

  Widget _buildComments() =>
      SingleChildScrollView(
        child: Column(
          children: post.comments.expand((comment) => <Widget>[
            _Comment(comment: comment),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
              ),
              child: HorizontalLine(
                color: AppColors.gray[10],
                thickness: 1,
              ),
            ),
          ]).toList()
            ..removeLast()
            ..insert(0, const SizedBox(height: 10)),
        ),
      );

  Widget _buildCommentTextField(BuildContext context) =>
      Container(
        padding: const EdgeInsets.symmetric(
          vertical: 13,
          horizontal: 20,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: OutlinedTextField(
                controller: _commentTextController,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 10,
                bottom: 6,
              ),
              child: TouchableArea(
                hasSplashEffect: true,
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
                    _onCommentSend(_commentTextController.text);
                    _commentTextController.clear();
                  }
                },
              ),
            ),
          ],
        ),
      );
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
              style: TextStyles.h5,
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
            color: AppColors.onPrimary,
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

class _LoadingState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator();
  }
}
