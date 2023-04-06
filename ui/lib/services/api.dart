import 'package:guardllama_api/guardllama_api.dart';
import 'package:dio/dio.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
import 'package:built_collection/built_collection.dart';

import 'service_utils.dart';

class AdBlockList {
  final String name;
  final String url;

  const AdBlockList({required this.name, required this.url});

  @override
  bool operator ==(covariant AdBlockList other) {
    return name == other.name && url == other.url;
  }

  @override
  int get hashCode => Object.hash(name, url);
}

enum AdBlockMode {
  defaultMode(
    name: 'Default',
    blocklists: [
      AdBlockList(
          name: "AdGuard DNS filter",
          url:
              "https://adguardteam.github.io/AdGuardSDNSFilter/Filters/filter.txt"),
      AdBlockList(
          name: "AdAway Default Blocklist",
          url: "https://adaway.org/hosts.txt"),
    ],
  ),
  strictMode(
    name: 'Strict',
    blocklists: [
      AdBlockList(
          name: "AdGuard DNS filter",
          url:
              "https://adguardteam.github.io/AdGuardSDNSFilter/Filters/filter.txt"),
      AdBlockList(
          name: "AdAway Default Blocklist",
          url: "https://adaway.org/hosts.txt"),
      AdBlockList(
          name: "Peter Lowe's List",
          url:
              "https://pgl.yoyo.org/adservers/serverlist.php?hostformat=adblockplus&showintro=1&mimetype=plaintext"),
      AdBlockList(
          name: "Dan Pollock's List",
          url: "https://someonewhocares.org/hosts/zero/hosts"),
      AdBlockList(
          name: "OISD Blocklist Basic", url: "https://abp.oisd.nl/basic/"),
      AdBlockList(
          name: "Game Console Adblock List",
          url:
              "https://raw.githubusercontent.com/DandelionSprout/adfilt/master/GameConsoleAdblockList.txt"),
      AdBlockList(
          name: "Perflyst and Dandelion Sprout's Smart-TV Blocklist",
          url:
              "https://raw.githubusercontent.com/Perflyst/PiHoleBlocklist/master/SmartTV-AGH.txt"),
      AdBlockList(
          name: "1Hosts (Lite)",
          url:
              "https://raw.githubusercontent.com/Perflyst/PiHoleBlocklist/master/SmartTV-AGH.txt"),
    ],
  );

  const AdBlockMode({required this.name, required this.blocklists});

  final String name;
  final List<AdBlockList> blocklists;
}

class ApiService {
  final String? jwtToken;

  late final GuardllamaApi client;

  ApiService({required this.jwtToken, TalkerDioLogger? talkerLogger}) {
    final List<Interceptor> interceptors = [];
    if (talkerLogger != null) {
      interceptors.add(talkerLogger);
    }
    if (jwtToken != null && jwtToken!.isNotEmpty) {
      interceptors.add(_JWTAuthInterceptor(jwtToken!));
    }

    client = GuardllamaApi(
      dio: Dio(
        BaseOptions(
          baseUrl: '${ServiceUtils.serverOrigin()}/api',
        ),
      ),
      interceptors: interceptors,
    );
  }

  Future<V1Tunnel> createTunnel() async {
    final api = client.getTunnelServiceApi();
    final bodyBuilder = V1CreateTunnelRequestBuilder()
      ..ag = (V1AdGuardConfigBuilder()
        ..filteringEnabled = true
        ..rules = ListBuilder([])
        ..blockLists =
            ListBuilder(_asBlockLists(AdBlockMode.defaultMode.blocklists)));
    final resp = await api.tunnelServiceCreateTunnel(body: bodyBuilder.build());
    if (resp.statusCode! >= 200 && resp.statusCode! < 300) {
      return resp.data!.tunnel!;
    } else {
      throw Exception('Failed to create tunnel');
    }
  }

  Future<List<V1Tunnel>> listTunnels() async {
    final api = client.getTunnelServiceApi();
    final resp = await api.tunnelServiceListTunnels();
    if (resp.statusCode == 200) {
      return resp.data!.tunnels!.map((tunnel) => tunnel).toList();
    } else {
      throw Exception('Failed to list tunnels');
    }
  }

  Future<V1Tunnel> getTunnel(String name) async {
    final api = client.getTunnelServiceApi();
    final resp = await api.tunnelServiceGetTunnel(name: name);
    if (resp.statusCode! >= 200 && resp.statusCode! < 300) {
      return resp.data!.tunnel!;
    } else {
      throw Exception('Failed to get tunnel');
    }
  }

  Future<void> removeTunnel(String name) async {
    final api = client.getTunnelServiceApi();
    final resp = await api.tunnelServiceRemoveTunnel(name: name);
    if (resp.statusCode! >= 200 && resp.statusCode! < 300) {
      return;
    } else {
      throw Exception('Failed to remove tunnel');
    }
  }

  Future<V1Server> getServer() async {
    final api = client.getServerServiceApi();
    final resp = await api.serverServiceGetServer();
    if (resp.statusCode! >= 200 && resp.statusCode! < 300) {
      return resp.data!.server!;
    } else {
      throw Exception('Failed to get server');
    }
  }

  Future<V1ServerConfig> getServerConfig() async {
    final api = client.getServerServiceApi();
    final resp = await api.serverServiceGetServerConfig();
    if (resp.statusCode! >= 200 && resp.statusCode! < 300) {
      return resp.data!.config!;
    } else {
      throw Exception('Failed to get server config');
    }
  }

  Future<void> updateDNSFiltering(String name, bool enable) async {
    final api = client.getTunnelServiceApi();
    final bodyBuilder = TunnelServiceUpdateDNSFilteringEnabledRequestBuilder()
      ..filteringEnabled = enable;
    final resp = await api.tunnelServiceUpdateDNSFilteringEnabled(
        name: name, body: bodyBuilder.build());
    if (resp.statusCode! >= 200 && resp.statusCode! < 300) {
      return;
    } else {
      throw Exception('Failed to update dns filtering');
    }
  }

  Future<void> updateDNSFilteringRules(String name, List<String> rules) async {
    final api = client.getTunnelServiceApi();
    final bodyBuilder = TunnelServiceUpdateDNSFilteringRulesRequestBuilder()
      ..rules = ListBuilder(rules.map((r) {
        final builder = V1AdGuardConfigRuleBuilder()..rule = r;
        return builder.build();
      }));
    final resp = await api.tunnelServiceUpdateDNSFilteringRules(
        name: name, body: bodyBuilder.build());
    if (resp.statusCode! >= 200 && resp.statusCode! < 300) {
      return;
    } else {
      throw Exception('Failed to update dns filtering rules');
    }
  }

  Future<void> updateDNSBlockMode(String name, AdBlockMode mode) async {
    final api = client.getTunnelServiceApi();
    final bodyBuilder = TunnelServiceUpdateDNSBlockListsRequestBuilder()
      ..blockLists = ListBuilder(_asBlockLists(mode.blocklists));
    final resp = await api.tunnelServiceUpdateDNSBlockLists(
        name: name, body: bodyBuilder.build());
    if (resp.statusCode! >= 200 && resp.statusCode! < 300) {
      return;
    } else {
      throw Exception('Failed to update dns block lists');
    }
  }

  List<AdGuardConfigBlockList> _asBlockLists(List<AdBlockList> blocklists) {
    return blocklists.asMap().entries.map((e) {
      final builder = AdGuardConfigBlockListBuilder()
        ..id = e.key
        ..name = e.value.name
        ..url = e.value.url
        ..enabled = true;
      return builder.build();
    }).toList();
  }
}

class _JWTAuthInterceptor extends Interceptor {
  final String token;

  _JWTAuthInterceptor(this.token);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    options.headers['Authorization'] = 'Bearer $token';
    super.onRequest(options, handler);
  }
}
