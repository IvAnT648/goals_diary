
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models.dart';

part 'bloc.freezed.dart';

@freezed
class PostScreenState with _$PostScreenState {
  const factory PostScreenState.loading() = LoadingPostScreenState;
  const factory PostScreenState.notFound() = NotFoundPostScreenState;
  const factory PostScreenState.show(PostDto post) = ShowPostScreenState;
}

class PostScreenBloc extends Cubit<PostScreenState> {
  final PostDto? post;

  PostScreenBloc({
    this.post,
  }) : super(post == null
      ? PostScreenState.notFound()
      : PostScreenState.show(post));
}
