
import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../models.dart';

class SubscriptionsDto {
  final String uid;
  final List<UserDto> subscriptions;
  
  SubscriptionsDto({
    required this.uid,
    required this.subscriptions,
  });

  SubscriptionsDto copyWith({
    String? uid,
    List<UserDto>? subscriptions,
  }) {
    return SubscriptionsDto(
      uid: uid ?? this.uid,
      subscriptions: subscriptions ?? this.subscriptions,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'subscriptions': subscriptions.map((x) => x.toMap()).toList(),
    };
  }

  factory SubscriptionsDto.fromMap(Map<String, dynamic> map) {
    return SubscriptionsDto(
      uid: map['uid'],
      subscriptions: List<UserDto>.from(
          map['subscriptions']?.map((x) => UserDto.fromMap(x))
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory SubscriptionsDto.fromJson(String source) =>
      SubscriptionsDto.fromMap(json.decode(source));

  @override
  String toString() => 'SubscriptionsDto('
      'uid: $uid, subscriptions: $subscriptions)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is SubscriptionsDto &&
      other.uid == uid &&
      listEquals(other.subscriptions, subscriptions);
  }

  @override
  int get hashCode => uid.hashCode ^ subscriptions.hashCode;
}
