import 'dart:convert';

class GoalData {
  static const String authorIdKey = 'authorId';
  static const String isPublicKey = 'isPublic';

  final String title;
  final String? description;
  final bool isPublic;
  final bool isNotifying;
  final String authorId;

  GoalData({
    required this.title,
    this.description,
    required this.isPublic,
    required this.isNotifying,
    required this.authorId,
  });

  GoalData copyWith({
    String? title,
    String? description,
    bool? isPublic,
    bool? isNotifying,
    String? authorId,
  }) {
    return GoalData(
      title: title ?? this.title,
      description: description ?? this.description,
      isPublic: isPublic ?? this.isPublic,
      isNotifying: isNotifying ?? this.isNotifying,
      authorId: authorId ?? this.authorId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'isPublic': isPublic,
      'isNotifying': isNotifying,
      authorIdKey: authorId,
    };
  }

  factory GoalData.fromMap(Map<String, dynamic> map) {
    return GoalData(
      title: map['title'],
      description: map['description'],
      isPublic: map['isPublic'],
      isNotifying: map['isNotifying'],
      authorId: map[authorIdKey],
    );
  }

  factory GoalData.fromFirestore(Map<String, Object?> map) {
    return GoalData(
      title: map['title'] as String,
      description: map['description'] as String?,
      isPublic: map['isPublic'] as bool,
      isNotifying: map['isNotifying'] as bool,
      authorId: map[authorIdKey] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory GoalData.fromJson(String source) =>
      GoalData.fromMap(json.decode(source));

  @override
  String toString() {
    return 'GoalData(title: $title'
        ', description: $description'
        ', isPublic: $isPublic'
        ', isNotifying: $isNotifying'
        ', $authorIdKey: $authorId'
        ')';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is GoalData &&
      other.title == title &&
      other.description == description &&
      other.isPublic == isPublic &&
      other.isNotifying == isNotifying &&
      other.authorId == authorId;
  }

  @override
  int get hashCode {
    return title.hashCode ^
      description.hashCode ^
      isPublic.hashCode ^
      isNotifying.hashCode ^
      authorId.hashCode;
  }
}
