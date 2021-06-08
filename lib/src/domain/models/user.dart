
import 'goal.dart';

class UserDto {
  final String id;
  final String name;
  final String nickname;
  final String? surname;
  final String? about;
  final String? motto;
  final String? avatarUrl;
  final List<GoalDto> goals;
  // The user has subscription to the current user flag
  final bool? isSubscribed;

  const UserDto({
    required this.id,
    required this.name,
    required this.nickname,
    this.surname,
    this.about,
    this.motto,
    this.avatarUrl,
    this.goals = const [],
    this.isSubscribed,
  });

  String get nicknameWithAt => nickname.isNotEmpty ? '@$nickname' : '';

  String get fullName {
    if (surname == null || surname!.isEmpty) {
      return name;
    }
    return '$name $surname';
  }

  String get nameAbbreviation {
    return (name.isNotEmpty ? name[0].toUpperCase() : '')
        + ((surname != null && surname!.isNotEmpty)
            ? surname![0].toUpperCase()
            : ''
        );
  }

  UserDto copyWith({
    String? id,
    String? name,
    String? surname,
    String? nickname,
    String? about,
    String? motto,
    String? avatarUrl,
    List<GoalDto>? goals,
    bool? isSubscribed,
  }) {
    return UserDto(
      id: id ?? this.id,
      name: name ?? this.name,
      surname: surname ?? this.surname,
      nickname: nickname ?? this.nickname,
      about: about ?? this.about,
      motto: motto ?? this.motto,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      goals: goals ?? this.goals,
      isSubscribed: isSubscribed ?? this.isSubscribed,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'surname': surname,
      'nickname': nickname,
      'about': about,
      'motto': motto,
      'avatarUrl': avatarUrl,
      'goals': goals,
      'isSubscribed': isSubscribed,
    };
  }

  factory UserDto.fromMap(Map<String, dynamic> map) {
    return UserDto(
      id: map['id'] as String,
      name: map['name'] as String,
      surname: map['surname'] as String?,
      nickname: map['nickname'] as String,
      about: map['about'] as String?,
      motto: map['motto'] as String?,
      avatarUrl: map['avatarUrl'] as String?,
      goals: map['goals'] as List<GoalDto>,
      isSubscribed: map['isSubscribed'] as bool?,
    );
  }

  @override
  String toString() {
    return 'UserDto(id: $id'
        ', name: $name'
        ', surname: $surname'
        ', nickname: $nickname'
        ', about: $about'
        ', motto: $motto'
        ', avatarUrl: $avatarUrl'
        ', goals: $goals'
        ', isSubscribed: $isSubscribed'
        ')';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserDto &&
        other.id == id &&
        other.name == name &&
        other.surname == surname &&
        other.nickname == nickname &&
        other.about == about &&
        other.motto == motto &&
        other.goals == goals &&
        other.isSubscribed == isSubscribed &&
        other.avatarUrl == avatarUrl;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        surname.hashCode ^
        nickname.hashCode ^
        about.hashCode ^
        motto.hashCode ^
        goals.hashCode ^
        isSubscribed.hashCode ^
        avatarUrl.hashCode;
  }
}
