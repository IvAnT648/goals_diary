
import 'dart:async';

import 'package:injectable/injectable.dart';

import '../../data/repository/auth.dart';
import '../../data/repository/profile.dart';
import '../models.dart';

abstract class ProfileUseCase {
  Stream<UserDto?> get ownStream;
  String? get ownId;
  Stream<UserDto?> getById(String id, bool loadGoals);
  Future<SaveProfileResult> save(UserDto user);
  Future<SaveProfileResult> saveOwn(UserDto user);
  Future<bool> isAvailableNickname(String nickname);
  Future<List<UserDto>> search(String request);
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
  Future<SaveProfileResult> save(UserDto user) async {
    return await _profileRepository.save(user);
  }

  Future<SaveProfileResult> saveOwn(UserDto user) async {
    return await _profileRepository.saveOwn(user);
  }

  @override
  Future<bool> isAvailableNickname(String nickname) async {
    return await _profileRepository.isAvailableNickname(nickname);
  }

  @override
  Stream<UserDto?> getById(String id, bool loadGoals) async* {
    yield* _profileRepository.get(id, loadGoals);
  }

  @override
  String? get ownId => _authRepository.currentUserId;

  @override
  Future<List<UserDto>> search(String request) {
    return _profileRepository.search(request);
  }
}
