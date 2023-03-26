import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final IconData? iconData;
  final bool disabled;

  const RoundedButton({
    super.key,
    required this.text,
    this.onPressed,
    this.iconData,
    this.disabled = false,
  });

  @override
  Widget build(BuildContext context) {
    final onPressed = disabled ? null : this.onPressed;
    final label = Text(
      text,
      style: const TextStyle(
        color: Colors.white,
      ),
    );
    final style = ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
          disabled ? Colors.grey : Theme.of(context).iconTheme.color),
      padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
      ),
    );

    if (iconData == null) {
      return TextButton(
        onPressed: onPressed,
        style: style,
        child: label,
      );
    }

    return TextButton.icon(
      icon: Icon(
        iconData,
        color: Colors.white,
      ),
      onPressed: onPressed,
      style: style,
      label: label,
    );
  }
}
