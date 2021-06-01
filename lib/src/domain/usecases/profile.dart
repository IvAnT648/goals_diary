
import 'dart:async';

import 'package:goals_diary/src/data/repository/auth.dart';
import 'package:injectable/injectable.dart';

import '../../data/repository/profile.dart';
import '../models.dart';

abstract class ProfileUseCase {
  Stream<UserDto?> get ownStream;
  String? get ownId;
  Stream<UserDto?> getById(String id);
  void save(UserDto user);
  Future<void> saveOwn(UserDto user);
  Future<bool> isAvailableNickname(String nickname);
}

@Injectable(as: ProfileUseCase)
class ProfileUseCaseImpl implements ProfileUseCase {
  final ProfileRepository _profileRepository;
  final AuthRepository _authRepository;

  ProfileUseCaseImpl(this._profileRepository, this._authRepository);

  @override
  Stream<UserDto?> get ownStream async* {
    yield* _profileRepository.meStream;
  }

  @override
  void save(UserDto user) async => await _profileRepository.save(user);

  Future<void> saveOwn(UserDto user) => _profileRepository.saveOwn(user);

  @override
  Future<bool> isAvailableNickname(String nickname) async {
    return await _profileRepository.isAvailableNickname(nickname);
  }

  @override
  Stream<UserDto?> getById(String id) async* {
    yield* _profileRepository.get(id);
  }

  @override
  String? get ownId => _authRepository.currentUserId;
}
