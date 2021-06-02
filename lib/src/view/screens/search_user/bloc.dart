
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/models/user.dart';
import '../../../domain/usecases/profile.dart';

part 'bloc.freezed.dart';

@freezed
class SearchUserState {
  const factory SearchUserState.initial() = InitialSearchUserState;
  const factory SearchUserState.searched(List<UserDto> list) =
    SearchedSearchUserState;
}

@injectable
class SearchUserBloc extends Cubit<SearchUserState> {
  final ProfileUseCase _profileUseCase;

  SearchUserBloc(this._profileUseCase) : super(SearchUserState.initial());

  void search(String request) async {
    if (request.isEmpty) {
      return emit(SearchUserState.searched([]));
    }
    final result = await _profileUseCase.search(request);
    emit(SearchUserState.searched(result));
  }
}
