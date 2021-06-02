
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/models/feed.dart';
import '../../../domain/usecases.dart';
import 'cubit/states.dart';

export 'cubit/states.dart';

@injectable
class FeedScreenCubit extends Cubit<FeedScreenState> {
  final PostsUseCase _postsUseCase;
  final CommentsUseCase _commentsUseCase;

  Map<String, PostDto> _posts = {};

  FeedScreenCubit(this._postsUseCase, this._commentsUseCase)
      : super(FeedScreenState.loading()
  ) {
    _postsUseCase.all.listen((posts) {
      if (posts.isEmpty) {
        emit(FeedScreenState.empty());
        _posts = {};
        return;
      }
      posts.forEach((post) {
        _posts[post.id] = post;
      });
      _commentsUseCase
          .byPostIds(_posts.keys.toList())
          .listen(_commentsListener);
    });
  }

  void _emitLoaded() {
    emit(FeedScreenState.loaded(_posts.values.toList()));
  }

  void _commentsListener(List<PostCommentDto> allComments) {
    _posts.values.forEach((el) {
      el.comments.clear();
    });
    allComments.forEach((comment) {
      if (_posts[comment.postId] != null) {
        _posts[comment.postId]!.comments.add(comment);
      }
    });
    _emitLoaded();
  }

  void toggleLike(PostDto post) async {
    await _postsUseCase.toggleLike(post);
  }

  Future<bool> addComment(PostDto post, String text) async {
    final result = await _commentsUseCase.addComment(post, text);
    return result;
  }
}
