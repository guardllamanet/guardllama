import 'package:flutter/material.dart';

class PageNotFoundScreen extends StatelessWidget {
  const PageNotFoundScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '404',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(
            height: 15,
          ),
          Text('Page Not Found :(',
              style: Theme.of(context).textTheme.displaySmall)
        ],
      ),
    );
  }
}
