//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:guardllama_api/src/model/server_config_image.dart';
import 'package:guardllama_api/src/model/server_config_cluster.dart';
import 'package:guardllama_api/src/model/v1_server_config_credentials.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_server_config.g.dart';

/// V1ServerConfig
///
/// Properties:
/// * [cluster] 
/// * [manager] 
/// * [wg] 
/// * [credentials] 
/// * [debug] 
@BuiltValue()
abstract class V1ServerConfig implements Built<V1ServerConfig, V1ServerConfigBuilder> {
  @BuiltValueField(wireName: r'cluster')
  ServerConfigCluster? get cluster;

  @BuiltValueField(wireName: r'manager')
  ServerConfigImage? get manager;

  @BuiltValueField(wireName: r'wg')
  ServerConfigImage? get wg;

  @BuiltValueField(wireName: r'credentials')
  V1ServerConfigCredentials? get credentials;

  @BuiltValueField(wireName: r'debug')
  bool? get debug;

  V1ServerConfig._();

  factory V1ServerConfig([void updates(V1ServerConfigBuilder b)]) = _$V1ServerConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1ServerConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1ServerConfig> get serializer => _$V1ServerConfigSerializer();
}

class _$V1ServerConfigSerializer implements PrimitiveSerializer<V1ServerConfig> {
  @override
  final Iterable<Type> types = const [V1ServerConfig, _$V1ServerConfig];

  @override
  final String wireName = r'V1ServerConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1ServerConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.cluster != null) {
      yield r'cluster';
      yield serializers.serialize(
        object.cluster,
        specifiedType: const FullType(ServerConfigCluster),
      );
    }
    if (object.manager != null) {
      yield r'manager';
      yield serializers.serialize(
        object.manager,
        specifiedType: const FullType(ServerConfigImage),
      );
    }
    if (object.wg != null) {
      yield r'wg';
      yield serializers.serialize(
        object.wg,
        specifiedType: const FullType(ServerConfigImage),
      );
    }
    if (object.credentials != null) {
      yield r'credentials';
      yield serializers.serialize(
        object.credentials,
        specifiedType: const FullType(V1ServerConfigCredentials),
      );
    }
    if (object.debug != null) {
      yield r'debug';
      yield serializers.serialize(
        object.debug,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1ServerConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1ServerConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cluster':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ServerConfigCluster),
          ) as ServerConfigCluster;
          result.cluster.replace(valueDes);
          break;
        case r'manager':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ServerConfigImage),
          ) as ServerConfigImage;
          result.manager.replace(valueDes);
          break;
        case r'wg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ServerConfigImage),
          ) as ServerConfigImage;
          result.wg.replace(valueDes);
          break;
        case r'credentials':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(V1ServerConfigCredentials),
          ) as V1ServerConfigCredentials;
          result.credentials.replace(valueDes);
          break;
        case r'debug':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.debug = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1ServerConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1ServerConfigBuilder();
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

