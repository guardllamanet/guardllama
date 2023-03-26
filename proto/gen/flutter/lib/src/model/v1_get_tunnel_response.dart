//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:guardllama_api/src/model/v1_tunnel.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_get_tunnel_response.g.dart';

/// V1GetTunnelResponse
///
/// Properties:
/// * [tunnel] 
@BuiltValue()
abstract class V1GetTunnelResponse implements Built<V1GetTunnelResponse, V1GetTunnelResponseBuilder> {
  @BuiltValueField(wireName: r'tunnel')
  V1Tunnel? get tunnel;

  V1GetTunnelResponse._();

  factory V1GetTunnelResponse([void updates(V1GetTunnelResponseBuilder b)]) = _$V1GetTunnelResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1GetTunnelResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1GetTunnelResponse> get serializer => _$V1GetTunnelResponseSerializer();
}

class _$V1GetTunnelResponseSerializer implements PrimitiveSerializer<V1GetTunnelResponse> {
  @override
  final Iterable<Type> types = const [V1GetTunnelResponse, _$V1GetTunnelResponse];

  @override
  final String wireName = r'V1GetTunnelResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1GetTunnelResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.tunnel != null) {
      yield r'tunnel';
      yield serializers.serialize(
        object.tunnel,
        specifiedType: const FullType(V1Tunnel),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1GetTunnelResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1GetTunnelResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tunnel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(V1Tunnel),
          ) as V1Tunnel;
          result.tunnel.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1GetTunnelResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1GetTunnelResponseBuilder();
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

