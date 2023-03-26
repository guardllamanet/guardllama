//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'credentials_api.g.dart';

/// CredentialsApi
///
/// Properties:
/// * [token] 
@BuiltValue()
abstract class CredentialsApi implements Built<CredentialsApi, CredentialsApiBuilder> {
  @BuiltValueField(wireName: r'token')
  String? get token;

  CredentialsApi._();

  factory CredentialsApi([void updates(CredentialsApiBuilder b)]) = _$CredentialsApi;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CredentialsApiBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CredentialsApi> get serializer => _$CredentialsApiSerializer();
}

class _$CredentialsApiSerializer implements PrimitiveSerializer<CredentialsApi> {
  @override
  final Iterable<Type> types = const [CredentialsApi, _$CredentialsApi];

  @override
  final String wireName = r'CredentialsApi';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CredentialsApi object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.token != null) {
      yield r'token';
      yield serializers.serialize(
        object.token,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CredentialsApi object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CredentialsApiBuilder result,
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
  CredentialsApi deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CredentialsApiBuilder();
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

