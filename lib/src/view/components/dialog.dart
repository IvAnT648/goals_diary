import 'package:flutter/material.dart';

import '../../common/resources.dart';
import '../navigation.dart';

class YesNoAlertDialog extends StatelessWidget {
  final String title;
  final Widget? content;
  final VoidCallback onYesTap;
  final VoidCallback? onNoTap;
  final String? yesButtonText;
  final String? noButtonText;

  const YesNoAlertDialog({
    Key? key,
    required this.title,
    this.content,
    required this.onYesTap,
    this.onNoTap,
    this.yesButtonText,
    this.noButtonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    return AlertDialog(
      title: Text(title),
      content: content,
      actions: [
        TextButton(
          child: Text(yesButtonText ?? l10n.commonAlertDialogNoButton),
          onPressed: onNoTap ?? () => Navigation.pop(),
        ),
        TextButton(
          child: Text(noButtonText ?? l10n.commonAlertDialogYesButton),
          onPressed: onYesTap,
        ),
      ],
    );
  }
}

class InfoDialog extends StatelessWidget {
  final Text title;
  final Widget content;

  const InfoDialog({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: title,
      content: content,
    );
  }
}

