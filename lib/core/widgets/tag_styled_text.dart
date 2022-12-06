import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

class TagStyledText extends StatelessWidget {
  const TagStyledText({
    super.key,
    required this.text,
    this.hyperlinkOnTap,
  });

  final String text;
  final VoidCallback? hyperlinkOnTap;

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;

    return StyledText(
      text: text,
      tags: {
        'strong': StyledTextTag(
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        'a': StyledTextActionTag(
          (_, __) {
            if (hyperlinkOnTap != null) {
              hyperlinkOnTap!();
            }
          },
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            decoration: TextDecoration.underline,
            decorationThickness: 1.2,
            decorationColor: primaryColor,
          ),
        )
      },
    );
  }
}
