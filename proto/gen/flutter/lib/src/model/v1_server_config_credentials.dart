//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:guardllama_api/src/model/credentials_api.dart';
import 'package:guardllama_api/src/model/credentials_jwt.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_server_config_credentials.g.dart';

/// V1ServerConfigCredentials
///
/// Properties:
/// * [api] 
/// * [jwt] 
@BuiltValue()
abstract class V1ServerConfigCredentials implements Built<V1ServerConfigCredentials, V1ServerConfigCredentialsBuilder> {
  @BuiltValueField(wireName: r'api')
  CredentialsApi? get api;

  @BuiltValueField(wireName: r'jwt')
  CredentialsJwt? get jwt;

  V1ServerConfigCredentials._();

  factory V1ServerConfigCredentials([void updates(V1ServerConfigCredentialsBuilder b)]) = _$V1ServerConfigCredentials;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1ServerConfigCredentialsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1ServerConfigCredentials> get serializer => _$V1ServerConfigCredentialsSerializer();
}

class _$V1ServerConfigCredentialsSerializer implements PrimitiveSerializer<V1ServerConfigCredentials> {
  @override
  final Iterable<Type> types = const [V1ServerConfigCredentials, _$V1ServerConfigCredentials];

  @override
  final String wireName = r'V1ServerConfigCredentials';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1ServerConfigCredentials object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.api != null) {
      yield r'api';
      yield serializers.serialize(
        object.api,
        specifiedType: const FullType(CredentialsApi),
      );
    }
    if (object.jwt != null) {
      yield r'jwt';
      yield serializers.serialize(
        object.jwt,
        specifiedType: const FullType(CredentialsJwt),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1ServerConfigCredentials object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1ServerConfigCredentialsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'api':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CredentialsApi),
          ) as CredentialsApi;
          result.api.replace(valueDes);
          break;
        case r'jwt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CredentialsJwt),
          ) as CredentialsJwt;
          result.jwt.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1ServerConfigCredentials deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1ServerConfigCredentialsBuilder();
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

