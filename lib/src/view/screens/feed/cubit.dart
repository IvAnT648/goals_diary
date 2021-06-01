
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/usecases.dart';
import 'cubit/states.dart';

export 'cubit/states.dart';

@injectable
class FeedScreenCubit extends Cubit<FeedScreenState> {
  final GetPostsUseCase _getPosts;

  FeedScreenCubit(this._getPosts) : super(FeedScreenState.loading()) {
    _getPosts().listen((posts) {
      if (posts.isEmpty) {
        emit(FeedScreenState.empty());
        return;
      }
      emit(FeedScreenState.loaded(posts));
    });
  }
}
