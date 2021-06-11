
import 'package:injectable/injectable.dart';

import '../../data/repository/posts.dart';
import '../models.dart';

abstract class PostsUseCase {
  Future<bool> toggleLike(PostDto post);
  Stream<List<PostDto>> get all;
  Stream<PostDto?> byIdStream(String id);
}

@Injectable(as: PostsUseCase)
class PostsUseCaseImpl implements PostsUseCase {
  final PostsRepository _repository;

  PostsUseCaseImpl(this._repository);

  Future<bool> toggleLike(PostDto post) async {
    return await (post.like
        ? _repository.unlike(post)
        : _repository.like(post)
    );
  }

  @override
  Stream<List<PostDto>> get all async* {
    yield* _repository.posts();
  }

  @override
  Stream<PostDto?> byIdStream(String id) async* {
    yield* _repository.byId(id);
  }
}
