import 'package:test/test.dart';
import 'package:guardllama_api/guardllama_api.dart';


/// tests for ServerServiceApi
void main() {
  final instance = GuardllamaApi().getServerServiceApi();

  group(ServerServiceApi, () {
    //Future<V1GetServerResponse> serverServiceGetServer() async
    test('test serverServiceGetServer', () async {
      // TODO
    });

    //Future<V1GetServerConfigResponse> serverServiceGetServerConfig() async
    test('test serverServiceGetServerConfig', () async {
      // TODO
    });

  });
}
