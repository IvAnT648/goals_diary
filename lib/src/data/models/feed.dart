
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class PostCommentRaw {
  static const String postIdKey = 'postId';

  final String postId;
  final String authorId;
  final String text;
  final DateTime createdAt;

  PostCommentRaw({
    required this.postId,
    required this.authorId,
    required this.text,
    required this.createdAt,
  });

  PostCommentRaw copyWith({
    String? postId,
    String? authorId,
    String? text,
    DateTime? createdAt,
  }) {
    return PostCommentRaw(
      postId: postId ?? this.postId,
      authorId: authorId ?? this.authorId,
      text: text ?? this.text,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'postId': postId,
      'authorId': authorId,
      'text': text,
      'createdAt': createdAt.millisecondsSinceEpoch,
    };
  }

  factory PostCommentRaw.fromMap(Map<String, dynamic> map) {
    return PostCommentRaw(
      postId: map['postId'],
      authorId: map['authorId'],
      text: map['text'],
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt']),
    );
  }

  @override
  String toString() {
    return 'PostCommentRaw(postId: $postId, authorId: $authorId, '
        'text: $text, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is PostCommentRaw &&
      other.postId == postId &&
      other.authorId == authorId &&
      other.text == text &&
      other.createdAt == createdAt;
  }

  @override
  int get hashCode {
    return postId.hashCode ^
      authorId.hashCode ^
      text.hashCode ^
      createdAt.hashCode;
  }
}

class PostRaw {
  static const String authorIdKey = 'authorId';
  static const String activityIdKey = 'activityId';
  static const String dateKey = 'createdAt';
  static const String likedItKey = 'likedIt';

  final String activityId;
  final String authorId;
  final String goalId;
  final String? text;
  final List<String> likedIt;
  final DateTime createdAt;

  PostRaw({
    required this.activityId,
    required this.authorId,
    required this.goalId,
    this.text,
    required this.likedIt,
    required this.createdAt,
  });

  PostRaw copyWith({
    String? activityId,
    String? authorId,
    String? goalId,
    String? text,
    List<String>? likedIt,
    DateTime? createdAt,
  }) {
    return PostRaw(
      activityId: activityId ?? this.activityId,
      authorId: authorId ?? this.authorId,
      goalId: goalId ?? this.goalId,
      text: text ?? this.text,
      likedIt: likedIt ?? this.likedIt,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'activityId': activityId,
      'authorId': authorId,
      'goalId': goalId,
      'text': text,
      'likedIt': likedIt,
      'createdAt': createdAt,
    };
  }

  factory PostRaw.fromMap(Map<String, dynamic> map) {
    return PostRaw(
      activityId: map['activityId'],
      authorId: map['authorId'],
      goalId: map['goalId'],
      text: map['text'],
      createdAt: DateTime.fromMillisecondsSinceEpoch(
          (map['createdAt'] as Timestamp).millisecondsSinceEpoch
      ),
      likedIt: List<String>.from(map['likedIt']),
    );
  }

  @override
  String toString() {
    return 'PostRaw(activityId: $activityId, authorId: $authorId'
        ', goalId: $goalId, text: $text'
        ', likedIt: $likedIt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is PostRaw &&
      other.activityId == activityId &&
      other.authorId == authorId &&
      other.goalId == goalId &&
      other.text == text &&
      other.createdAt == createdAt &&
      listEquals(other.likedIt, likedIt);
  }

  @override
  int get hashCode {
    return activityId.hashCode ^
      authorId.hashCode ^
      goalId.hashCode ^
      text.hashCode ^
      createdAt.hashCode ^
      likedIt.hashCode;
  }
}
