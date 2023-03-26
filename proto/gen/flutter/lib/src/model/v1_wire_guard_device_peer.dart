//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_wire_guard_device_peer.g.dart';

/// V1WireGuardDevicePeer
///
/// Properties:
/// * [publicKey] 
/// * [presharedKey] 
/// * [endpoint] 
/// * [persistentKeepaliveInterval] 
/// * [lastHandshakeTime] 
/// * [receiveBytes] 
/// * [transmitBytes] 
/// * [allowedIps] 
/// * [protocolVersion] 
@BuiltValue()
abstract class V1WireGuardDevicePeer implements Built<V1WireGuardDevicePeer, V1WireGuardDevicePeerBuilder> {
  @BuiltValueField(wireName: r'public_key')
  String? get publicKey;

  @BuiltValueField(wireName: r'preshared_key')
  String? get presharedKey;

  @BuiltValueField(wireName: r'endpoint')
  String? get endpoint;

  @BuiltValueField(wireName: r'persistent_keepalive_interval')
  String? get persistentKeepaliveInterval;

  @BuiltValueField(wireName: r'last_handshake_time')
  DateTime? get lastHandshakeTime;

  @BuiltValueField(wireName: r'receive_bytes')
  String? get receiveBytes;

  @BuiltValueField(wireName: r'transmit_bytes')
  String? get transmitBytes;

  @BuiltValueField(wireName: r'allowed_ips')
  BuiltList<String>? get allowedIps;

  @BuiltValueField(wireName: r'protocol_version')
  int? get protocolVersion;

  V1WireGuardDevicePeer._();

  factory V1WireGuardDevicePeer([void updates(V1WireGuardDevicePeerBuilder b)]) = _$V1WireGuardDevicePeer;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1WireGuardDevicePeerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1WireGuardDevicePeer> get serializer => _$V1WireGuardDevicePeerSerializer();
}

class _$V1WireGuardDevicePeerSerializer implements PrimitiveSerializer<V1WireGuardDevicePeer> {
  @override
  final Iterable<Type> types = const [V1WireGuardDevicePeer, _$V1WireGuardDevicePeer];

  @override
  final String wireName = r'V1WireGuardDevicePeer';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1WireGuardDevicePeer object, {
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
    if (object.lastHandshakeTime != null) {
      yield r'last_handshake_time';
      yield serializers.serialize(
        object.lastHandshakeTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.receiveBytes != null) {
      yield r'receive_bytes';
      yield serializers.serialize(
        object.receiveBytes,
        specifiedType: const FullType(String),
      );
    }
    if (object.transmitBytes != null) {
      yield r'transmit_bytes';
      yield serializers.serialize(
        object.transmitBytes,
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
    if (object.protocolVersion != null) {
      yield r'protocol_version';
      yield serializers.serialize(
        object.protocolVersion,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1WireGuardDevicePeer object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1WireGuardDevicePeerBuilder result,
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
        case r'last_handshake_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastHandshakeTime = valueDes;
          break;
        case r'receive_bytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.receiveBytes = valueDes;
          break;
        case r'transmit_bytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.transmitBytes = valueDes;
          break;
        case r'allowed_ips':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.allowedIps.replace(valueDes);
          break;
        case r'protocol_version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.protocolVersion = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1WireGuardDevicePeer deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1WireGuardDevicePeerBuilder();
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

