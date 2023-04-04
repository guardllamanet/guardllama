import 'package:test/test.dart';
import 'package:guardllama_api/guardllama_api.dart';


/// tests for AuthServiceApi
void main() {
  final instance = GuardllamaApi().getAuthServiceApi();

  group(AuthServiceApi, () {
    //Future<V1AuthenticateResponse> authServiceAuthenticate(V1AuthenticateRequest body) async
    test('test authServiceAuthenticate', () async {
      // TODO
    });

  });
}
