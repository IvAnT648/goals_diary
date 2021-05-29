import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/models.dart';
import '../../../domain/usecases.dart';
import 'cubit/states.dart';

export 'cubit/states.dart';

enum ProfileScreenType { own, other }

class ProfileScreenCubit extends Cubit<ProfileScreenState> {
  final ProfileUseCase _profile;
  final ProfileScreenType type;

  ProfileScreenCubit(this._profile, {required this.type})
      : super(ProfileScreenState.loading()
  ) {
    switch (type) {
      case ProfileScreenType.own:
        _profile.own.listen((user) {
          if (user != null) {
            emit(ProfileScreenState.own(user));
          }
        });
        break;
      case ProfileScreenType.other:
        // TODO: implement profile page for other users
        break;
    }
  }

  Future<SaveProfileResult> save({
    required String name,
    required String surname,
    required String motto,
    required String about,
  }) async {
    if (name.isEmpty) {
      return SaveProfileResult.emptyName();
    }

    await _profile.saveOwn(UserDto(
      id: '',
      name: name,
      surname: surname,
      motto: motto,
      about: about,
    ));

    return SaveProfileResult.success();
  }

  void subscribe() {
    //emit(ProfileScreenState.subscribed(_getOwnProfile()));
  }

  void unsubscribe() {
    //emit(ProfileScreenState.unsubscribed(_getOwnProfile()));
  }
}
