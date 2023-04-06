//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:guardllama_api/src/date_serializer.dart';
import 'package:guardllama_api/src/model/date.dart';

import 'package:guardllama_api/src/model/ad_guard_config_block_list.dart';
import 'package:guardllama_api/src/model/ad_guard_status_query_log.dart';
import 'package:guardllama_api/src/model/ad_guard_status_query_log_response.dart';
import 'package:guardllama_api/src/model/apiv1_credentials.dart';
import 'package:guardllama_api/src/model/cluster_k3d.dart';
import 'package:guardllama_api/src/model/credentials_api.dart';
import 'package:guardllama_api/src/model/credentials_jwt.dart';
import 'package:guardllama_api/src/model/image_image_pull_policy.dart';
import 'package:guardllama_api/src/model/image_image_pull_secret.dart';
import 'package:guardllama_api/src/model/k3d_node_port_range.dart';
import 'package:guardllama_api/src/model/node_port_range_protocol.dart';
import 'package:guardllama_api/src/model/protobuf_any.dart';
import 'package:guardllama_api/src/model/query_log_client.dart';
import 'package:guardllama_api/src/model/query_log_reason.dart';
import 'package:guardllama_api/src/model/query_log_request.dart';
import 'package:guardllama_api/src/model/query_log_rule.dart';
import 'package:guardllama_api/src/model/response_answer.dart';
import 'package:guardllama_api/src/model/rpc_status.dart';
import 'package:guardllama_api/src/model/server_config_cluster.dart';
import 'package:guardllama_api/src/model/server_config_image.dart';
import 'package:guardllama_api/src/model/tunnel_service_update_dns_block_lists_request.dart';
import 'package:guardllama_api/src/model/tunnel_service_update_dns_filtering_enabled_request.dart';
import 'package:guardllama_api/src/model/tunnel_status_state.dart';
import 'package:guardllama_api/src/model/v1_ad_guard_config.dart';
import 'package:guardllama_api/src/model/v1_ad_guard_status.dart';
import 'package:guardllama_api/src/model/v1_authenticate_request.dart';
import 'package:guardllama_api/src/model/v1_authenticate_response.dart';
import 'package:guardllama_api/src/model/v1_create_tunnel_request.dart';
import 'package:guardllama_api/src/model/v1_create_tunnel_response.dart';
import 'package:guardllama_api/src/model/v1_get_server_config_response.dart';
import 'package:guardllama_api/src/model/v1_get_server_response.dart';
import 'package:guardllama_api/src/model/v1_get_tunnel_response.dart';
import 'package:guardllama_api/src/model/v1_get_wire_guard_device_response.dart';
import 'package:guardllama_api/src/model/v1_jwt_token.dart';
import 'package:guardllama_api/src/model/v1_list_tunnels_response.dart';
import 'package:guardllama_api/src/model/v1_server.dart';
import 'package:guardllama_api/src/model/v1_server_config.dart';
import 'package:guardllama_api/src/model/v1_server_config_credentials.dart';
import 'package:guardllama_api/src/model/v1_server_status.dart';
import 'package:guardllama_api/src/model/v1_tunnel.dart';
import 'package:guardllama_api/src/model/v1_tunnel_config.dart';
import 'package:guardllama_api/src/model/v1_tunnel_status.dart';
import 'package:guardllama_api/src/model/v1_wire_guard_config.dart';
import 'package:guardllama_api/src/model/v1_wire_guard_device.dart';
import 'package:guardllama_api/src/model/v1_wire_guard_device_peer.dart';
import 'package:guardllama_api/src/model/v1_wire_guard_interface.dart';
import 'package:guardllama_api/src/model/v1_wire_guard_peer.dart';
import 'package:guardllama_api/src/model/v1_wire_guard_status.dart';
import 'package:guardllama_api/src/model/wire_guard_device_device_type.dart';

part 'serializers.g.dart';

@SerializersFor([
  AdGuardConfigBlockList,
  AdGuardStatusQueryLog,
  AdGuardStatusQueryLogResponse,
  Apiv1Credentials,
  ClusterK3d,
  CredentialsApi,
  CredentialsJwt,
  ImageImagePullPolicy,
  ImageImagePullSecret,
  K3dNodePortRange,
  NodePortRangeProtocol,
  ProtobufAny,
  QueryLogClient,
  QueryLogReason,
  QueryLogRequest,
  QueryLogRule,
  ResponseAnswer,
  RpcStatus,
  ServerConfigCluster,
  ServerConfigImage,
  TunnelServiceUpdateDNSBlockListsRequest,
  TunnelServiceUpdateDNSFilteringEnabledRequest,
  TunnelStatusState,
  V1AdGuardConfig,
  V1AdGuardStatus,
  V1AuthenticateRequest,
  V1AuthenticateResponse,
  V1CreateTunnelRequest,
  V1CreateTunnelResponse,
  V1GetServerConfigResponse,
  V1GetServerResponse,
  V1GetTunnelResponse,
  V1GetWireGuardDeviceResponse,
  V1JwtToken,
  V1ListTunnelsResponse,
  V1Server,
  V1ServerConfig,
  V1ServerConfigCredentials,
  V1ServerStatus,
  V1Tunnel,
  V1TunnelConfig,
  V1TunnelStatus,
  V1WireGuardConfig,
  V1WireGuardDevice,
  V1WireGuardDevicePeer,
  V1WireGuardInterface,
  V1WireGuardPeer,
  V1WireGuardStatus,
  WireGuardDeviceDeviceType,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
