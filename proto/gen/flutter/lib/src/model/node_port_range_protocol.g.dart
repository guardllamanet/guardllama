// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node_port_range_protocol.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NodePortRangeProtocol _$TCP = const NodePortRangeProtocol._('TCP');
const NodePortRangeProtocol _$UDP = const NodePortRangeProtocol._('UDP');

NodePortRangeProtocol _$valueOf(String name) {
  switch (name) {
    case 'TCP':
      return _$TCP;
    case 'UDP':
      return _$UDP;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<NodePortRangeProtocol> _$values =
    new BuiltSet<NodePortRangeProtocol>(const <NodePortRangeProtocol>[
  _$TCP,
  _$UDP,
]);

class _$NodePortRangeProtocolMeta {
  const _$NodePortRangeProtocolMeta();
  NodePortRangeProtocol get TCP => _$TCP;
  NodePortRangeProtocol get UDP => _$UDP;
  NodePortRangeProtocol valueOf(String name) => _$valueOf(name);
  BuiltSet<NodePortRangeProtocol> get values => _$values;
}

abstract class _$NodePortRangeProtocolMixin {
  // ignore: non_constant_identifier_names
  _$NodePortRangeProtocolMeta get NodePortRangeProtocol =>
      const _$NodePortRangeProtocolMeta();
}

Serializer<NodePortRangeProtocol> _$nodePortRangeProtocolSerializer =
    new _$NodePortRangeProtocolSerializer();

class _$NodePortRangeProtocolSerializer
    implements PrimitiveSerializer<NodePortRangeProtocol> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'TCP': 'TCP',
    'UDP': 'UDP',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'TCP': 'TCP',
    'UDP': 'UDP',
  };

  @override
  final Iterable<Type> types = const <Type>[NodePortRangeProtocol];
  @override
  final String wireName = 'NodePortRangeProtocol';

  @override
  Object serialize(Serializers serializers, NodePortRangeProtocol object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NodePortRangeProtocol deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NodePortRangeProtocol.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
