import 'package:flutter/material.dart';

import 'snackbar_content.dart';

class WidgetUtils {
  static void showInfo(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      margin: EdgeInsets.zero,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      elevation: 0,
      content: SnackbarContent(
        message: msg,
        backgroundColor: Colors.green,
        iconData: Icons.info_rounded,
      ),
    ));
  }
}
