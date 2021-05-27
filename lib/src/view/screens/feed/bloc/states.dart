
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models.dart';

part 'states.freezed.dart';

@freezed
class FeedScreenState with _$FeedScreenState {
  const factory FeedScreenState.loading() = LoadingFeedScreenState;

  const factory FeedScreenState.loaded(List<PostDto> posts) =
    LoadedFeedScreenState;

  const factory FeedScreenState.networkError() = NetworkErrorFeedScreenState;

  const factory FeedScreenState.empty() = EmptyFeedScreenState;
}

