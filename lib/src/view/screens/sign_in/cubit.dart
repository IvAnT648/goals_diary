
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/models/results.dart';
import '../../../domain/usecases/auth.dart';

class SignInScreenState {}

@injectable
class SignInCubit extends Cubit<SignInScreenState> {
  final SignInUseCase _signIn;

  SignInCubit(this._signIn) : super(SignInScreenState());

  Future<SignInResult> signIn({
    required String email,
    required String password,
  }) async => await _signIn(email, password);
}
