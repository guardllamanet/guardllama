import 'package:flutter/material.dart';

class CapitalizedTextButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const CapitalizedTextButton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text.toUpperCase(),
        style: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
