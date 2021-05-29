
class UserInfoDto {
  final String? id;
  final String name;
  final String? nickname;
  final String? surname;
  final String? info;
  final String? motto;
  final String? avatarUrl;

  const UserInfoDto({
    this.id,
    required this.name,
    this.nickname,
    this.surname,
    this.info,
    this.motto,
    this.avatarUrl,
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

  UserInfoDto copyWith({
    String? id,
    String? name,
    String? nickname,
    String? info,
    String? motto,
    String? avatarUrl,
  }) {
    return UserInfoDto(
      id: id ?? this.id,
      name: name ?? this.name,
      nickname: nickname ?? this.nickname,
      info: info ?? this.info,
      motto: motto ?? this.motto,
      avatarUrl: avatarUrl ?? this.avatarUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'nickname': nickname,
      'info': info,
      'motto': motto,
      'avatarUrl': avatarUrl,
    };
  }

  factory UserInfoDto.fromMap(Map<String, dynamic> map) {
    return UserInfoDto(
      id: map['id'],
      name: map['name'],
      nickname: map['nickname'],
      info: map['info'],
      motto: map['motto'],
      avatarUrl: map['avatarUrl'],
    );
  }

  @override
  String toString() {
    return 'UserDto(id: $id'
        ', name: $name'
        ', nickname: $nickname'
        ', info: $info'
        ', motto: $motto'
        ', avatarUrl: $avatarUrl'
        ')';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserInfoDto &&
        other.id == id &&
        other.name == name &&
        other.nickname == nickname &&
        other.info == info &&
        other.motto == motto &&
        other.avatarUrl == avatarUrl;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        nickname.hashCode ^
        info.hashCode ^
        motto.hashCode ^
        avatarUrl.hashCode;
  }
}
