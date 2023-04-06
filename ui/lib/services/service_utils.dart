import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:universal_html/html.dart';

class ServiceUtils {
  static Future<void> copyClipboard(String text) {
    if (text.isNotEmpty) {
      return Clipboard.setData(ClipboardData(text: text));
    } else {
      throw ('Please enter a string');
    }
  }

  static void download(
    String content,
    String downloadName,
  ) {
    var data = base64Url.encode(utf8.encode(content));
    AnchorElement(
        href: "data:application/octet-stream;charset=utf-16le;base64,$data")
      ..setAttribute("download", downloadName)
      ..click();
  }

  static String serverOrigin() {
    return kDebugMode ? 'http://localhost:38080' : Uri.base.origin;
  }
}
