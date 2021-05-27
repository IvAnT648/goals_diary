
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecases.dart';
import 'bloc/states.dart';

export 'bloc/states.dart';

class FeedScreenCubit extends Cubit<FeedScreenState> {
  final GetPostsUseCase _getPosts;

  FeedScreenCubit(this._getPosts) : super(FeedScreenState.loading()) {
    emit(FeedScreenState.loaded(_getPosts()));
  }
}
