//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:guardllama_api/src/model/v1_jwt_token.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_authenticate_response.g.dart';

/// V1AuthenticateResponse
///
/// Properties:
/// * [jwtToken] 
/// * [cookie] 
@BuiltValue()
abstract class V1AuthenticateResponse implements Built<V1AuthenticateResponse, V1AuthenticateResponseBuilder> {
  @BuiltValueField(wireName: r'jwt_token')
  V1JwtToken? get jwtToken;

  @BuiltValueField(wireName: r'cookie')
  String? get cookie;

  V1AuthenticateResponse._();

  factory V1AuthenticateResponse([void updates(V1AuthenticateResponseBuilder b)]) = _$V1AuthenticateResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1AuthenticateResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1AuthenticateResponse> get serializer => _$V1AuthenticateResponseSerializer();
}

class _$V1AuthenticateResponseSerializer implements PrimitiveSerializer<V1AuthenticateResponse> {
  @override
  final Iterable<Type> types = const [V1AuthenticateResponse, _$V1AuthenticateResponse];

  @override
  final String wireName = r'V1AuthenticateResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1AuthenticateResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.jwtToken != null) {
      yield r'jwt_token';
      yield serializers.serialize(
        object.jwtToken,
        specifiedType: const FullType(V1JwtToken),
      );
    }
    if (object.cookie != null) {
      yield r'cookie';
      yield serializers.serialize(
        object.cookie,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1AuthenticateResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1AuthenticateResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'jwt_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(V1JwtToken),
          ) as V1JwtToken;
          result.jwtToken.replace(valueDes);
          break;
        case r'cookie':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cookie = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1AuthenticateResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1AuthenticateResponseBuilder();
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

