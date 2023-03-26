import 'package:flutter/services.dart';
import 'dart:convert';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

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
}
