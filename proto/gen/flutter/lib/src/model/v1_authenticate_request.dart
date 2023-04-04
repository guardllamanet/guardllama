//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:guardllama_api/src/model/apiv1_credentials.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_authenticate_request.g.dart';

/// V1AuthenticateRequest
///
/// Properties:
/// * [creds] 
@BuiltValue()
abstract class V1AuthenticateRequest implements Built<V1AuthenticateRequest, V1AuthenticateRequestBuilder> {
  @BuiltValueField(wireName: r'creds')
  Apiv1Credentials? get creds;

  V1AuthenticateRequest._();

  factory V1AuthenticateRequest([void updates(V1AuthenticateRequestBuilder b)]) = _$V1AuthenticateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1AuthenticateRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1AuthenticateRequest> get serializer => _$V1AuthenticateRequestSerializer();
}

class _$V1AuthenticateRequestSerializer implements PrimitiveSerializer<V1AuthenticateRequest> {
  @override
  final Iterable<Type> types = const [V1AuthenticateRequest, _$V1AuthenticateRequest];

  @override
  final String wireName = r'V1AuthenticateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1AuthenticateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.creds != null) {
      yield r'creds';
      yield serializers.serialize(
        object.creds,
        specifiedType: const FullType(Apiv1Credentials),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1AuthenticateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1AuthenticateRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'creds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Apiv1Credentials),
          ) as Apiv1Credentials;
          result.creds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1AuthenticateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1AuthenticateRequestBuilder();
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

