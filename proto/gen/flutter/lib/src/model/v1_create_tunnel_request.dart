//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:guardllama_api/src/model/v1_ad_guard_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_create_tunnel_request.g.dart';

/// V1CreateTunnelRequest
///
/// Properties:
/// * [name] 
/// * [ag] 
@BuiltValue()
abstract class V1CreateTunnelRequest implements Built<V1CreateTunnelRequest, V1CreateTunnelRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'ag')
  V1AdGuardConfig? get ag;

  V1CreateTunnelRequest._();

  factory V1CreateTunnelRequest([void updates(V1CreateTunnelRequestBuilder b)]) = _$V1CreateTunnelRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1CreateTunnelRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1CreateTunnelRequest> get serializer => _$V1CreateTunnelRequestSerializer();
}

class _$V1CreateTunnelRequestSerializer implements PrimitiveSerializer<V1CreateTunnelRequest> {
  @override
  final Iterable<Type> types = const [V1CreateTunnelRequest, _$V1CreateTunnelRequest];

  @override
  final String wireName = r'V1CreateTunnelRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1CreateTunnelRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.ag != null) {
      yield r'ag';
      yield serializers.serialize(
        object.ag,
        specifiedType: const FullType(V1AdGuardConfig),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1CreateTunnelRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1CreateTunnelRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'ag':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(V1AdGuardConfig),
          ) as V1AdGuardConfig;
          result.ag.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1CreateTunnelRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1CreateTunnelRequestBuilder();
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

