//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:guardllama_api/src/model/v1_server_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_get_server_config_response.g.dart';

/// V1GetServerConfigResponse
///
/// Properties:
/// * [config] 
@BuiltValue()
abstract class V1GetServerConfigResponse implements Built<V1GetServerConfigResponse, V1GetServerConfigResponseBuilder> {
  @BuiltValueField(wireName: r'config')
  V1ServerConfig? get config;

  V1GetServerConfigResponse._();

  factory V1GetServerConfigResponse([void updates(V1GetServerConfigResponseBuilder b)]) = _$V1GetServerConfigResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1GetServerConfigResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1GetServerConfigResponse> get serializer => _$V1GetServerConfigResponseSerializer();
}

class _$V1GetServerConfigResponseSerializer implements PrimitiveSerializer<V1GetServerConfigResponse> {
  @override
  final Iterable<Type> types = const [V1GetServerConfigResponse, _$V1GetServerConfigResponse];

  @override
  final String wireName = r'V1GetServerConfigResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1GetServerConfigResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.config != null) {
      yield r'config';
      yield serializers.serialize(
        object.config,
        specifiedType: const FullType(V1ServerConfig),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1GetServerConfigResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1GetServerConfigResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'config':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(V1ServerConfig),
          ) as V1ServerConfig;
          result.config.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1GetServerConfigResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1GetServerConfigResponseBuilder();
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

