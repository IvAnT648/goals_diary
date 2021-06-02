
import 'package:injectable/injectable.dart';

import '../../data/repository/comments.dart';
import '../models.dart';

abstract class CommentsUseCase {
  Stream<List<PostCommentDto>> byPostIds(List<String> ids);
  Future<bool> addComment(PostDto post, String text);
}

@Injectable(as: CommentsUseCase)
class CommentsUseCaseImpl implements CommentsUseCase {
  final CommentsRepository _repository;

  CommentsUseCaseImpl(this._repository);

  Stream<List<PostCommentDto>> byPostIds(List<String> ids) async* {
    yield* _repository.byPostIds(ids);
  }

  @override
  Future<bool> addComment(PostDto post, String text) async {
    return await _repository.addComment(post.id, text);
  }
}
