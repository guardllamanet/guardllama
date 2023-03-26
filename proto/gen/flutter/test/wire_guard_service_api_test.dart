import 'package:test/test.dart';
import 'package:guardllama_api/guardllama_api.dart';


/// tests for WireGuardServiceApi
void main() {
  final instance = GuardllamaApi().getWireGuardServiceApi();

  group(WireGuardServiceApi, () {
    //Future<V1GetWireGuardDeviceResponse> wireGuardServiceGetWireGuardDevice() async
    test('test wireGuardServiceGetWireGuardDevice', () async {
      // TODO
    });

  });
}
