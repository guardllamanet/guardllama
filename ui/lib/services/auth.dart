import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:guardllama_api/guardllama_api.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

class AuthService {
  late final GuardllamaApi client;

  AuthService({TalkerDioLogger? talkerLogger}) {
    final List<Interceptor> interceptors = [];
    if (talkerLogger != null) {
      interceptors.add(talkerLogger);
    }

    client = GuardllamaApi(
      dio: Dio(
        BaseOptions(
          baseUrl: kDebugMode ? 'http://localhost:38080' : Uri.base.origin,
        ),
      ),
      interceptors: interceptors,
    );
  }

  Future<V1AuthenticateResponse> authenticate(String token) async {
    final api = client.getAuthServiceApi();
    final bodyBuilder = V1AuthenticateRequestBuilder()
      ..creds = (Apiv1CredentialsBuilder()..token = token);
    final resp = await api.authServiceAuthenticate(body: bodyBuilder.build());
    if (resp.statusCode! >= 200 && resp.statusCode! < 300) {
      return resp.data!;
    } else {
      throw Exception('Failed to log in');
    }
  }
}
