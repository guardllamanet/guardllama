//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'apiv1_credentials.g.dart';

/// Apiv1Credentials
///
/// Properties:
/// * [token] 
@BuiltValue()
abstract class Apiv1Credentials implements Built<Apiv1Credentials, Apiv1CredentialsBuilder> {
  @BuiltValueField(wireName: r'token')
  String get token;

  Apiv1Credentials._();

  factory Apiv1Credentials([void updates(Apiv1CredentialsBuilder b)]) = _$Apiv1Credentials;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Apiv1CredentialsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Apiv1Credentials> get serializer => _$Apiv1CredentialsSerializer();
}

class _$Apiv1CredentialsSerializer implements PrimitiveSerializer<Apiv1Credentials> {
  @override
  final Iterable<Type> types = const [Apiv1Credentials, _$Apiv1Credentials];

  @override
  final String wireName = r'Apiv1Credentials';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Apiv1Credentials object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'token';
    yield serializers.serialize(
      object.token,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Apiv1Credentials object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required Apiv1CredentialsBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Apiv1Credentials deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Apiv1CredentialsBuilder();
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

