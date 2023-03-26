//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'image_image_pull_secret.g.dart';

/// ImageImagePullSecret
///
/// Properties:
/// * [server] 
/// * [username] 
/// * [password] 
@BuiltValue()
abstract class ImageImagePullSecret implements Built<ImageImagePullSecret, ImageImagePullSecretBuilder> {
  @BuiltValueField(wireName: r'server')
  String? get server;

  @BuiltValueField(wireName: r'username')
  String? get username;

  @BuiltValueField(wireName: r'password')
  String? get password;

  ImageImagePullSecret._();

  factory ImageImagePullSecret([void updates(ImageImagePullSecretBuilder b)]) = _$ImageImagePullSecret;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ImageImagePullSecretBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImageImagePullSecret> get serializer => _$ImageImagePullSecretSerializer();
}

class _$ImageImagePullSecretSerializer implements PrimitiveSerializer<ImageImagePullSecret> {
  @override
  final Iterable<Type> types = const [ImageImagePullSecret, _$ImageImagePullSecret];

  @override
  final String wireName = r'ImageImagePullSecret';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImageImagePullSecret object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.server != null) {
      yield r'server';
      yield serializers.serialize(
        object.server,
        specifiedType: const FullType(String),
      );
    }
    if (object.username != null) {
      yield r'username';
      yield serializers.serialize(
        object.username,
        specifiedType: const FullType(String),
      );
    }
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ImageImagePullSecret object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ImageImagePullSecretBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'server':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.server = valueDes;
          break;
        case r'username':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.username = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ImageImagePullSecret deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImageImagePullSecretBuilder();
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

