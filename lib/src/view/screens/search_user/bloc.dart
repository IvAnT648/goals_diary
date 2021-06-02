
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

class SearchUserState {}

@injectable
class SearchUserBloc extends Cubit<SearchUserState> {
  SearchUserBloc() : super(SearchUserState());
}
