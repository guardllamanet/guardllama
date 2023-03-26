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
/// * [id] 
/// * [name] 
/// * [url] 
/// * [enabled] 
@BuiltValue()
abstract class AdGuardConfigBlockList implements Built<AdGuardConfigBlockList, AdGuardConfigBlockListBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

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
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
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
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
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
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
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
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
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

