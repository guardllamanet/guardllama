// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vpn_port_range_protocol.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const VpnPortRangeProtocol _$TCP = const VpnPortRangeProtocol._('TCP');
const VpnPortRangeProtocol _$UDP = const VpnPortRangeProtocol._('UDP');

VpnPortRangeProtocol _$valueOf(String name) {
  switch (name) {
    case 'TCP':
      return _$TCP;
    case 'UDP':
      return _$UDP;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<VpnPortRangeProtocol> _$values =
    new BuiltSet<VpnPortRangeProtocol>(const <VpnPortRangeProtocol>[
  _$TCP,
  _$UDP,
]);

class _$VpnPortRangeProtocolMeta {
  const _$VpnPortRangeProtocolMeta();
  VpnPortRangeProtocol get TCP => _$TCP;
  VpnPortRangeProtocol get UDP => _$UDP;
  VpnPortRangeProtocol valueOf(String name) => _$valueOf(name);
  BuiltSet<VpnPortRangeProtocol> get values => _$values;
}

abstract class _$VpnPortRangeProtocolMixin {
  // ignore: non_constant_identifier_names
  _$VpnPortRangeProtocolMeta get VpnPortRangeProtocol =>
      const _$VpnPortRangeProtocolMeta();
}

Serializer<VpnPortRangeProtocol> _$vpnPortRangeProtocolSerializer =
    new _$VpnPortRangeProtocolSerializer();

class _$VpnPortRangeProtocolSerializer
    implements PrimitiveSerializer<VpnPortRangeProtocol> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'TCP': 'TCP',
    'UDP': 'UDP',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'TCP': 'TCP',
    'UDP': 'UDP',
  };

  @override
  final Iterable<Type> types = const <Type>[VpnPortRangeProtocol];
  @override
  final String wireName = 'VpnPortRangeProtocol';

  @override
  Object serialize(Serializers serializers, VpnPortRangeProtocol object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  VpnPortRangeProtocol deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      VpnPortRangeProtocol.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
