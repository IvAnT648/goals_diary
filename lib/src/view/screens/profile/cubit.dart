import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/usecases.dart';
import 'cubit/states.dart';

export 'cubit/states.dart';

@injectable
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
