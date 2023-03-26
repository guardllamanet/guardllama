//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:guardllama_api/src/model/v1_ad_guard_config_rule.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tunnel_service_update_dns_filtering_rules_request.g.dart';

/// TunnelServiceUpdateDNSFilteringRulesRequest
///
/// Properties:
/// * [rules] 
@BuiltValue()
abstract class TunnelServiceUpdateDNSFilteringRulesRequest implements Built<TunnelServiceUpdateDNSFilteringRulesRequest, TunnelServiceUpdateDNSFilteringRulesRequestBuilder> {
  @BuiltValueField(wireName: r'rules')
  BuiltList<V1AdGuardConfigRule>? get rules;

  TunnelServiceUpdateDNSFilteringRulesRequest._();

  factory TunnelServiceUpdateDNSFilteringRulesRequest([void updates(TunnelServiceUpdateDNSFilteringRulesRequestBuilder b)]) = _$TunnelServiceUpdateDNSFilteringRulesRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TunnelServiceUpdateDNSFilteringRulesRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TunnelServiceUpdateDNSFilteringRulesRequest> get serializer => _$TunnelServiceUpdateDNSFilteringRulesRequestSerializer();
}

class _$TunnelServiceUpdateDNSFilteringRulesRequestSerializer implements PrimitiveSerializer<TunnelServiceUpdateDNSFilteringRulesRequest> {
  @override
  final Iterable<Type> types = const [TunnelServiceUpdateDNSFilteringRulesRequest, _$TunnelServiceUpdateDNSFilteringRulesRequest];

  @override
  final String wireName = r'TunnelServiceUpdateDNSFilteringRulesRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TunnelServiceUpdateDNSFilteringRulesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.rules != null) {
      yield r'rules';
      yield serializers.serialize(
        object.rules,
        specifiedType: const FullType(BuiltList, [FullType(V1AdGuardConfigRule)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TunnelServiceUpdateDNSFilteringRulesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TunnelServiceUpdateDNSFilteringRulesRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rules':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(V1AdGuardConfigRule)]),
          ) as BuiltList<V1AdGuardConfigRule>;
          result.rules.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TunnelServiceUpdateDNSFilteringRulesRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TunnelServiceUpdateDNSFilteringRulesRequestBuilder();
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

