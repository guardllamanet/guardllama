//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:guardllama_api/src/model/ad_guard_home_config_block_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_ad_guard_home_status.g.dart';

/// V1AdGuardHomeStatus
///
/// Properties:
/// * [dns] 
/// * [filteringEnabled] 
/// * [blockLists] 
@BuiltValue()
abstract class V1AdGuardHomeStatus implements Built<V1AdGuardHomeStatus, V1AdGuardHomeStatusBuilder> {
  @BuiltValueField(wireName: r'dns')
  BuiltList<String>? get dns;

  @BuiltValueField(wireName: r'filtering_enabled')
  bool? get filteringEnabled;

  @BuiltValueField(wireName: r'block_lists')
  BuiltList<AdGuardHomeConfigBlockList>? get blockLists;

  V1AdGuardHomeStatus._();

  factory V1AdGuardHomeStatus([void updates(V1AdGuardHomeStatusBuilder b)]) = _$V1AdGuardHomeStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1AdGuardHomeStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1AdGuardHomeStatus> get serializer => _$V1AdGuardHomeStatusSerializer();
}

class _$V1AdGuardHomeStatusSerializer implements PrimitiveSerializer<V1AdGuardHomeStatus> {
  @override
  final Iterable<Type> types = const [V1AdGuardHomeStatus, _$V1AdGuardHomeStatus];

  @override
  final String wireName = r'V1AdGuardHomeStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1AdGuardHomeStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.dns != null) {
      yield r'dns';
      yield serializers.serialize(
        object.dns,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
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
    V1AdGuardHomeStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1AdGuardHomeStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'dns':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.dns.replace(valueDes);
          break;
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
  V1AdGuardHomeStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1AdGuardHomeStatusBuilder();
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

