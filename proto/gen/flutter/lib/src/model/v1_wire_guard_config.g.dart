// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_wire_guard_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1WireGuardConfig extends V1WireGuardConfig {
  @override
  final V1WireGuardInterface? interface_;
  @override
  final BuiltList<V1WireGuardPeer>? peers;
  @override
  final String? wgConfig;

  factory _$V1WireGuardConfig(
          [void Function(V1WireGuardConfigBuilder)? updates]) =>
      (new V1WireGuardConfigBuilder()..update(updates))._build();

  _$V1WireGuardConfig._({this.interface_, this.peers, this.wgConfig})
      : super._();

  @override
  V1WireGuardConfig rebuild(void Function(V1WireGuardConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1WireGuardConfigBuilder toBuilder() =>
      new V1WireGuardConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1WireGuardConfig &&
        interface_ == other.interface_ &&
        peers == other.peers &&
        wgConfig == other.wgConfig;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, interface_.hashCode);
    _$hash = $jc(_$hash, peers.hashCode);
    _$hash = $jc(_$hash, wgConfig.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1WireGuardConfig')
          ..add('interface_', interface_)
          ..add('peers', peers)
          ..add('wgConfig', wgConfig))
        .toString();
  }
}

class V1WireGuardConfigBuilder
    implements Builder<V1WireGuardConfig, V1WireGuardConfigBuilder> {
  _$V1WireGuardConfig? _$v;

  V1WireGuardInterfaceBuilder? _interface_;
  V1WireGuardInterfaceBuilder get interface_ =>
      _$this._interface_ ??= new V1WireGuardInterfaceBuilder();
  set interface_(V1WireGuardInterfaceBuilder? interface_) =>
      _$this._interface_ = interface_;

  ListBuilder<V1WireGuardPeer>? _peers;
  ListBuilder<V1WireGuardPeer> get peers =>
      _$this._peers ??= new ListBuilder<V1WireGuardPeer>();
  set peers(ListBuilder<V1WireGuardPeer>? peers) => _$this._peers = peers;

  String? _wgConfig;
  String? get wgConfig => _$this._wgConfig;
  set wgConfig(String? wgConfig) => _$this._wgConfig = wgConfig;

  V1WireGuardConfigBuilder() {
    V1WireGuardConfig._defaults(this);
  }

  V1WireGuardConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _interface_ = $v.interface_?.toBuilder();
      _peers = $v.peers?.toBuilder();
      _wgConfig = $v.wgConfig;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1WireGuardConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1WireGuardConfig;
  }

  @override
  void update(void Function(V1WireGuardConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1WireGuardConfig build() => _build();

  _$V1WireGuardConfig _build() {
    _$V1WireGuardConfig _$result;
    try {
      _$result = _$v ??
          new _$V1WireGuardConfig._(
              interface_: _interface_?.build(),
              peers: _peers?.build(),
              wgConfig: wgConfig);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'interface_';
        _interface_?.build();
        _$failedField = 'peers';
        _peers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'V1WireGuardConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
