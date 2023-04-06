//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'query_log_rule.g.dart';

/// QueryLogRule
///
/// Properties:
/// * [filterId] 
/// * [text] 
@BuiltValue()
abstract class QueryLogRule implements Built<QueryLogRule, QueryLogRuleBuilder> {
  @BuiltValueField(wireName: r'filter_id')
  String? get filterId;

  @BuiltValueField(wireName: r'text')
  String get text;

  QueryLogRule._();

  factory QueryLogRule([void updates(QueryLogRuleBuilder b)]) = _$QueryLogRule;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QueryLogRuleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QueryLogRule> get serializer => _$QueryLogRuleSerializer();
}

class _$QueryLogRuleSerializer implements PrimitiveSerializer<QueryLogRule> {
  @override
  final Iterable<Type> types = const [QueryLogRule, _$QueryLogRule];

  @override
  final String wireName = r'QueryLogRule';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QueryLogRule object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.filterId != null) {
      yield r'filter_id';
      yield serializers.serialize(
        object.filterId,
        specifiedType: const FullType(String),
      );
    }
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    QueryLogRule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QueryLogRuleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'filter_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.filterId = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QueryLogRule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueryLogRuleBuilder();
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

