
import 'package:injectable/injectable.dart';

import '../../data/repository/posts.dart';
import '../models.dart';

abstract class GetPostsUseCase {
  Stream<List<PostDto>> call();
}

@Injectable(as: GetPostsUseCase)
class GetPostsUseCaseImpl implements GetPostsUseCase {
  final PostsRepository _repository;

  GetPostsUseCaseImpl(this._repository);

  @override
  Stream<List<PostDto>> call() async* {
    yield* _repository.posts;
  }
}
