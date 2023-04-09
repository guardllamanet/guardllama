//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_jwt_token.g.dart';

/// V1JwtToken
///
/// Properties:
/// * [token] 
/// * [expiresAt] 
@BuiltValue()
abstract class V1JwtToken implements Built<V1JwtToken, V1JwtTokenBuilder> {
  @BuiltValueField(wireName: r'token')
  String? get token;

  @BuiltValueField(wireName: r'expires_at')
  DateTime? get expiresAt;

  V1JwtToken._();

  factory V1JwtToken([void updates(V1JwtTokenBuilder b)]) = _$V1JwtToken;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1JwtTokenBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1JwtToken> get serializer => _$V1JwtTokenSerializer();
}

class _$V1JwtTokenSerializer implements PrimitiveSerializer<V1JwtToken> {
  @override
  final Iterable<Type> types = const [V1JwtToken, _$V1JwtToken];

  @override
  final String wireName = r'V1JwtToken';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1JwtToken object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.token != null) {
      yield r'token';
      yield serializers.serialize(
        object.token,
        specifiedType: const FullType(String),
      );
    }
    if (object.expiresAt != null) {
      yield r'expires_at';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1JwtToken object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1JwtTokenBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.token = valueDes;
          break;
        case r'expires_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expiresAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1JwtToken deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1JwtTokenBuilder();
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

