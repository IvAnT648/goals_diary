import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/models/results.dart';
import '../../../domain/usecases/auth.dart';

class SignUpScreenState {}

@injectable
class SignUpCubit extends Cubit<SignUpScreenState> {
  final SignUpUseCase _signUp;

  SignUpCubit(this._signUp) : super(SignUpScreenState());

  Future<SignUpResult> signUp({
    required String email,
    required String password,
  }) async => await _signUp(email, password);
}
