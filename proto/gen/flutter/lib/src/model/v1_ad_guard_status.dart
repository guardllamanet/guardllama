//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:guardllama_api/src/model/ad_guard_status_query_log.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_ad_guard_status.g.dart';

/// V1AdGuardStatus
///
/// Properties:
/// * [queryLogs] 
@BuiltValue()
abstract class V1AdGuardStatus implements Built<V1AdGuardStatus, V1AdGuardStatusBuilder> {
  @BuiltValueField(wireName: r'query_logs')
  BuiltList<AdGuardStatusQueryLog>? get queryLogs;

  V1AdGuardStatus._();

  factory V1AdGuardStatus([void updates(V1AdGuardStatusBuilder b)]) = _$V1AdGuardStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1AdGuardStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1AdGuardStatus> get serializer => _$V1AdGuardStatusSerializer();
}

class _$V1AdGuardStatusSerializer implements PrimitiveSerializer<V1AdGuardStatus> {
  @override
  final Iterable<Type> types = const [V1AdGuardStatus, _$V1AdGuardStatus];

  @override
  final String wireName = r'V1AdGuardStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1AdGuardStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.queryLogs != null) {
      yield r'query_logs';
      yield serializers.serialize(
        object.queryLogs,
        specifiedType: const FullType(BuiltList, [FullType(AdGuardStatusQueryLog)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1AdGuardStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1AdGuardStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'query_logs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AdGuardStatusQueryLog)]),
          ) as BuiltList<AdGuardStatusQueryLog>;
          result.queryLogs.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1AdGuardStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1AdGuardStatusBuilder();
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

