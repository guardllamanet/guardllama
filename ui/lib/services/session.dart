import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SessionService {
  final _storage = const FlutterSecureStorage();

  Future<void> addToken(String token) async {
    await _storage.write(
      key: 'token',
      value: token,
      webOptions: _getWebOptions(),
    );
  }

  Future<String?> getToken() async {
    return await _storage.read(
      key: 'token',
      webOptions: _getWebOptions(),
    );
  }

  Future<void> deleteToken() async {
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
