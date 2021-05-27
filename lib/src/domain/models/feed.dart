import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:goals_diary/src/domain/models.dart';

class PostCommentDto {
  final int id;
  final DateTime date;
  final String text;
  final UserInfoDto author;
  
  PostCommentDto({
    this.id = 0,
    required this.date,
    required this.text,
    required this.author,
  });

  PostCommentDto copyWith({
    int? id,
    DateTime? date,
    String? text,
    UserInfoDto? author,
  }) {
    return PostCommentDto(
      id: id ?? this.id,
      date: date ?? this.date,
      text: text ?? this.text,
      author: author ?? this.author,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'date': date.millisecondsSinceEpoch,
      'text': text,
      'author': author.toMap(),
    };
  }

  factory PostCommentDto.fromMap(Map<String, dynamic> map) {
    return PostCommentDto(
      id: map['id'],
      date: DateTime.fromMillisecondsSinceEpoch(map['date']),
      text: map['text'],
      author: UserInfoDto.fromMap(map['author']),
    );
  }

  String toJson() => json.encode(toMap());

  factory PostCommentDto.fromJson(String source) =>
      PostCommentDto.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PostCommentDto(id: $id'
        ', date: $date'
        ', text: $text'
        ', author: $author'
        ')';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is PostCommentDto &&
      other.id == id &&
      other.date == date &&
      other.text == text &&
      other.author == author;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      date.hashCode ^
      text.hashCode ^
      author.hashCode;
  }
}

class PostDto {
  final int id;
  final UserInfoDto author;
  final GoalDto goal;
  final DateTime date;
  final String? text;
  final int likeQty;
  final List<PostCommentDto> comments;

  PostDto({
    this.id = 0,
    required this.date,
    required this.author,
    required this.goal,
    this.text,
    this.likeQty = 0,
    this.comments = const [],
  });

  PostDto copyWith({
    int? id,
    UserInfoDto? author,
    GoalDto? goal,
    DateTime? date,
    String? comment,
    int? likeQty,
    List<PostCommentDto>? comments,
  }) {
    return PostDto(
      id: id ?? this.id,
      author: author ?? this.author,
      goal: goal ?? this.goal,
      date: date ?? this.date,
      text: comment ?? this.text,
      likeQty: likeQty ?? this.likeQty,
      comments: comments ?? this.comments,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'author': author.toMap(),
      'goal': goal.toMap(),
      'date': date.millisecondsSinceEpoch,
      'comment': text,
      'likeQty': likeQty,
      'comments': comments.map((x) => x.toMap()).toList(),
    };
  }

  factory PostDto.fromMap(Map<String, dynamic> map) {
    return PostDto(
      id: map['id'],
      author: UserInfoDto.fromMap(map['author']),
      goal: GoalDto.fromMap(map['goal']),
      date: DateTime.fromMillisecondsSinceEpoch(map['date']),
      text: map['comment'],
      likeQty: map['likeQty'],
      comments: List<PostCommentDto>.from(
          map['comments']?.map((x) => PostCommentDto.fromMap(x))
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory PostDto.fromJson(String source) =>
      PostDto.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PostDto(id: $id'
        ', author: $author'
        ', goal: $goal'
        ', date: $date'
        ', comment: $text'
        ', likeQty: $likeQty'
        ', comments: $comments'
        ')';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is PostDto &&
      other.id == id &&
      other.author == author &&
      other.goal == goal &&
      other.date == date &&
      other.text == text &&
      other.likeQty == likeQty &&
      listEquals(other.comments, comments);
  }

  @override
  int get hashCode {
    return id.hashCode ^
      author.hashCode ^
      goal.hashCode ^
      date.hashCode ^
      text.hashCode ^
      likeQty.hashCode ^
      comments.hashCode;
  }
}
