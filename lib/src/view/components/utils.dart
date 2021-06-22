
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../common/resources.dart';
import '../../domain/models.dart';
import '../utils.dart';

extension GoalTypeToLocalizedString on GoalType {
  String toText() {
    switch (this) {
      case GoalType.private:
        return S.current.commonPrivateGoal;
      case GoalType.public:
        return S.current.commonPublicGoal;
    }
  }
}

extension FeedDateTimeExt on DateTime {
  static const String _dateFormat = 'd MMM yyyy';
  static const String _dateFormatWithoutYear = 'd MMM';

  String formatForFeedPost(BuildContext context) {
    final now = DateTime.now();
    final difference = now.difference(this);
    final dateFormat = now.year == this.year
        ? _dateFormatWithoutYear
        : _dateFormat;

    var firstPart = '';
    var date = '';

    if (difference.inDays <= 5) {
      firstPart = timeago.format(
        this,
        locale: Localizations.localeOf(context).languageCode,
      );
      if (difference.inDays > 3) {
        date += ' ';
        date += DateFormat(dateFormat).format(this);
      }
    } else {
      firstPart = DateFormat(dateFormat).format(this);
    }
    firstPart += ' ';

    final time = DateFormat.jm().format(this);
    return '$firstPart${S.of(context).screenFeedAtTime} $time$date';
  }
}
