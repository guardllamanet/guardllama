//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ad_guard_home_config_block_list.g.dart';

/// AdGuardHomeConfigBlockList
///
/// Properties:
/// * [name] 
/// * [url] 
@BuiltValue()
abstract class AdGuardHomeConfigBlockList implements Built<AdGuardHomeConfigBlockList, AdGuardHomeConfigBlockListBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'url')
  String? get url;

  AdGuardHomeConfigBlockList._();

  factory AdGuardHomeConfigBlockList([void updates(AdGuardHomeConfigBlockListBuilder b)]) = _$AdGuardHomeConfigBlockList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdGuardHomeConfigBlockListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdGuardHomeConfigBlockList> get serializer => _$AdGuardHomeConfigBlockListSerializer();
}

class _$AdGuardHomeConfigBlockListSerializer implements PrimitiveSerializer<AdGuardHomeConfigBlockList> {
  @override
  final Iterable<Type> types = const [AdGuardHomeConfigBlockList, _$AdGuardHomeConfigBlockList];

  @override
  final String wireName = r'AdGuardHomeConfigBlockList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdGuardHomeConfigBlockList object, {
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
    AdGuardHomeConfigBlockList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdGuardHomeConfigBlockListBuilder result,
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
  AdGuardHomeConfigBlockList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdGuardHomeConfigBlockListBuilder();
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

