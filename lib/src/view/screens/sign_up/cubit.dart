import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/models.dart';
import '../../../domain/usecases.dart';

class SignUpScreenState {}

@injectable
class SignUpCubit extends Cubit<SignUpScreenState> {
  final SignUpUseCase _signUp;
  final ProfileUseCase _profile;

  SignUpCubit(this._signUp, this._profile) : super(SignUpScreenState());

  Future<SignUpResult> signUp({
    required String email,
    required String password,
    required String name,
    String? surname,
    String? nickname,
  }) async {
    final result = await _signUp(email, password);
    if (result is SuccessSignUpResult) {
      _profile.save(
          UserDto(
            id: result.uid,
            name: name,
            surname: surname,
            nickname: nickname,
          )
      );
    }

    return result;
  }
}
