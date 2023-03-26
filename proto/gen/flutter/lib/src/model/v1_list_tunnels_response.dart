//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:guardllama_api/src/model/v1_tunnel.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_list_tunnels_response.g.dart';

/// V1ListTunnelsResponse
///
/// Properties:
/// * [tunnels] 
@BuiltValue()
abstract class V1ListTunnelsResponse implements Built<V1ListTunnelsResponse, V1ListTunnelsResponseBuilder> {
  @BuiltValueField(wireName: r'tunnels')
  BuiltList<V1Tunnel>? get tunnels;

  V1ListTunnelsResponse._();

  factory V1ListTunnelsResponse([void updates(V1ListTunnelsResponseBuilder b)]) = _$V1ListTunnelsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1ListTunnelsResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1ListTunnelsResponse> get serializer => _$V1ListTunnelsResponseSerializer();
}

class _$V1ListTunnelsResponseSerializer implements PrimitiveSerializer<V1ListTunnelsResponse> {
  @override
  final Iterable<Type> types = const [V1ListTunnelsResponse, _$V1ListTunnelsResponse];

  @override
  final String wireName = r'V1ListTunnelsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1ListTunnelsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.tunnels != null) {
      yield r'tunnels';
      yield serializers.serialize(
        object.tunnels,
        specifiedType: const FullType(BuiltList, [FullType(V1Tunnel)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1ListTunnelsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1ListTunnelsResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tunnels':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(V1Tunnel)]),
          ) as BuiltList<V1Tunnel>;
          result.tunnels.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1ListTunnelsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1ListTunnelsResponseBuilder();
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

