//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_wire_guard_peer.g.dart';

/// V1WireGuardPeer
///
/// Properties:
/// * [publicKey] 
/// * [presharedKey] 
/// * [endpoint] 
/// * [persistentKeepaliveInterval] 
/// * [allowedIps] 
@BuiltValue()
abstract class V1WireGuardPeer implements Built<V1WireGuardPeer, V1WireGuardPeerBuilder> {
  @BuiltValueField(wireName: r'public_key')
  String? get publicKey;

  @BuiltValueField(wireName: r'preshared_key')
  String? get presharedKey;

  @BuiltValueField(wireName: r'endpoint')
  String? get endpoint;

  @BuiltValueField(wireName: r'persistent_keepalive_interval')
  String? get persistentKeepaliveInterval;

  @BuiltValueField(wireName: r'allowed_ips')
  BuiltList<String>? get allowedIps;

  V1WireGuardPeer._();

  factory V1WireGuardPeer([void updates(V1WireGuardPeerBuilder b)]) = _$V1WireGuardPeer;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1WireGuardPeerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1WireGuardPeer> get serializer => _$V1WireGuardPeerSerializer();
}

class _$V1WireGuardPeerSerializer implements PrimitiveSerializer<V1WireGuardPeer> {
  @override
  final Iterable<Type> types = const [V1WireGuardPeer, _$V1WireGuardPeer];

  @override
  final String wireName = r'V1WireGuardPeer';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1WireGuardPeer object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.publicKey != null) {
      yield r'public_key';
      yield serializers.serialize(
        object.publicKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.presharedKey != null) {
      yield r'preshared_key';
      yield serializers.serialize(
        object.presharedKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.endpoint != null) {
      yield r'endpoint';
      yield serializers.serialize(
        object.endpoint,
        specifiedType: const FullType(String),
      );
    }
    if (object.persistentKeepaliveInterval != null) {
      yield r'persistent_keepalive_interval';
      yield serializers.serialize(
        object.persistentKeepaliveInterval,
        specifiedType: const FullType(String),
      );
    }
    if (object.allowedIps != null) {
      yield r'allowed_ips';
      yield serializers.serialize(
        object.allowedIps,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1WireGuardPeer object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1WireGuardPeerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'public_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.publicKey = valueDes;
          break;
        case r'preshared_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.presharedKey = valueDes;
          break;
        case r'endpoint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.endpoint = valueDes;
          break;
        case r'persistent_keepalive_interval':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.persistentKeepaliveInterval = valueDes;
          break;
        case r'allowed_ips':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.allowedIps.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1WireGuardPeer deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1WireGuardPeerBuilder();
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

