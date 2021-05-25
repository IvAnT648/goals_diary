import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecases.dart';
import 'bloc/states.dart';

export 'bloc/states.dart';

class ProfileScreenCubit extends Cubit<ProfileScreenState> {
  final GetOwnProfileInfoUseCase _getOwnProfileInfo;

  ProfileScreenCubit(this._getOwnProfileInfo)
      : super(ProfileScreenState.own(_getOwnProfileInfo()));

  void save({
    required String name,
    required String surname,
    required String motto,
    required String about,
  }) {
    // TODO: validate and save changes
  }

  void subscribe() {
    emit(ProfileScreenState.subscribed(_getOwnProfileInfo()));
  }

  void unsubscribe() {
    emit(ProfileScreenState.unsubscribed(_getOwnProfileInfo()));
  }
}
