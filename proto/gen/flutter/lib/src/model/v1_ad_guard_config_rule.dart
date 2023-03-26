//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_ad_guard_config_rule.g.dart';

/// V1AdGuardConfigRule
///
/// Properties:
/// * [rule] 
@BuiltValue()
abstract class V1AdGuardConfigRule implements Built<V1AdGuardConfigRule, V1AdGuardConfigRuleBuilder> {
  @BuiltValueField(wireName: r'rule')
  String? get rule;

  V1AdGuardConfigRule._();

  factory V1AdGuardConfigRule([void updates(V1AdGuardConfigRuleBuilder b)]) = _$V1AdGuardConfigRule;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1AdGuardConfigRuleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1AdGuardConfigRule> get serializer => _$V1AdGuardConfigRuleSerializer();
}

class _$V1AdGuardConfigRuleSerializer implements PrimitiveSerializer<V1AdGuardConfigRule> {
  @override
  final Iterable<Type> types = const [V1AdGuardConfigRule, _$V1AdGuardConfigRule];

  @override
  final String wireName = r'V1AdGuardConfigRule';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1AdGuardConfigRule object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.rule != null) {
      yield r'rule';
      yield serializers.serialize(
        object.rule,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1AdGuardConfigRule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1AdGuardConfigRuleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rule':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rule = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1AdGuardConfigRule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1AdGuardConfigRuleBuilder();
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

