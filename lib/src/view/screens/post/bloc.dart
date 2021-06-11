
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/usecases.dart';
import '../../../domain/models.dart';

part 'bloc.freezed.dart';

@freezed
class PostScreenState with _$PostScreenState {
  const factory PostScreenState.notFound() = NotFoundPostScreenState;
  const factory PostScreenState.show(PostDto post) = ShowPostScreenState;
}

class PostScreenBloc extends Cubit<PostScreenState> {
  final PostsUseCase _postsUseCase;
  final CommentsUseCase _commentsUseCase;
  final PostDto? post;

  PostScreenBloc(this._postsUseCase, this._commentsUseCase, {
    this.post,
  }) : super(post == null
      ? PostScreenState.notFound()
      : PostScreenState.show(post)
  );

  Stream<PostDto?>? get postStream {
    return post == null ? null : _postsUseCase.byIdStream(post!.id);
  }

  Stream<List<PostCommentDto>>? get postCommentsStream {
    return post == null ? null : _commentsUseCase.byPostId(post!.id);
  }

  void toggleLike() async {
    if (post == null) return;

    _postsUseCase.toggleLike(post!);
  }

  Future<bool> addComment(String text) async {
    if (post == null) return false;

    return await _commentsUseCase.addComment(post!, text);
  }

  void emitPostNotFound() {
    emit(PostScreenState.notFound());
  }
}
