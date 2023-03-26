// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'k3d_node_port_range.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$K3dNodePortRange extends K3dNodePortRange {
  @override
  final int? fromPort;
  @override
  final int? toPort;
  @override
  final String? host;
  @override
  final NodePortRangeProtocol? protocol;

  factory _$K3dNodePortRange(
          [void Function(K3dNodePortRangeBuilder)? updates]) =>
      (new K3dNodePortRangeBuilder()..update(updates))._build();

  _$K3dNodePortRange._({this.fromPort, this.toPort, this.host, this.protocol})
      : super._();

  @override
  K3dNodePortRange rebuild(void Function(K3dNodePortRangeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  K3dNodePortRangeBuilder toBuilder() =>
      new K3dNodePortRangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is K3dNodePortRange &&
        fromPort == other.fromPort &&
        toPort == other.toPort &&
        host == other.host &&
        protocol == other.protocol;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fromPort.hashCode);
    _$hash = $jc(_$hash, toPort.hashCode);
    _$hash = $jc(_$hash, host.hashCode);
    _$hash = $jc(_$hash, protocol.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'K3dNodePortRange')
          ..add('fromPort', fromPort)
          ..add('toPort', toPort)
          ..add('host', host)
          ..add('protocol', protocol))
        .toString();
  }
}

class K3dNodePortRangeBuilder
    implements Builder<K3dNodePortRange, K3dNodePortRangeBuilder> {
  _$K3dNodePortRange? _$v;

  int? _fromPort;
  int? get fromPort => _$this._fromPort;
  set fromPort(int? fromPort) => _$this._fromPort = fromPort;

  int? _toPort;
  int? get toPort => _$this._toPort;
  set toPort(int? toPort) => _$this._toPort = toPort;

  String? _host;
  String? get host => _$this._host;
  set host(String? host) => _$this._host = host;

  NodePortRangeProtocol? _protocol;
  NodePortRangeProtocol? get protocol => _$this._protocol;
  set protocol(NodePortRangeProtocol? protocol) => _$this._protocol = protocol;

  K3dNodePortRangeBuilder() {
    K3dNodePortRange._defaults(this);
  }

  K3dNodePortRangeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fromPort = $v.fromPort;
      _toPort = $v.toPort;
      _host = $v.host;
      _protocol = $v.protocol;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(K3dNodePortRange other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$K3dNodePortRange;
  }

  @override
  void update(void Function(K3dNodePortRangeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  K3dNodePortRange build() => _build();

  _$K3dNodePortRange _build() {
    final _$result = _$v ??
        new _$K3dNodePortRange._(
            fromPort: fromPort, toPort: toPort, host: host, protocol: protocol);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
