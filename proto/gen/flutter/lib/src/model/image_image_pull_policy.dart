//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'image_image_pull_policy.g.dart';

class ImageImagePullPolicy extends EnumClass {

  @BuiltValueEnumConst(wireName: r'IfNotPresent')
  static const ImageImagePullPolicy ifNotPresent = _$ifNotPresent;
  @BuiltValueEnumConst(wireName: r'Always')
  static const ImageImagePullPolicy always = _$always;
  @BuiltValueEnumConst(wireName: r'Never')
  static const ImageImagePullPolicy never = _$never;

  static Serializer<ImageImagePullPolicy> get serializer => _$imageImagePullPolicySerializer;

  const ImageImagePullPolicy._(String name): super(name);

  static BuiltSet<ImageImagePullPolicy> get values => _$values;
  static ImageImagePullPolicy valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ImageImagePullPolicyMixin = Object with _$ImageImagePullPolicyMixin;

