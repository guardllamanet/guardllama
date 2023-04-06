//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:guardllama_api/src/model/v1_ad_guard_home_config.dart';
import 'package:guardllama_api/src/model/v1_wire_guard_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_tunnel_config.g.dart';

/// V1TunnelConfig
///
/// Properties:
/// * [wg] 
/// * [agh] 
@BuiltValue()
abstract class V1TunnelConfig implements Built<V1TunnelConfig, V1TunnelConfigBuilder> {
  @BuiltValueField(wireName: r'wg')
  V1WireGuardConfig? get wg;

  @BuiltValueField(wireName: r'agh')
  V1AdGuardHomeConfig? get agh;

  V1TunnelConfig._();

  factory V1TunnelConfig([void updates(V1TunnelConfigBuilder b)]) = _$V1TunnelConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1TunnelConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1TunnelConfig> get serializer => _$V1TunnelConfigSerializer();
}

class _$V1TunnelConfigSerializer implements PrimitiveSerializer<V1TunnelConfig> {
  @override
  final Iterable<Type> types = const [V1TunnelConfig, _$V1TunnelConfig];

  @override
  final String wireName = r'V1TunnelConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1TunnelConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.wg != null) {
      yield r'wg';
      yield serializers.serialize(
        object.wg,
        specifiedType: const FullType(V1WireGuardConfig),
      );
    }
    if (object.agh != null) {
      yield r'agh';
      yield serializers.serialize(
        object.agh,
        specifiedType: const FullType(V1AdGuardHomeConfig),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1TunnelConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1TunnelConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'wg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(V1WireGuardConfig),
          ) as V1WireGuardConfig;
          result.wg.replace(valueDes);
          break;
        case r'agh':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(V1AdGuardHomeConfig),
          ) as V1AdGuardHomeConfig;
          result.agh.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1TunnelConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1TunnelConfigBuilder();
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

