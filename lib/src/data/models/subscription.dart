import 'dart:convert';

import 'package:flutter/foundation.dart';

class SubscriptionsData {
  static const String subscriptionsKey = 'subscriptions';

  final List<String> subscriptions;

  SubscriptionsData({
    required this.subscriptions,
  });

  SubscriptionsData copyWith({
    List<String>? subscriptions,
  }) {
    return SubscriptionsData(
      subscriptions: subscriptions ?? this.subscriptions,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'subscriptions': subscriptions,
    };
  }

  factory SubscriptionsData.fromMap(Map<String, dynamic> map) {
    return SubscriptionsData(
      subscriptions: List<String>.from(map['subscriptions']),
    );
  }

  String toJson() => json.encode(toMap());

  factory SubscriptionsData.fromJson(String source) =>
      SubscriptionsData.fromMap(json.decode(source));

  @override
  String toString() => 'SubscriptionData(subscriptions: $subscriptions)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is SubscriptionsData &&
      listEquals(other.subscriptions, subscriptions);
  }

  @override
  int get hashCode => subscriptions.hashCode;
}
