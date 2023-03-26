//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:guardllama_api/src/model/ad_guard_config_block_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tunnel_service_update_dns_block_lists_request.g.dart';

/// TunnelServiceUpdateDNSBlockListsRequest
///
/// Properties:
/// * [blockLists] 
@BuiltValue()
abstract class TunnelServiceUpdateDNSBlockListsRequest implements Built<TunnelServiceUpdateDNSBlockListsRequest, TunnelServiceUpdateDNSBlockListsRequestBuilder> {
  @BuiltValueField(wireName: r'block_lists')
  BuiltList<AdGuardConfigBlockList>? get blockLists;

  TunnelServiceUpdateDNSBlockListsRequest._();

  factory TunnelServiceUpdateDNSBlockListsRequest([void updates(TunnelServiceUpdateDNSBlockListsRequestBuilder b)]) = _$TunnelServiceUpdateDNSBlockListsRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TunnelServiceUpdateDNSBlockListsRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TunnelServiceUpdateDNSBlockListsRequest> get serializer => _$TunnelServiceUpdateDNSBlockListsRequestSerializer();
}

class _$TunnelServiceUpdateDNSBlockListsRequestSerializer implements PrimitiveSerializer<TunnelServiceUpdateDNSBlockListsRequest> {
  @override
  final Iterable<Type> types = const [TunnelServiceUpdateDNSBlockListsRequest, _$TunnelServiceUpdateDNSBlockListsRequest];

  @override
  final String wireName = r'TunnelServiceUpdateDNSBlockListsRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TunnelServiceUpdateDNSBlockListsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    TunnelServiceUpdateDNSBlockListsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TunnelServiceUpdateDNSBlockListsRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  TunnelServiceUpdateDNSBlockListsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TunnelServiceUpdateDNSBlockListsRequestBuilder();
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

