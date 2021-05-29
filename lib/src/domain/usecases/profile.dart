
import 'dart:async';

import 'package:injectable/injectable.dart';

import '../../data/repository/profile.dart';
import '../models.dart';

abstract class ProfileUseCase {
  Stream<UserDto?> get own;
  void save(UserDto user);
  Future<void> saveOwn(UserDto user);
  Future<bool> isAvailableNickname(String nickname);
}

@Injectable(as: ProfileUseCase)
class ProfileUseCaseImpl implements ProfileUseCase {
  final ProfileRepository _repository;

  ProfileUseCaseImpl(this._repository);

  @override
  Stream<UserDto?> get own async* {
    yield* _repository.me;
  }

  @override
  void save(UserDto user) async => await _repository.save(user);

  Future<void> saveOwn(UserDto user) => _repository.saveOwn(user);

  @override
  Future<bool> isAvailableNickname(String nickname) async {
    return await _repository.isAvailableNickname(nickname);
  }
}
