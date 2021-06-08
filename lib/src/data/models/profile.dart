
import 'dart:convert';

class ProfileData {
  static const String nicknameKey = 'nickname';

  final String name;
  final String? surname;
  final String nickname;
  final String? motto;
  final String? about;
  
  ProfileData({
    required this.name,
    this.surname,
    required this.nickname,
    this.motto,
    this.about,
  });

  ProfileData copyWith({
    String? name,
    String? surname,
    String? nickname,
    String? motto,
    String? about,
  }) {
    return ProfileData(
      name: name ?? this.name,
      surname: surname ?? this.surname,
      nickname: nickname ?? this.nickname,
      motto: motto ?? this.motto,
      about: about ?? this.about,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'surname': surname,
      'nickname': nickname,
      'motto': motto,
      'about': about,
    };
  }

  factory ProfileData.fromMap(Map<String, dynamic> map) {
    return ProfileData(
      name: (map['name'] ?? '') as String,
      surname: map['surname'] as String?,
      nickname: (map['nickname'] ?? '') as String,
      motto: map['motto'] as String?,
      about: map['about'] as String?,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProfileData.fromJson(String source) =>
      ProfileData.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProfileData('
        'name: $name'
        ', surname: $surname'
        ', nickname: $nickname'
        ', motto: $motto'
        ', about: $about'
        ')';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ProfileData &&
      other.name == name &&
      other.surname == surname &&
      other.nickname == nickname &&
      other.motto == motto &&
      other.about == about;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      surname.hashCode ^
      nickname.hashCode ^
      motto.hashCode ^
      about.hashCode;
  }
}
