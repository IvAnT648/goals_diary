
import 'dart:convert';

class ProfileData {
  final String name;
  final String? surname;
  final int? age;
  final String? motto;
  final String? about;
  
  ProfileData({
    required this.name,
    this.surname,
    this.age,
    this.motto,
    this.about,
  });

  ProfileData copyWith({
    String? name,
    String? surname,
    int? age,
    String? motto,
    String? about,
  }) {
    return ProfileData(
      name: name ?? this.name,
      surname: surname ?? this.surname,
      age: age ?? this.age,
      motto: motto ?? this.motto,
      about: about ?? this.about,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'surname': surname,
      'age': age,
      'motto': motto,
      'about': about,
    };
  }

  factory ProfileData.fromMap(Map<String, dynamic> map) {
    return ProfileData(
      name: map['name'],
      surname: map['surname'],
      age: map['age'],
      motto: map['motto'],
      about: map['about'],
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
        ', age: $age'
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
      other.age == age &&
      other.motto == motto &&
      other.about == about;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      surname.hashCode ^
      age.hashCode ^
      motto.hashCode ^
      about.hashCode;
  }
}
