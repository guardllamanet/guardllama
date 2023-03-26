//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tunnel_service_update_dns_filtering_enabled_request.g.dart';

/// TunnelServiceUpdateDNSFilteringEnabledRequest
///
/// Properties:
/// * [filteringEnabled] 
@BuiltValue()
abstract class TunnelServiceUpdateDNSFilteringEnabledRequest implements Built<TunnelServiceUpdateDNSFilteringEnabledRequest, TunnelServiceUpdateDNSFilteringEnabledRequestBuilder> {
  @BuiltValueField(wireName: r'filtering_enabled')
  bool? get filteringEnabled;

  TunnelServiceUpdateDNSFilteringEnabledRequest._();

  factory TunnelServiceUpdateDNSFilteringEnabledRequest([void updates(TunnelServiceUpdateDNSFilteringEnabledRequestBuilder b)]) = _$TunnelServiceUpdateDNSFilteringEnabledRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TunnelServiceUpdateDNSFilteringEnabledRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TunnelServiceUpdateDNSFilteringEnabledRequest> get serializer => _$TunnelServiceUpdateDNSFilteringEnabledRequestSerializer();
}

class _$TunnelServiceUpdateDNSFilteringEnabledRequestSerializer implements PrimitiveSerializer<TunnelServiceUpdateDNSFilteringEnabledRequest> {
  @override
  final Iterable<Type> types = const [TunnelServiceUpdateDNSFilteringEnabledRequest, _$TunnelServiceUpdateDNSFilteringEnabledRequest];

  @override
  final String wireName = r'TunnelServiceUpdateDNSFilteringEnabledRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TunnelServiceUpdateDNSFilteringEnabledRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.filteringEnabled != null) {
      yield r'filtering_enabled';
      yield serializers.serialize(
        object.filteringEnabled,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TunnelServiceUpdateDNSFilteringEnabledRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TunnelServiceUpdateDNSFilteringEnabledRequestBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TunnelServiceUpdateDNSFilteringEnabledRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TunnelServiceUpdateDNSFilteringEnabledRequestBuilder();
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

