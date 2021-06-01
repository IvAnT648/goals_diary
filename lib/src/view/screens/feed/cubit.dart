
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/models/feed.dart';
import '../../../domain/usecases/posts.dart';
import 'cubit/states.dart';

export 'cubit/states.dart';

@injectable
class FeedScreenCubit extends Cubit<FeedScreenState> {
  final PostsUseCase _posts;

  FeedScreenCubit(this._posts) : super(FeedScreenState.loading()) {
    _posts.all.listen((posts) {
      if (posts.isEmpty) {
        emit(FeedScreenState.empty());
        return;
      }
      emit(FeedScreenState.loaded(posts));
    });
  }

  void toggleLike(PostDto post) async {
    await _posts.toggleLike(post);
  }
}
