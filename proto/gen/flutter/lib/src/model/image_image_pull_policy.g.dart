// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_image_pull_policy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ImageImagePullPolicy _$ifNotPresent =
    const ImageImagePullPolicy._('ifNotPresent');
const ImageImagePullPolicy _$always = const ImageImagePullPolicy._('always');
const ImageImagePullPolicy _$never = const ImageImagePullPolicy._('never');

ImageImagePullPolicy _$valueOf(String name) {
  switch (name) {
    case 'ifNotPresent':
      return _$ifNotPresent;
    case 'always':
      return _$always;
    case 'never':
      return _$never;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ImageImagePullPolicy> _$values =
    new BuiltSet<ImageImagePullPolicy>(const <ImageImagePullPolicy>[
  _$ifNotPresent,
  _$always,
  _$never,
]);

class _$ImageImagePullPolicyMeta {
  const _$ImageImagePullPolicyMeta();
  ImageImagePullPolicy get ifNotPresent => _$ifNotPresent;
  ImageImagePullPolicy get always => _$always;
  ImageImagePullPolicy get never => _$never;
  ImageImagePullPolicy valueOf(String name) => _$valueOf(name);
  BuiltSet<ImageImagePullPolicy> get values => _$values;
}

abstract class _$ImageImagePullPolicyMixin {
  // ignore: non_constant_identifier_names
  _$ImageImagePullPolicyMeta get ImageImagePullPolicy =>
      const _$ImageImagePullPolicyMeta();
}

Serializer<ImageImagePullPolicy> _$imageImagePullPolicySerializer =
    new _$ImageImagePullPolicySerializer();

class _$ImageImagePullPolicySerializer
    implements PrimitiveSerializer<ImageImagePullPolicy> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ifNotPresent': 'IfNotPresent',
    'always': 'Always',
    'never': 'Never',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'IfNotPresent': 'ifNotPresent',
    'Always': 'always',
    'Never': 'never',
  };

  @override
  final Iterable<Type> types = const <Type>[ImageImagePullPolicy];
  @override
  final String wireName = 'ImageImagePullPolicy';

  @override
  Object serialize(Serializers serializers, ImageImagePullPolicy object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ImageImagePullPolicy deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ImageImagePullPolicy.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
