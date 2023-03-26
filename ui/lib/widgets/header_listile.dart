import 'package:flutter/material.dart';

class HeaderListile extends StatelessWidget {
  final String title;

  final Widget? trailing;

  const HeaderListile({super.key, required this.title, this.trailing});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: ListTile(
        title: Transform.translate(
          offset: const Offset(-12, 0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.headlineLarge!.fontSize,
              fontWeight: FontWeight.bold,
              fontFamily: Theme.of(context).textTheme.headlineLarge!.fontFamily,
            ),
          ),
        ),
        trailing: trailing,
      ),
    );
  }
}
