import 'package:flutter/foundation.dart';
import 'package:guardllama_api/guardllama_api.dart';
import 'package:universal_html/html.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SessionService {
  final _storage = const FlutterSecureStorage();

  Future<void> upsertSession(V1AuthenticateResponse resp) async {
    if (kIsWeb) {
      _addCookie(resp.cookie);
      //document.cookie = 'jwt=${resp.jwtToken!.token}';
    } else {
      _addToken(resp.jwtToken!.token!);
    }
  }

  Future<void> clearSession() async {
    if (kIsWeb) {
      _clearCookie();
    } else {
      _deleteToken();
    }
  }

  Future<String?> getJWTToken() async {
    if (kIsWeb) {
      return _getCookiesMap()['jwt'];
    } else {
      return await _storage.read(
        key: 'token',
        webOptions: _getWebOptions(),
      );
    }
  }

  Map<String, String> _getCookiesMap() {
    final cookie = document.cookie;
    if (cookie == null) {
      return {};
    }

    final cookiesMap = <String, String>{};
    for (final cookie in cookie.split('; ')) {
      final parts = cookie.split('=');
      if (parts.length != 2) {
        continue;
      }
      cookiesMap[parts[0].trim()] = parts[1].trim();
    }

    return cookiesMap;
  }

  void _addCookie(String? cookie) {
    document.cookie = cookie;
  }

  void _clearCookie() {
    document.cookie = 'jwt=';
  }

  Future<void> _addToken(String token) async {
    await _storage.write(
      key: 'token',
      value: token,
      webOptions: _getWebOptions(),
    );
  }

  Future<void> _deleteToken() async {
    return await _storage.delete(
      key: 'token',
      webOptions: _getWebOptions(),
    );
  }

  WebOptions _getWebOptions() => const WebOptions(
        dbName: 'GuardLlama',
        publicKey: 'GuardLlama',
      );
}
