//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:guardllama_api/src/model/vpn_port_range_protocol.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cluster_vpn_port_range.g.dart';

/// ClusterVpnPortRange
///
/// Properties:
/// * [fromPort] 
/// * [toPort] 
/// * [protocol] 
@BuiltValue()
abstract class ClusterVpnPortRange implements Built<ClusterVpnPortRange, ClusterVpnPortRangeBuilder> {
  @BuiltValueField(wireName: r'from_port')
  int? get fromPort;

  @BuiltValueField(wireName: r'to_port')
  int? get toPort;

  @BuiltValueField(wireName: r'protocol')
  VpnPortRangeProtocol? get protocol;
  // enum protocolEnum {  TCP,  UDP,  };

  ClusterVpnPortRange._();

  factory ClusterVpnPortRange([void updates(ClusterVpnPortRangeBuilder b)]) = _$ClusterVpnPortRange;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ClusterVpnPortRangeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ClusterVpnPortRange> get serializer => _$ClusterVpnPortRangeSerializer();
}

class _$ClusterVpnPortRangeSerializer implements PrimitiveSerializer<ClusterVpnPortRange> {
  @override
  final Iterable<Type> types = const [ClusterVpnPortRange, _$ClusterVpnPortRange];

  @override
  final String wireName = r'ClusterVpnPortRange';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ClusterVpnPortRange object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.fromPort != null) {
      yield r'from_port';
      yield serializers.serialize(
        object.fromPort,
        specifiedType: const FullType(int),
      );
    }
    if (object.toPort != null) {
      yield r'to_port';
      yield serializers.serialize(
        object.toPort,
        specifiedType: const FullType(int),
      );
    }
    if (object.protocol != null) {
      yield r'protocol';
      yield serializers.serialize(
        object.protocol,
        specifiedType: const FullType(VpnPortRangeProtocol),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ClusterVpnPortRange object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ClusterVpnPortRangeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'from_port':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.fromPort = valueDes;
          break;
        case r'to_port':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.toPort = valueDes;
          break;
        case r'protocol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(VpnPortRangeProtocol),
          ) as VpnPortRangeProtocol;
          result.protocol = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ClusterVpnPortRange deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClusterVpnPortRangeBuilder();
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

