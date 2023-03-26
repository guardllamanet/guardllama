//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:guardllama_api/src/model/image_image_pull_policy.dart';
import 'package:guardllama_api/src/model/image_image_pull_secret.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'server_config_image.g.dart';

/// ServerConfigImage
///
/// Properties:
/// * [image] 
/// * [imagePullPolicy] 
/// * [imagePullSecret] 
@BuiltValue()
abstract class ServerConfigImage implements Built<ServerConfigImage, ServerConfigImageBuilder> {
  @BuiltValueField(wireName: r'image')
  String? get image;

  @BuiltValueField(wireName: r'image_pull_policy')
  ImageImagePullPolicy? get imagePullPolicy;
  // enum imagePullPolicyEnum {  IfNotPresent,  Always,  Never,  };

  @BuiltValueField(wireName: r'image_pull_secret')
  ImageImagePullSecret? get imagePullSecret;

  ServerConfigImage._();

  factory ServerConfigImage([void updates(ServerConfigImageBuilder b)]) = _$ServerConfigImage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServerConfigImageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServerConfigImage> get serializer => _$ServerConfigImageSerializer();
}

class _$ServerConfigImageSerializer implements PrimitiveSerializer<ServerConfigImage> {
  @override
  final Iterable<Type> types = const [ServerConfigImage, _$ServerConfigImage];

  @override
  final String wireName = r'ServerConfigImage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServerConfigImage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.image != null) {
      yield r'image';
      yield serializers.serialize(
        object.image,
        specifiedType: const FullType(String),
      );
    }
    if (object.imagePullPolicy != null) {
      yield r'image_pull_policy';
      yield serializers.serialize(
        object.imagePullPolicy,
        specifiedType: const FullType(ImageImagePullPolicy),
      );
    }
    if (object.imagePullSecret != null) {
      yield r'image_pull_secret';
      yield serializers.serialize(
        object.imagePullSecret,
        specifiedType: const FullType(ImageImagePullSecret),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ServerConfigImage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ServerConfigImageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.image = valueDes;
          break;
        case r'image_pull_policy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ImageImagePullPolicy),
          ) as ImageImagePullPolicy;
          result.imagePullPolicy = valueDes;
          break;
        case r'image_pull_secret':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ImageImagePullSecret),
          ) as ImageImagePullSecret;
          result.imagePullSecret.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ServerConfigImage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServerConfigImageBuilder();
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

