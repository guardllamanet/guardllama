import 'package:test/test.dart';
import 'package:guardllama_api/guardllama_api.dart';


/// tests for TunnelServiceApi
void main() {
  final instance = GuardllamaApi().getTunnelServiceApi();

  group(TunnelServiceApi, () {
    //Future<V1CreateTunnelResponse> tunnelServiceCreateTunnel(V1CreateTunnelRequest body) async
    test('test tunnelServiceCreateTunnel', () async {
      // TODO
    });

    //Future<V1GetTunnelResponse> tunnelServiceGetTunnel(String name) async
    test('test tunnelServiceGetTunnel', () async {
      // TODO
    });

    //Future<V1ListTunnelsResponse> tunnelServiceListTunnels() async
    test('test tunnelServiceListTunnels', () async {
      // TODO
    });

    //Future<JsonObject> tunnelServiceRemoveTunnel(String name) async
    test('test tunnelServiceRemoveTunnel', () async {
      // TODO
    });

    //Future<JsonObject> tunnelServiceUpdateDNSBlockLists(String name, TunnelServiceUpdateDNSBlockListsRequest body) async
    test('test tunnelServiceUpdateDNSBlockLists', () async {
      // TODO
    });

    //Future<JsonObject> tunnelServiceUpdateDNSFilteringEnabled(String name, TunnelServiceUpdateDNSFilteringEnabledRequest body) async
    test('test tunnelServiceUpdateDNSFilteringEnabled', () async {
      // TODO
    });

  });
}
