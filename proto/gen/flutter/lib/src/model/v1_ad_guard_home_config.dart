//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:guardllama_api/src/model/ad_guard_home_config_block_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_ad_guard_home_config.g.dart';

/// V1AdGuardHomeConfig
///
/// Properties:
/// * [filteringEnabled] 
/// * [blockLists] 
@BuiltValue()
abstract class V1AdGuardHomeConfig implements Built<V1AdGuardHomeConfig, V1AdGuardHomeConfigBuilder> {
  @BuiltValueField(wireName: r'filtering_enabled')
  bool? get filteringEnabled;

  @BuiltValueField(wireName: r'block_lists')
  BuiltList<AdGuardHomeConfigBlockList>? get blockLists;

  V1AdGuardHomeConfig._();

  factory V1AdGuardHomeConfig([void updates(V1AdGuardHomeConfigBuilder b)]) = _$V1AdGuardHomeConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1AdGuardHomeConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1AdGuardHomeConfig> get serializer => _$V1AdGuardHomeConfigSerializer();
}

class _$V1AdGuardHomeConfigSerializer implements PrimitiveSerializer<V1AdGuardHomeConfig> {
  @override
  final Iterable<Type> types = const [V1AdGuardHomeConfig, _$V1AdGuardHomeConfig];

  @override
  final String wireName = r'V1AdGuardHomeConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1AdGuardHomeConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.filteringEnabled != null) {
      yield r'filtering_enabled';
      yield serializers.serialize(
        object.filteringEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.blockLists != null) {
      yield r'block_lists';
      yield serializers.serialize(
        object.blockLists,
        specifiedType: const FullType(BuiltList, [FullType(AdGuardHomeConfigBlockList)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1AdGuardHomeConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1AdGuardHomeConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'filtering_enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.filteringEnabled = valueDes;
          break;
        case r'block_lists':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AdGuardHomeConfigBlockList)]),
          ) as BuiltList<AdGuardHomeConfigBlockList>;
          result.blockLists.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1AdGuardHomeConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1AdGuardHomeConfigBuilder();
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

