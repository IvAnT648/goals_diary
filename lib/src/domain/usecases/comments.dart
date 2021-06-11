
import 'package:injectable/injectable.dart';

import '../../data/repository/comments.dart';
import '../models.dart';

abstract class CommentsUseCase {
  Stream<List<PostCommentDto>> byPostId(String id);
  Future<bool> addComment(PostDto post, String text);
}

@Injectable(as: CommentsUseCase)
class CommentsUseCaseImpl implements CommentsUseCase {
  final CommentsRepository _repository;

  CommentsUseCaseImpl(this._repository);

  Stream<List<PostCommentDto>> byPostId(String id) async* {
    yield* _repository.byPostId(id);
  }

  @override
  Future<bool> addComment(PostDto post, String text) async {
    return await _repository.addComment(post.id, text);
  }
}
