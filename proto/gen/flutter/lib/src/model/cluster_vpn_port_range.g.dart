// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cluster_vpn_port_range.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClusterVpnPortRange extends ClusterVpnPortRange {
  @override
  final int? fromPort;
  @override
  final int? toPort;
  @override
  final VpnPortRangeProtocol? protocol;

  factory _$ClusterVpnPortRange(
          [void Function(ClusterVpnPortRangeBuilder)? updates]) =>
      (new ClusterVpnPortRangeBuilder()..update(updates))._build();

  _$ClusterVpnPortRange._({this.fromPort, this.toPort, this.protocol})
      : super._();

  @override
  ClusterVpnPortRange rebuild(
          void Function(ClusterVpnPortRangeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClusterVpnPortRangeBuilder toBuilder() =>
      new ClusterVpnPortRangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClusterVpnPortRange &&
        fromPort == other.fromPort &&
        toPort == other.toPort &&
        protocol == other.protocol;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fromPort.hashCode);
    _$hash = $jc(_$hash, toPort.hashCode);
    _$hash = $jc(_$hash, protocol.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClusterVpnPortRange')
          ..add('fromPort', fromPort)
          ..add('toPort', toPort)
          ..add('protocol', protocol))
        .toString();
  }
}

class ClusterVpnPortRangeBuilder
    implements Builder<ClusterVpnPortRange, ClusterVpnPortRangeBuilder> {
  _$ClusterVpnPortRange? _$v;

  int? _fromPort;
  int? get fromPort => _$this._fromPort;
  set fromPort(int? fromPort) => _$this._fromPort = fromPort;

  int? _toPort;
  int? get toPort => _$this._toPort;
  set toPort(int? toPort) => _$this._toPort = toPort;

  VpnPortRangeProtocol? _protocol;
  VpnPortRangeProtocol? get protocol => _$this._protocol;
  set protocol(VpnPortRangeProtocol? protocol) => _$this._protocol = protocol;

  ClusterVpnPortRangeBuilder() {
    ClusterVpnPortRange._defaults(this);
  }

  ClusterVpnPortRangeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fromPort = $v.fromPort;
      _toPort = $v.toPort;
      _protocol = $v.protocol;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClusterVpnPortRange other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClusterVpnPortRange;
  }

  @override
  void update(void Function(ClusterVpnPortRangeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClusterVpnPortRange build() => _build();

  _$ClusterVpnPortRange _build() {
    final _$result = _$v ??
        new _$ClusterVpnPortRange._(
            fromPort: fromPort, toPort: toPort, protocol: protocol);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
