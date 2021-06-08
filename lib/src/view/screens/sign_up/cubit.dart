import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/models.dart';
import '../../../domain/usecases.dart';

class SignUpScreenState {}

@injectable
class SignUpCubit extends Cubit<SignUpScreenState> {
  final SignUpUseCase _signUp;

  SignUpCubit(this._signUp) : super(SignUpScreenState());

  Future<SignUpResult> signUp({
    required String email,
    required String password,
    required String name,
    String? surname,
    required String nickname,
  }) async {
    return await _signUp(
      email: email,
      password: password,
      name: name,
      surname: surname,
      nickname: nickname,
    );
  }
}
