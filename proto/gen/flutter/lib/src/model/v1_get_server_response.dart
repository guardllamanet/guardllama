//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:guardllama_api/src/model/v1_server.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_get_server_response.g.dart';

/// V1GetServerResponse
///
/// Properties:
/// * [server] 
@BuiltValue()
abstract class V1GetServerResponse implements Built<V1GetServerResponse, V1GetServerResponseBuilder> {
  @BuiltValueField(wireName: r'server')
  V1Server? get server;

  V1GetServerResponse._();

  factory V1GetServerResponse([void updates(V1GetServerResponseBuilder b)]) = _$V1GetServerResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1GetServerResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1GetServerResponse> get serializer => _$V1GetServerResponseSerializer();
}

class _$V1GetServerResponseSerializer implements PrimitiveSerializer<V1GetServerResponse> {
  @override
  final Iterable<Type> types = const [V1GetServerResponse, _$V1GetServerResponse];

  @override
  final String wireName = r'V1GetServerResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1GetServerResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.server != null) {
      yield r'server';
      yield serializers.serialize(
        object.server,
        specifiedType: const FullType(V1Server),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1GetServerResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1GetServerResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'server':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(V1Server),
          ) as V1Server;
          result.server.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1GetServerResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1GetServerResponseBuilder();
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

