//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:guardllama_api/src/model/query_log_client.dart';
import 'package:guardllama_api/src/model/ad_guard_status_query_log_response.dart';
import 'package:built_collection/built_collection.dart';
import 'package:guardllama_api/src/model/query_log_request.dart';
import 'package:guardllama_api/src/model/query_log_rule.dart';
import 'package:guardllama_api/src/model/query_log_reason.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ad_guard_status_query_log.g.dart';

/// AdGuardStatusQueryLog
///
/// Properties:
/// * [timestamp] 
/// * [request] 
/// * [response] 
/// * [reason] 
/// * [rules] 
/// * [client] 
@BuiltValue()
abstract class AdGuardStatusQueryLog implements Built<AdGuardStatusQueryLog, AdGuardStatusQueryLogBuilder> {
  @BuiltValueField(wireName: r'timestamp')
  DateTime get timestamp;

  @BuiltValueField(wireName: r'request')
  QueryLogRequest get request;

  @BuiltValueField(wireName: r'response')
  AdGuardStatusQueryLogResponse get response;

  @BuiltValueField(wireName: r'reason')
  QueryLogReason get reason;
  // enum reasonEnum {  UNKNOWN,  FILTERED_BLOCK_LIST,  ALLOWED,  };

  @BuiltValueField(wireName: r'rules')
  BuiltList<QueryLogRule>? get rules;

  @BuiltValueField(wireName: r'client')
  QueryLogClient get client;

  AdGuardStatusQueryLog._();

  factory AdGuardStatusQueryLog([void updates(AdGuardStatusQueryLogBuilder b)]) = _$AdGuardStatusQueryLog;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdGuardStatusQueryLogBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdGuardStatusQueryLog> get serializer => _$AdGuardStatusQueryLogSerializer();
}

class _$AdGuardStatusQueryLogSerializer implements PrimitiveSerializer<AdGuardStatusQueryLog> {
  @override
  final Iterable<Type> types = const [AdGuardStatusQueryLog, _$AdGuardStatusQueryLog];

  @override
  final String wireName = r'AdGuardStatusQueryLog';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdGuardStatusQueryLog object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'timestamp';
    yield serializers.serialize(
      object.timestamp,
      specifiedType: const FullType(DateTime),
    );
    yield r'request';
    yield serializers.serialize(
      object.request,
      specifiedType: const FullType(QueryLogRequest),
    );
    yield r'response';
    yield serializers.serialize(
      object.response,
      specifiedType: const FullType(AdGuardStatusQueryLogResponse),
    );
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(QueryLogReason),
    );
    if (object.rules != null) {
      yield r'rules';
      yield serializers.serialize(
        object.rules,
        specifiedType: const FullType(BuiltList, [FullType(QueryLogRule)]),
      );
    }
    yield r'client';
    yield serializers.serialize(
      object.client,
      specifiedType: const FullType(QueryLogClient),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AdGuardStatusQueryLog object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdGuardStatusQueryLogBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timestamp = valueDes;
          break;
        case r'request':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QueryLogRequest),
          ) as QueryLogRequest;
          result.request.replace(valueDes);
          break;
        case r'response':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdGuardStatusQueryLogResponse),
          ) as AdGuardStatusQueryLogResponse;
          result.response.replace(valueDes);
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QueryLogReason),
          ) as QueryLogReason;
          result.reason = valueDes;
          break;
        case r'rules':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(QueryLogRule)]),
          ) as BuiltList<QueryLogRule>;
          result.rules.replace(valueDes);
          break;
        case r'client':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QueryLogClient),
          ) as QueryLogClient;
          result.client.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdGuardStatusQueryLog deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdGuardStatusQueryLogBuilder();
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

