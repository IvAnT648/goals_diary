
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../common/resources.dart';
import '../../domain/models.dart';
import '../components/utils.dart';
import '../components.dart';

class FeedPost extends StatefulWidget {
  final PostDto post;
  final void Function(String) onSentComment;
  final VoidCallback? onAuthorTap;
  final VoidCallback? onGoalTitleTap;

  const FeedPost({
    Key? key,
    required this.post,
    required this.onSentComment,
    this.onAuthorTap,
    this.onGoalTitleTap,
  }) : super(key: key);

  @override
  _FeedPostState createState() => _FeedPostState();
}

class _FeedPostState extends State<FeedPost>
    with SingleTickerProviderStateMixin {
  static const double _postPadding = 15;
  static const double _avatarRadius = 23;
  static const double _postBorderRadius = 6;
  static const double _postTextBorderRadius = 8;
  static const double _postTextPadding = 10;
  static const double _postTextMinHeight = 80;
  static const double _commentsVisibleAnimFactor = 0.8;
  static const double _commentsHorizontalPadding = 20;
  static const double _commentsVerticalPadding = 13;
  static const double _minCommentsSectionHeight = 100;
  static const double _maxCommentsHeight = 210;

  late final AnimationController _animationController;
  late final Animation<double> _animation;
  final _tapGestureRecognizer = TapGestureRecognizer();
  final _commentTextController = TextEditingController();

  PostDto get post => widget.post;
  UserDto get author => post.author;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    final curve = Curves.decelerate;
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: curve,
      reverseCurve: curve.flipped,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildPostSection(),
        _buildCommentsSection(),
      ],
    );
  }

  Widget _buildPostSection() =>
      Container(
        padding: const EdgeInsets.all(_postPadding),
        decoration: BoxDecoration(
          color: AppColors.onPrimary,
          borderRadius: BorderRadius.circular(_postBorderRadius),
          boxShadow: [
            BoxShadow(
              color: AppColors.primary[-20],
              offset: const Offset(0, 5),
              blurRadius: 3,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TouchableArea(
              onTap: widget.onAuthorTap,
              child: Row(
                children: [
                  UserAvatar(
                    userInfo: author,
                    radius: _avatarRadius,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          author.fullName,
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
                        ..onTap = widget.onGoalTitleTap,
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
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LikeButton(
                    qty: post.likeQty,
                    isActive: false,
                    onTap: (isActivated) {
                      // TODO: implement like
                    },
                  ),
                  CommentButton(
                    isActive: false,
                    comments: post.comments,
                    onTap: (isActivated) {
                      isActivated ? _openComments() : _closeComments();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  Widget _buildCommentsSection() {
    final animFactor = _commentsVisibleAnimFactor;

    return AnimatedBuilder(
      animation: _animationController,
      builder: (_, __) => Align(
        heightFactor: _animation.value,
        child: Opacity(
          opacity: _animation.value >= animFactor
              ? (_animation.value - animFactor) / (1 - animFactor)
              : 0,
          // Comments section
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            constraints: BoxConstraints(
              minHeight: _minCommentsSectionHeight,
            ),
            decoration: BoxDecoration(
              color: AppColors.gray[20],
              borderRadius: BorderRadius.vertical(
                bottom: const Radius.circular(15),
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.primary[-20],
                  offset: const Offset(0, 3),
                  blurRadius: 3,
                ),
              ],
            ),
            child: Column(
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

                if (post.comments.isNotEmpty)
                  _buildComments(),

                // Text field for sending comments
                Container(
                  padding: const EdgeInsets.only(
                    left: _commentsHorizontalPadding,
                    right: _commentsHorizontalPadding,
                    top: _commentsVerticalPadding,
                    bottom: _commentsVerticalPadding,
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
                            widget.onSentComment(_commentTextController.text);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: const HorizontalLine(),
                  // TODO: close comments by vertical gesture
                  // child: GestureDetector(
                  //   onVerticalDragEnd: (_) => _closeComments(),
                  //   child: const HorizontalLine(),
                  // ),
                ),
                const SizedBox(height: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildComments() {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: _maxCommentsHeight,
      ),
      child: RawScrollbar(
        thumbColor: AppColors.gray[5],
        thickness: 4,
        child: SingleChildScrollView(
          child: Column(
            children: post.comments.expand((comment) => <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: _commentsHorizontalPadding + 3,
                  vertical: 7,
                ),
                child: _Comment(comment: comment),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: _commentsHorizontalPadding,
                  right: _commentsHorizontalPadding,
                  top: 5,
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
        ),
      ),
    );
  }

  void _openComments() {
    _animationController.forward();
  }

  void _closeComments() {
    _animationController.reverse();
  }

  @override
  void dispose() {
    _tapGestureRecognizer.dispose();
    _animationController.dispose();
    _commentTextController.dispose();
    super.dispose();
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
