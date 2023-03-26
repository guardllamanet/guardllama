//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:guardllama_api/src/model/wire_guard_device_device_type.dart';
import 'package:guardllama_api/src/model/v1_wire_guard_device_peer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_wire_guard_device.g.dart';

/// V1WireGuardDevice
///
/// Properties:
/// * [name] 
/// * [type] 
/// * [publicKey] 
/// * [listenPort] 
/// * [firewallMark] 
/// * [peers] 
@BuiltValue()
abstract class V1WireGuardDevice implements Built<V1WireGuardDevice, V1WireGuardDeviceBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'type')
  WireGuardDeviceDeviceType? get type;
  // enum typeEnum {  UNKNOWN,  LINUX,  OPEN_BSD,  FREE_BSD,  WINDOWS,  USERSPACE,  };

  @BuiltValueField(wireName: r'public_key')
  String? get publicKey;

  @BuiltValueField(wireName: r'listen_port')
  int? get listenPort;

  @BuiltValueField(wireName: r'firewall_mark')
  int? get firewallMark;

  @BuiltValueField(wireName: r'peers')
  BuiltList<V1WireGuardDevicePeer>? get peers;

  V1WireGuardDevice._();

  factory V1WireGuardDevice([void updates(V1WireGuardDeviceBuilder b)]) = _$V1WireGuardDevice;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1WireGuardDeviceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1WireGuardDevice> get serializer => _$V1WireGuardDeviceSerializer();
}

class _$V1WireGuardDeviceSerializer implements PrimitiveSerializer<V1WireGuardDevice> {
  @override
  final Iterable<Type> types = const [V1WireGuardDevice, _$V1WireGuardDevice];

  @override
  final String wireName = r'V1WireGuardDevice';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1WireGuardDevice object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(WireGuardDeviceDeviceType),
      );
    }
    if (object.publicKey != null) {
      yield r'public_key';
      yield serializers.serialize(
        object.publicKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.listenPort != null) {
      yield r'listen_port';
      yield serializers.serialize(
        object.listenPort,
        specifiedType: const FullType(int),
      );
    }
    if (object.firewallMark != null) {
      yield r'firewall_mark';
      yield serializers.serialize(
        object.firewallMark,
        specifiedType: const FullType(int),
      );
    }
    if (object.peers != null) {
      yield r'peers';
      yield serializers.serialize(
        object.peers,
        specifiedType: const FullType(BuiltList, [FullType(V1WireGuardDevicePeer)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1WireGuardDevice object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1WireGuardDeviceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WireGuardDeviceDeviceType),
          ) as WireGuardDeviceDeviceType;
          result.type = valueDes;
          break;
        case r'public_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.publicKey = valueDes;
          break;
        case r'listen_port':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.listenPort = valueDes;
          break;
        case r'firewall_mark':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.firewallMark = valueDes;
          break;
        case r'peers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(V1WireGuardDevicePeer)]),
          ) as BuiltList<V1WireGuardDevicePeer>;
          result.peers.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1WireGuardDevice deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1WireGuardDeviceBuilder();
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

