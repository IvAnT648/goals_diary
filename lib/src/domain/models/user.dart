
import 'goal.dart';

class UserDto {
  final String id;
  final String name;
  final String? nickname;
  final String? surname;
  final String? about;
  final String? motto;
  final String? avatarUrl;
  final List<GoalDto> goals;

  const UserDto({
    required this.id,
    required this.name,
    this.nickname,
    this.surname,
    this.about,
    this.motto,
    this.avatarUrl,
    this.goals = const [],
  });

  String get nicknameWithAt => nickname != null ? '@$nickname' : '';

  String get fullName {
    if (surname == null || surname!.isEmpty) {
      return name;
    }
    return '$name $surname';
  }

  String get nameAbbreviation {
    return (name.isNotEmpty ? name[0].toUpperCase() : '')
        + (surname != null ? surname![0].toUpperCase() : '');
  }

  UserDto copyWith({
    String? id,
    String? name,
    String? nickname,
    String? about,
    String? motto,
    String? avatarUrl,
  }) {
    return UserDto(
      id: id ?? this.id,
      name: name ?? this.name,
      nickname: nickname ?? this.nickname,
      about: about ?? this.about,
      motto: motto ?? this.motto,
      avatarUrl: avatarUrl ?? this.avatarUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'nickname': nickname,
      'about': about,
      'motto': motto,
      'avatarUrl': avatarUrl,
    };
  }

  factory UserDto.fromMap(Map<String, dynamic> map) {
    return UserDto(
      id: map['id'] as String,
      name: map['name'] as String,
      nickname: map['nickname'] as String?,
      about: map['about'] as String?,
      motto: map['motto'] as String?,
      avatarUrl: map['avatarUrl'] as String?,
    );
  }

  @override
  String toString() {
    return 'UserDto(id: $id'
        ', name: $name'
        ', nickname: $nickname'
        ', about: $about'
        ', motto: $motto'
        ', avatarUrl: $avatarUrl'
        ')';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserDto &&
        other.id == id &&
        other.name == name &&
        other.nickname == nickname &&
        other.about == about &&
        other.motto == motto &&
        other.avatarUrl == avatarUrl;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        nickname.hashCode ^
        about.hashCode ^
        motto.hashCode ^
        avatarUrl.hashCode;
  }
}
