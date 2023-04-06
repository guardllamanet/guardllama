import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:talker/talker.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

import 'services/api.dart';
import 'services/auth.dart';
import 'services/session.dart';

class Context extends ChangeNotifier {
  final Talker talker;

  late final SessionService _session;

  late final TalkerDioLogger _talkerLogger;

  String? _jwtToken;

  late ApiService _api;

  late AuthService _auth;

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
    _api = ApiService(jwtToken: '', talkerLogger: _talkerLogger);
    _auth = AuthService(talkerLogger: _talkerLogger);
  }

  Future<bool> isLoggedIn() async {
    try {
      _jwtToken = await _session.getJWTToken();
      _api = ApiService(jwtToken: _jwtToken, talkerLogger: _talkerLogger);
      return Future.value(_jwtToken == null ? false : _jwtToken!.isNotEmpty);
    } catch (e, s) {
      talker.handle(e, s);
    }

    logOut();
    return Future.value(false);
  }

  Future<void> logOut() async {
    try {
      _session.clearSession();
      _jwtToken = null;
      _api = ApiService(jwtToken: '', talkerLogger: _talkerLogger);
      notifyListeners();
    } catch (e, s) {
      talker.handle(e, s);
    }
  }

  Future<bool> logIn(String token) async {
    try {
      // check token
      final resp = await _auth.authenticate(token);

      // upsert session
      await _session.upsertSession(resp);

      _jwtToken = await _session.getJWTToken();
      _api = ApiService(jwtToken: _jwtToken, talkerLogger: _talkerLogger);
      notifyListeners();

      return Future.value(_jwtToken == null ? false : _jwtToken!.isNotEmpty);
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
