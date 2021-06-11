
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../common/resources.dart';
import '../../domain/models.dart';
import '../components/utils.dart';
import '../components.dart';

class FeedPost extends StatefulWidget {
  final PostDto post;
  final VoidCallback? onTap;
  final VoidCallback? onLikeTap;

  const FeedPost({
    Key? key,
    required this.post,
    this.onTap,
    this.onLikeTap,
  }) : super(key: key);

  @override
  _FeedPostState createState() => _FeedPostState();
}

class _FeedPostState extends State<FeedPost> {
  static const double _postPadding = 15;
  static const double _avatarRadius = 23;
  static const double _postBorderRadius = 6;
  static const double _postTextBorderRadius = 8;
  static const double _postTextPadding = 10;
  static const double _postTextMinHeight = 80;

  PostDto get post => widget.post;
  UserDto get author => post.author;

  @override
  Widget build(BuildContext context) {
    return Container(
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
        children: [
          TouchableArea(
            onTap: widget.onTap,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    UserAvatar(
                      userInfo: author,
                      radius: _avatarRadius,
                      isBordered: true,
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
                          style:
                              TextStyles.h4.copyWith(color: AppColors.primary),
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
              ],
            ),
          ),

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
                  onTap: widget.onLikeTap,
                ),
                CommentFakeButton(
                  isActive: false,
                  onTap: widget.onTap,
                  qty: post.comments.length,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
