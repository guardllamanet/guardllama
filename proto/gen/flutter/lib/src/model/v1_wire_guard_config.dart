//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:guardllama_api/src/model/v1_wire_guard_interface.dart';
import 'package:guardllama_api/src/model/v1_wire_guard_peer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_wire_guard_config.g.dart';

/// V1WireGuardConfig
///
/// Properties:
/// * [interface_] 
/// * [peers] 
/// * [wgConfig] 
@BuiltValue()
abstract class V1WireGuardConfig implements Built<V1WireGuardConfig, V1WireGuardConfigBuilder> {
  @BuiltValueField(wireName: r'interface')
  V1WireGuardInterface? get interface_;

  @BuiltValueField(wireName: r'peers')
  BuiltList<V1WireGuardPeer>? get peers;

  @BuiltValueField(wireName: r'wg_config')
  String? get wgConfig;

  V1WireGuardConfig._();

  factory V1WireGuardConfig([void updates(V1WireGuardConfigBuilder b)]) = _$V1WireGuardConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1WireGuardConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1WireGuardConfig> get serializer => _$V1WireGuardConfigSerializer();
}

class _$V1WireGuardConfigSerializer implements PrimitiveSerializer<V1WireGuardConfig> {
  @override
  final Iterable<Type> types = const [V1WireGuardConfig, _$V1WireGuardConfig];

  @override
  final String wireName = r'V1WireGuardConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1WireGuardConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.interface_ != null) {
      yield r'interface';
      yield serializers.serialize(
        object.interface_,
        specifiedType: const FullType(V1WireGuardInterface),
      );
    }
    if (object.peers != null) {
      yield r'peers';
      yield serializers.serialize(
        object.peers,
        specifiedType: const FullType(BuiltList, [FullType(V1WireGuardPeer)]),
      );
    }
    if (object.wgConfig != null) {
      yield r'wg_config';
      yield serializers.serialize(
        object.wgConfig,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1WireGuardConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1WireGuardConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'interface':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(V1WireGuardInterface),
          ) as V1WireGuardInterface;
          result.interface_.replace(valueDes);
          break;
        case r'peers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(V1WireGuardPeer)]),
          ) as BuiltList<V1WireGuardPeer>;
          result.peers.replace(valueDes);
          break;
        case r'wg_config':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.wgConfig = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1WireGuardConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1WireGuardConfigBuilder();
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

