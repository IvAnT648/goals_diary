
import 'package:flutter/foundation.dart';

import '../models.dart';

class PostCommentDto {
  final DateTime date;
  final String text;
  final UserDto author;
  final String postId;

  PostCommentDto({
    required this.date,
    required this.text,
    required this.author,
    required this.postId,
  });

  PostCommentDto copyWith({
    String? id,
    DateTime? date,
    String? text,
    String? postId,
    UserDto? author,
  }) {
    return PostCommentDto(
      date: date ?? this.date,
      text: text ?? this.text,
      author: author ?? this.author,
      postId: postId ?? this.postId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'date': date.millisecondsSinceEpoch,
      'text': text,
      'author': author.toMap(),
      'postId': postId,
    };
  }

  factory PostCommentDto.fromMap(Map<String, dynamic> map) {
    return PostCommentDto(
      date: DateTime.fromMillisecondsSinceEpoch(map['date']),
      text: map['text'],
      postId: map['postId'],
      author: UserDto.fromMap(map['author']),
    );
  }

  @override
  String toString() {
    return 'PostCommentDto(date: $date'
        ', text: $text'
        ', postId: $postId'
        ', author: $author'
        ')';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is PostCommentDto &&
      other.date == date &&
      other.text == text &&
      other.postId == postId &&
      other.author == author;
  }

  @override
  int get hashCode => date.hashCode ^
      text.hashCode ^
      postId.hashCode ^
      author.hashCode;
}

class PostDto {
  final String id;
  final UserDto author;
  final GoalDto goal;
  final DateTime date;
  final String? text;
  final int likeQty;
  final bool like;
  final List<PostCommentDto> comments;

  PostDto({
    required this.id,
    required this.date,
    required this.author,
    required this.goal,
    this.text,
    this.likeQty = 0,
    required this.like,
    this.comments = const [],
  });

  PostDto copyWith({
    String? id,
    UserDto? author,
    GoalDto? goal,
    DateTime? date,
    String? comment,
    int? likeQty,
    bool? like,
    List<PostCommentDto>? comments,
  }) {
    return PostDto(
      id: id ?? this.id,
      author: author ?? this.author,
      goal: goal ?? this.goal,
      date: date ?? this.date,
      text: comment ?? this.text,
      likeQty: likeQty ?? this.likeQty,
      like: like ?? this.like,
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
      'like': like,
      'comments': comments.map((x) => x.toMap()).toList(),
    };
  }

  factory PostDto.fromMap(Map<String, dynamic> map) {
    return PostDto(
      id: map['id'],
      author: UserDto.fromMap(map['author']),
      goal: GoalDto.fromMap(map['goal']),
      date: DateTime.fromMillisecondsSinceEpoch(map['date']),
      text: map['comment'],
      likeQty: map['likeQty'],
      like: map['like'],
      comments: List<PostCommentDto>.from(
          map['comments']?.map((x) => PostCommentDto.fromMap(x))
      ),
    );
  }

  @override
  String toString() {
    return 'PostDto(id: $id'
        ', author: $author'
        ', goal: $goal'
        ', date: $date'
        ', comment: $text'
        ', likeQty: $likeQty'
        ', like: $like'
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
      other.like == like &&
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
      like.hashCode ^
      comments.hashCode;
  }
}
