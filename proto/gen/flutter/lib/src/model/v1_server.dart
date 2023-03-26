//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:guardllama_api/src/model/v1_server_status.dart';
import 'package:guardllama_api/src/model/v1_server_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_server.g.dart';

/// V1Server
///
/// Properties:
/// * [config] 
/// * [status] 
@BuiltValue()
abstract class V1Server implements Built<V1Server, V1ServerBuilder> {
  @BuiltValueField(wireName: r'config')
  V1ServerConfig? get config;

  @BuiltValueField(wireName: r'status')
  V1ServerStatus? get status;

  V1Server._();

  factory V1Server([void updates(V1ServerBuilder b)]) = _$V1Server;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1ServerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1Server> get serializer => _$V1ServerSerializer();
}

class _$V1ServerSerializer implements PrimitiveSerializer<V1Server> {
  @override
  final Iterable<Type> types = const [V1Server, _$V1Server];

  @override
  final String wireName = r'V1Server';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1Server object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.config != null) {
      yield r'config';
      yield serializers.serialize(
        object.config,
        specifiedType: const FullType(V1ServerConfig),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(V1ServerStatus),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1Server object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1ServerBuilder result,
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
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(V1ServerStatus),
          ) as V1ServerStatus;
          result.status.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1Server deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1ServerBuilder();
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

