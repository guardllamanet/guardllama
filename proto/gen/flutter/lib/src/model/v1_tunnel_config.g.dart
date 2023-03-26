// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_tunnel_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1TunnelConfig extends V1TunnelConfig {
  @override
  final V1WireGuardConfig? wg;
  @override
  final V1AdGuardConfig? ag;

  factory _$V1TunnelConfig([void Function(V1TunnelConfigBuilder)? updates]) =>
      (new V1TunnelConfigBuilder()..update(updates))._build();

  _$V1TunnelConfig._({this.wg, this.ag}) : super._();

  @override
  V1TunnelConfig rebuild(void Function(V1TunnelConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1TunnelConfigBuilder toBuilder() =>
      new V1TunnelConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1TunnelConfig && wg == other.wg && ag == other.ag;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, wg.hashCode);
    _$hash = $jc(_$hash, ag.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1TunnelConfig')
          ..add('wg', wg)
          ..add('ag', ag))
        .toString();
  }
}

class V1TunnelConfigBuilder
    implements Builder<V1TunnelConfig, V1TunnelConfigBuilder> {
  _$V1TunnelConfig? _$v;

  V1WireGuardConfigBuilder? _wg;
  V1WireGuardConfigBuilder get wg =>
      _$this._wg ??= new V1WireGuardConfigBuilder();
  set wg(V1WireGuardConfigBuilder? wg) => _$this._wg = wg;

  V1AdGuardConfigBuilder? _ag;
  V1AdGuardConfigBuilder get ag => _$this._ag ??= new V1AdGuardConfigBuilder();
  set ag(V1AdGuardConfigBuilder? ag) => _$this._ag = ag;

  V1TunnelConfigBuilder() {
    V1TunnelConfig._defaults(this);
  }

  V1TunnelConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _wg = $v.wg?.toBuilder();
      _ag = $v.ag?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1TunnelConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1TunnelConfig;
  }

  @override
  void update(void Function(V1TunnelConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1TunnelConfig build() => _build();

  _$V1TunnelConfig _build() {
    _$V1TunnelConfig _$result;
    try {
      _$result =
          _$v ?? new _$V1TunnelConfig._(wg: _wg?.build(), ag: _ag?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'wg';
        _wg?.build();
        _$failedField = 'ag';
        _ag?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'V1TunnelConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
