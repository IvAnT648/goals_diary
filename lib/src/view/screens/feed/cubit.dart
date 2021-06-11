
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/models/feed.dart';
import '../../../domain/usecases.dart';
import 'cubit/states.dart';

export 'cubit/states.dart';

@injectable
class FeedScreenCubit extends Cubit<FeedScreenState> {
  final PostsUseCase _postsUseCase;

  FeedScreenCubit(this._postsUseCase)
      : super(FeedScreenState.loading()
  ) {
    _postsUseCase.all.listen((posts) {
      if (posts.isEmpty) {
        emit(FeedScreenState.empty());
      }
      emit(FeedScreenState.loaded(posts));
    });
  }

  void toggleLike(PostDto post) async {
    _postsUseCase.toggleLike(post);
  }
}
