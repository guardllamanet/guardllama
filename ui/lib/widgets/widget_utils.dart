import 'package:flutter/material.dart';
import 'package:guardllama/services/service_utils.dart';

import 'snackbar_content.dart';

class WidgetUtils {
  static void showInfo(BuildContext context, String msg) {
    final messager = ScaffoldMessenger.of(context);
    messager.clearSnackBars();
    messager.showSnackBar(SnackBar(
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

  static Uri aghFiltersPage(String tunnelName) {
    return Uri.parse(
        '${ServiceUtils.serverOrigin()}/tunnels/$tunnelName/agh/#filters');
  }
}
