//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:guardllama_api/src/model/node_port_range_protocol.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'k3d_node_port_range.g.dart';

/// K3dNodePortRange
///
/// Properties:
/// * [fromPort] 
/// * [toPort] 
/// * [host] 
/// * [protocol] 
@BuiltValue()
abstract class K3dNodePortRange implements Built<K3dNodePortRange, K3dNodePortRangeBuilder> {
  @BuiltValueField(wireName: r'from_port')
  int? get fromPort;

  @BuiltValueField(wireName: r'to_port')
  int? get toPort;

  @BuiltValueField(wireName: r'host')
  String? get host;

  @BuiltValueField(wireName: r'protocol')
  NodePortRangeProtocol? get protocol;
  // enum protocolEnum {  TCP,  UDP,  };

  K3dNodePortRange._();

  factory K3dNodePortRange([void updates(K3dNodePortRangeBuilder b)]) = _$K3dNodePortRange;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(K3dNodePortRangeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<K3dNodePortRange> get serializer => _$K3dNodePortRangeSerializer();
}

class _$K3dNodePortRangeSerializer implements PrimitiveSerializer<K3dNodePortRange> {
  @override
  final Iterable<Type> types = const [K3dNodePortRange, _$K3dNodePortRange];

  @override
  final String wireName = r'K3dNodePortRange';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    K3dNodePortRange object, {
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
    if (object.host != null) {
      yield r'host';
      yield serializers.serialize(
        object.host,
        specifiedType: const FullType(String),
      );
    }
    if (object.protocol != null) {
      yield r'protocol';
      yield serializers.serialize(
        object.protocol,
        specifiedType: const FullType(NodePortRangeProtocol),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    K3dNodePortRange object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required K3dNodePortRangeBuilder result,
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
        case r'host':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.host = valueDes;
          break;
        case r'protocol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NodePortRangeProtocol),
          ) as NodePortRangeProtocol;
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
  K3dNodePortRange deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = K3dNodePortRangeBuilder();
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

