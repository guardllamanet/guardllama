//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_wire_guard_interface.g.dart';

/// V1WireGuardInterface
///
/// Properties:
/// * [privateKey] 
/// * [listenPort] 
/// * [ingressPort] 
/// * [firewallMark] 
/// * [address] 
/// * [dns] 
/// * [mtu] 
/// * [table] 
/// * [preUp] 
/// * [postUp] 
/// * [preDown] 
/// * [postDown] 
@BuiltValue()
abstract class V1WireGuardInterface implements Built<V1WireGuardInterface, V1WireGuardInterfaceBuilder> {
  @BuiltValueField(wireName: r'private_key')
  String? get privateKey;

  @BuiltValueField(wireName: r'listen_port')
  int? get listenPort;

  @BuiltValueField(wireName: r'ingress_port')
  int? get ingressPort;

  @BuiltValueField(wireName: r'firewall_mark')
  int? get firewallMark;

  @BuiltValueField(wireName: r'address')
  BuiltList<String>? get address;

  @BuiltValueField(wireName: r'dns')
  BuiltList<String>? get dns;

  @BuiltValueField(wireName: r'mtu')
  int? get mtu;

  @BuiltValueField(wireName: r'table')
  int? get table;

  @BuiltValueField(wireName: r'pre_up')
  String? get preUp;

  @BuiltValueField(wireName: r'post_up')
  String? get postUp;

  @BuiltValueField(wireName: r'pre_down')
  String? get preDown;

  @BuiltValueField(wireName: r'post_down')
  String? get postDown;

  V1WireGuardInterface._();

  factory V1WireGuardInterface([void updates(V1WireGuardInterfaceBuilder b)]) = _$V1WireGuardInterface;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1WireGuardInterfaceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1WireGuardInterface> get serializer => _$V1WireGuardInterfaceSerializer();
}

class _$V1WireGuardInterfaceSerializer implements PrimitiveSerializer<V1WireGuardInterface> {
  @override
  final Iterable<Type> types = const [V1WireGuardInterface, _$V1WireGuardInterface];

  @override
  final String wireName = r'V1WireGuardInterface';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1WireGuardInterface object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.privateKey != null) {
      yield r'private_key';
      yield serializers.serialize(
        object.privateKey,
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
    if (object.ingressPort != null) {
      yield r'ingress_port';
      yield serializers.serialize(
        object.ingressPort,
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
    if (object.address != null) {
      yield r'address';
      yield serializers.serialize(
        object.address,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.dns != null) {
      yield r'dns';
      yield serializers.serialize(
        object.dns,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.mtu != null) {
      yield r'mtu';
      yield serializers.serialize(
        object.mtu,
        specifiedType: const FullType(int),
      );
    }
    if (object.table != null) {
      yield r'table';
      yield serializers.serialize(
        object.table,
        specifiedType: const FullType(int),
      );
    }
    if (object.preUp != null) {
      yield r'pre_up';
      yield serializers.serialize(
        object.preUp,
        specifiedType: const FullType(String),
      );
    }
    if (object.postUp != null) {
      yield r'post_up';
      yield serializers.serialize(
        object.postUp,
        specifiedType: const FullType(String),
      );
    }
    if (object.preDown != null) {
      yield r'pre_down';
      yield serializers.serialize(
        object.preDown,
        specifiedType: const FullType(String),
      );
    }
    if (object.postDown != null) {
      yield r'post_down';
      yield serializers.serialize(
        object.postDown,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1WireGuardInterface object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1WireGuardInterfaceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'private_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.privateKey = valueDes;
          break;
        case r'listen_port':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.listenPort = valueDes;
          break;
        case r'ingress_port':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.ingressPort = valueDes;
          break;
        case r'firewall_mark':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.firewallMark = valueDes;
          break;
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.address.replace(valueDes);
          break;
        case r'dns':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.dns.replace(valueDes);
          break;
        case r'mtu':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mtu = valueDes;
          break;
        case r'table':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.table = valueDes;
          break;
        case r'pre_up':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.preUp = valueDes;
          break;
        case r'post_up':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.postUp = valueDes;
          break;
        case r'pre_down':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.preDown = valueDes;
          break;
        case r'post_down':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.postDown = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1WireGuardInterface deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1WireGuardInterfaceBuilder();
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

