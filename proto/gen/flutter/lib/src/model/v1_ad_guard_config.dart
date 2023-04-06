//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:guardllama_api/src/model/ad_guard_config_block_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_ad_guard_config.g.dart';

/// V1AdGuardConfig
///
/// Properties:
/// * [filteringEnabled] 
/// * [blockLists] 
@BuiltValue()
abstract class V1AdGuardConfig implements Built<V1AdGuardConfig, V1AdGuardConfigBuilder> {
  @BuiltValueField(wireName: r'filtering_enabled')
  bool? get filteringEnabled;

  @BuiltValueField(wireName: r'block_lists')
  BuiltList<AdGuardConfigBlockList>? get blockLists;

  V1AdGuardConfig._();

  factory V1AdGuardConfig([void updates(V1AdGuardConfigBuilder b)]) = _$V1AdGuardConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1AdGuardConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1AdGuardConfig> get serializer => _$V1AdGuardConfigSerializer();
}

class _$V1AdGuardConfigSerializer implements PrimitiveSerializer<V1AdGuardConfig> {
  @override
  final Iterable<Type> types = const [V1AdGuardConfig, _$V1AdGuardConfig];

  @override
  final String wireName = r'V1AdGuardConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1AdGuardConfig object, {
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
        specifiedType: const FullType(BuiltList, [FullType(AdGuardConfigBlockList)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1AdGuardConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1AdGuardConfigBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(AdGuardConfigBlockList)]),
          ) as BuiltList<AdGuardConfigBlockList>;
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
  V1AdGuardConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1AdGuardConfigBuilder();
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

