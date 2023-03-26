//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:guardllama_api/src/model/credentials_api.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'server_config_credentials.g.dart';

/// ServerConfigCredentials
///
/// Properties:
/// * [api] 
@BuiltValue()
abstract class ServerConfigCredentials implements Built<ServerConfigCredentials, ServerConfigCredentialsBuilder> {
  @BuiltValueField(wireName: r'api')
  CredentialsApi? get api;

  ServerConfigCredentials._();

  factory ServerConfigCredentials([void updates(ServerConfigCredentialsBuilder b)]) = _$ServerConfigCredentials;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServerConfigCredentialsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServerConfigCredentials> get serializer => _$ServerConfigCredentialsSerializer();
}

class _$ServerConfigCredentialsSerializer implements PrimitiveSerializer<ServerConfigCredentials> {
  @override
  final Iterable<Type> types = const [ServerConfigCredentials, _$ServerConfigCredentials];

  @override
  final String wireName = r'ServerConfigCredentials';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServerConfigCredentials object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.api != null) {
      yield r'api';
      yield serializers.serialize(
        object.api,
        specifiedType: const FullType(CredentialsApi),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ServerConfigCredentials object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ServerConfigCredentialsBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ServerConfigCredentials deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServerConfigCredentialsBuilder();
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

