// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wire_guard_device_device_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WireGuardDeviceDeviceType _$UNKNOWN =
    const WireGuardDeviceDeviceType._('UNKNOWN');
const WireGuardDeviceDeviceType _$LINUX =
    const WireGuardDeviceDeviceType._('LINUX');
const WireGuardDeviceDeviceType _$OPEN_BSD =
    const WireGuardDeviceDeviceType._('OPEN_BSD');
const WireGuardDeviceDeviceType _$FREE_BSD =
    const WireGuardDeviceDeviceType._('FREE_BSD');
const WireGuardDeviceDeviceType _$WINDOWS =
    const WireGuardDeviceDeviceType._('WINDOWS');
const WireGuardDeviceDeviceType _$USERSPACE =
    const WireGuardDeviceDeviceType._('USERSPACE');

WireGuardDeviceDeviceType _$valueOf(String name) {
  switch (name) {
    case 'UNKNOWN':
      return _$UNKNOWN;
    case 'LINUX':
      return _$LINUX;
    case 'OPEN_BSD':
      return _$OPEN_BSD;
    case 'FREE_BSD':
      return _$FREE_BSD;
    case 'WINDOWS':
      return _$WINDOWS;
    case 'USERSPACE':
      return _$USERSPACE;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<WireGuardDeviceDeviceType> _$values =
    new BuiltSet<WireGuardDeviceDeviceType>(const <WireGuardDeviceDeviceType>[
  _$UNKNOWN,
  _$LINUX,
  _$OPEN_BSD,
  _$FREE_BSD,
  _$WINDOWS,
  _$USERSPACE,
]);

class _$WireGuardDeviceDeviceTypeMeta {
  const _$WireGuardDeviceDeviceTypeMeta();
  WireGuardDeviceDeviceType get UNKNOWN => _$UNKNOWN;
  WireGuardDeviceDeviceType get LINUX => _$LINUX;
  WireGuardDeviceDeviceType get OPEN_BSD => _$OPEN_BSD;
  WireGuardDeviceDeviceType get FREE_BSD => _$FREE_BSD;
  WireGuardDeviceDeviceType get WINDOWS => _$WINDOWS;
  WireGuardDeviceDeviceType get USERSPACE => _$USERSPACE;
  WireGuardDeviceDeviceType valueOf(String name) => _$valueOf(name);
  BuiltSet<WireGuardDeviceDeviceType> get values => _$values;
}

abstract class _$WireGuardDeviceDeviceTypeMixin {
  // ignore: non_constant_identifier_names
  _$WireGuardDeviceDeviceTypeMeta get WireGuardDeviceDeviceType =>
      const _$WireGuardDeviceDeviceTypeMeta();
}

Serializer<WireGuardDeviceDeviceType> _$wireGuardDeviceDeviceTypeSerializer =
    new _$WireGuardDeviceDeviceTypeSerializer();

class _$WireGuardDeviceDeviceTypeSerializer
    implements PrimitiveSerializer<WireGuardDeviceDeviceType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'UNKNOWN': 'UNKNOWN',
    'LINUX': 'LINUX',
    'OPEN_BSD': 'OPEN_BSD',
    'FREE_BSD': 'FREE_BSD',
    'WINDOWS': 'WINDOWS',
    'USERSPACE': 'USERSPACE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'UNKNOWN': 'UNKNOWN',
    'LINUX': 'LINUX',
    'OPEN_BSD': 'OPEN_BSD',
    'FREE_BSD': 'FREE_BSD',
    'WINDOWS': 'WINDOWS',
    'USERSPACE': 'USERSPACE',
  };

  @override
  final Iterable<Type> types = const <Type>[WireGuardDeviceDeviceType];
  @override
  final String wireName = 'WireGuardDeviceDeviceType';

  @override
  Object serialize(Serializers serializers, WireGuardDeviceDeviceType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  WireGuardDeviceDeviceType deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      WireGuardDeviceDeviceType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
