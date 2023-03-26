import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:talker/talker.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

import 'services/api.dart';
import 'services/session.dart';

class Context extends ChangeNotifier {
  final Talker talker;

  late final SessionService _session;

  late final TalkerDioLogger _talkerLogger;

  String? _token;

  late ApiService _api;

  ApiService get apiService => _api;

  Context({
    required this.talker,
  }) {
    _session = SessionService();
    _talkerLogger = TalkerDioLogger(
        talker: talker,
        settings: const TalkerDioLoggerSettings(
          printResponseMessage: false,
          printResponseData: false,
          printRequestData: false,
        ));
    _api = ApiService(token: '', talkerLogger: _talkerLogger);
  }

  Future<bool> isLoggedIn() async {
    try {
      _token ??= await _session.getToken();
      _api = ApiService(token: _token ?? '', talkerLogger: _talkerLogger);
      return Future.value(_token != null && _token!.isNotEmpty);
    } catch (e, s) {
      talker.handle(e, s);
    }

    logOut();
    return Future.value(false);
  }

  Future<void> logOut() async {
    try {
      await _session.deleteToken();
      _api = ApiService(token: '', talkerLogger: _talkerLogger);
      _token = null;
      notifyListeners();
    } catch (e, s) {
      talker.handle(e, s);
    }
  }

  Future<bool> logIn(String token) async {
    try {
      // check token
      _api = ApiService(token: token, talkerLogger: _talkerLogger);
      await _api.getServerConfig();

      // add token to session
      await _session.addToken(token);

      _token = token;
      notifyListeners();
      return Future.value(_token?.isNotEmpty);
    } catch (e, s) {
      talker.handle(e, s);
    }

    logOut();
    return Future.value(false);
  }
}

class ContextScope extends InheritedNotifier<Context> {
  const ContextScope({
    required Context notifier,
    required Widget child,
    Key? key,
  }) : super(key: key, notifier: notifier, child: child);

  static Context of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ContextScope>()!.notifier!;
}
