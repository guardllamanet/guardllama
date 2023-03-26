//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:guardllama_api/src/model/cluster_k3d.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'server_config_cluster.g.dart';

/// ServerConfigCluster
///
/// Properties:
/// * [kubeConfig] 
/// * [k3s] 
/// * [k3d] 
/// * [host] 
@BuiltValue()
abstract class ServerConfigCluster implements Built<ServerConfigCluster, ServerConfigClusterBuilder> {
  @BuiltValueField(wireName: r'kube_config')
  String? get kubeConfig;

  @BuiltValueField(wireName: r'k3s')
  JsonObject? get k3s;

  @BuiltValueField(wireName: r'k3d')
  ClusterK3d? get k3d;

  @BuiltValueField(wireName: r'host')
  String? get host;

  ServerConfigCluster._();

  factory ServerConfigCluster([void updates(ServerConfigClusterBuilder b)]) = _$ServerConfigCluster;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServerConfigClusterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServerConfigCluster> get serializer => _$ServerConfigClusterSerializer();
}

class _$ServerConfigClusterSerializer implements PrimitiveSerializer<ServerConfigCluster> {
  @override
  final Iterable<Type> types = const [ServerConfigCluster, _$ServerConfigCluster];

  @override
  final String wireName = r'ServerConfigCluster';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServerConfigCluster object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.kubeConfig != null) {
      yield r'kube_config';
      yield serializers.serialize(
        object.kubeConfig,
        specifiedType: const FullType(String),
      );
    }
    if (object.k3s != null) {
      yield r'k3s';
      yield serializers.serialize(
        object.k3s,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.k3d != null) {
      yield r'k3d';
      yield serializers.serialize(
        object.k3d,
        specifiedType: const FullType(ClusterK3d),
      );
    }
    if (object.host != null) {
      yield r'host';
      yield serializers.serialize(
        object.host,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ServerConfigCluster object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ServerConfigClusterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kube_config':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kubeConfig = valueDes;
          break;
        case r'k3s':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.k3s = valueDes;
          break;
        case r'k3d':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ClusterK3d),
          ) as ClusterK3d;
          result.k3d.replace(valueDes);
          break;
        case r'host':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.host = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ServerConfigCluster deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServerConfigClusterBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

