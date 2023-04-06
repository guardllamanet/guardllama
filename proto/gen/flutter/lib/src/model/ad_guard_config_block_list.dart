//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ad_guard_config_block_list.g.dart';

/// AdGuardConfigBlockList
///
/// Properties:
/// * [name] 
/// * [url] 
@BuiltValue()
abstract class AdGuardConfigBlockList implements Built<AdGuardConfigBlockList, AdGuardConfigBlockListBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'url')
  String? get url;

  AdGuardConfigBlockList._();

  factory AdGuardConfigBlockList([void updates(AdGuardConfigBlockListBuilder b)]) = _$AdGuardConfigBlockList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdGuardConfigBlockListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdGuardConfigBlockList> get serializer => _$AdGuardConfigBlockListSerializer();
}

class _$AdGuardConfigBlockListSerializer implements PrimitiveSerializer<AdGuardConfigBlockList> {
  @override
  final Iterable<Type> types = const [AdGuardConfigBlockList, _$AdGuardConfigBlockList];

  @override
  final String wireName = r'AdGuardConfigBlockList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdGuardConfigBlockList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AdGuardConfigBlockList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdGuardConfigBlockListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdGuardConfigBlockList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdGuardConfigBlockListBuilder();
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

