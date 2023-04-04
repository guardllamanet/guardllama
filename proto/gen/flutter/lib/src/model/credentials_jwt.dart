//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'credentials_jwt.g.dart';

/// CredentialsJwt
///
/// Properties:
/// * [signKey] 
/// * [verifyKey] 
@BuiltValue()
abstract class CredentialsJwt implements Built<CredentialsJwt, CredentialsJwtBuilder> {
  @BuiltValueField(wireName: r'sign_key')
  String? get signKey;

  @BuiltValueField(wireName: r'verify_key')
  String? get verifyKey;

  CredentialsJwt._();

  factory CredentialsJwt([void updates(CredentialsJwtBuilder b)]) = _$CredentialsJwt;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CredentialsJwtBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CredentialsJwt> get serializer => _$CredentialsJwtSerializer();
}

class _$CredentialsJwtSerializer implements PrimitiveSerializer<CredentialsJwt> {
  @override
  final Iterable<Type> types = const [CredentialsJwt, _$CredentialsJwt];

  @override
  final String wireName = r'CredentialsJwt';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CredentialsJwt object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.signKey != null) {
      yield r'sign_key';
      yield serializers.serialize(
        object.signKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.verifyKey != null) {
      yield r'verify_key';
      yield serializers.serialize(
        object.verifyKey,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CredentialsJwt object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CredentialsJwtBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sign_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.signKey = valueDes;
          break;
        case r'verify_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.verifyKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CredentialsJwt deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CredentialsJwtBuilder();
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

