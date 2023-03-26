//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'protobuf_any.g.dart';

/// ProtobufAny
///
/// Properties:
/// * [atType] 
@BuiltValue()
abstract class ProtobufAny implements Built<ProtobufAny, ProtobufAnyBuilder> {
  @BuiltValueField(wireName: r'@type')
  String? get atType;

  ProtobufAny._();

  factory ProtobufAny([void updates(ProtobufAnyBuilder b)]) = _$ProtobufAny;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProtobufAnyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProtobufAny> get serializer => _$ProtobufAnySerializer();
}

class _$ProtobufAnySerializer implements PrimitiveSerializer<ProtobufAny> {
  @override
  final Iterable<Type> types = const [ProtobufAny, _$ProtobufAny];

  @override
  final String wireName = r'ProtobufAny';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProtobufAny object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.atType != null) {
      yield r'@type';
      yield serializers.serialize(
        object.atType,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProtobufAny object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProtobufAnyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.atType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProtobufAny deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProtobufAnyBuilder();
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

