//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ad_guard_status_query_log_rule.g.dart';

/// AdGuardStatusQueryLogRule
///
/// Properties:
/// * [filterId] 
/// * [text] 
@BuiltValue()
abstract class AdGuardStatusQueryLogRule implements Built<AdGuardStatusQueryLogRule, AdGuardStatusQueryLogRuleBuilder> {
  @BuiltValueField(wireName: r'filter_id')
  String? get filterId;

  @BuiltValueField(wireName: r'text')
  String get text;

  AdGuardStatusQueryLogRule._();

  factory AdGuardStatusQueryLogRule([void updates(AdGuardStatusQueryLogRuleBuilder b)]) = _$AdGuardStatusQueryLogRule;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdGuardStatusQueryLogRuleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdGuardStatusQueryLogRule> get serializer => _$AdGuardStatusQueryLogRuleSerializer();
}

class _$AdGuardStatusQueryLogRuleSerializer implements PrimitiveSerializer<AdGuardStatusQueryLogRule> {
  @override
  final Iterable<Type> types = const [AdGuardStatusQueryLogRule, _$AdGuardStatusQueryLogRule];

  @override
  final String wireName = r'AdGuardStatusQueryLogRule';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdGuardStatusQueryLogRule object, {
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
    AdGuardStatusQueryLogRule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdGuardStatusQueryLogRuleBuilder result,
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
  AdGuardStatusQueryLogRule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdGuardStatusQueryLogRuleBuilder();
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

