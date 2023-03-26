//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:guardllama_api/src/model/v1_tunnel.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_create_tunnel_response.g.dart';

/// V1CreateTunnelResponse
///
/// Properties:
/// * [tunnel] 
@BuiltValue()
abstract class V1CreateTunnelResponse implements Built<V1CreateTunnelResponse, V1CreateTunnelResponseBuilder> {
  @BuiltValueField(wireName: r'tunnel')
  V1Tunnel? get tunnel;

  V1CreateTunnelResponse._();

  factory V1CreateTunnelResponse([void updates(V1CreateTunnelResponseBuilder b)]) = _$V1CreateTunnelResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1CreateTunnelResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1CreateTunnelResponse> get serializer => _$V1CreateTunnelResponseSerializer();
}

class _$V1CreateTunnelResponseSerializer implements PrimitiveSerializer<V1CreateTunnelResponse> {
  @override
  final Iterable<Type> types = const [V1CreateTunnelResponse, _$V1CreateTunnelResponse];

  @override
  final String wireName = r'V1CreateTunnelResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1CreateTunnelResponse object, {
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
    V1CreateTunnelResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1CreateTunnelResponseBuilder result,
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
  V1CreateTunnelResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1CreateTunnelResponseBuilder();
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

