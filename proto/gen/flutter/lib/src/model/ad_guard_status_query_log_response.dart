//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:guardllama_api/src/model/response_answer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ad_guard_status_query_log_response.g.dart';

/// AdGuardStatusQueryLogResponse
///
/// Properties:
/// * [elapsedMs] 
/// * [status] 
/// * [answers] 
@BuiltValue()
abstract class AdGuardStatusQueryLogResponse implements Built<AdGuardStatusQueryLogResponse, AdGuardStatusQueryLogResponseBuilder> {
  @BuiltValueField(wireName: r'elapsed_ms')
  double? get elapsedMs;

  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'answers')
  BuiltList<ResponseAnswer>? get answers;

  AdGuardStatusQueryLogResponse._();

  factory AdGuardStatusQueryLogResponse([void updates(AdGuardStatusQueryLogResponseBuilder b)]) = _$AdGuardStatusQueryLogResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdGuardStatusQueryLogResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdGuardStatusQueryLogResponse> get serializer => _$AdGuardStatusQueryLogResponseSerializer();
}

class _$AdGuardStatusQueryLogResponseSerializer implements PrimitiveSerializer<AdGuardStatusQueryLogResponse> {
  @override
  final Iterable<Type> types = const [AdGuardStatusQueryLogResponse, _$AdGuardStatusQueryLogResponse];

  @override
  final String wireName = r'AdGuardStatusQueryLogResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdGuardStatusQueryLogResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.elapsedMs != null) {
      yield r'elapsed_ms';
      yield serializers.serialize(
        object.elapsedMs,
        specifiedType: const FullType(double),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    if (object.answers != null) {
      yield r'answers';
      yield serializers.serialize(
        object.answers,
        specifiedType: const FullType(BuiltList, [FullType(ResponseAnswer)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AdGuardStatusQueryLogResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdGuardStatusQueryLogResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'elapsed_ms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.elapsedMs = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'answers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ResponseAnswer)]),
          ) as BuiltList<ResponseAnswer>;
          result.answers.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdGuardStatusQueryLogResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdGuardStatusQueryLogResponseBuilder();
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

