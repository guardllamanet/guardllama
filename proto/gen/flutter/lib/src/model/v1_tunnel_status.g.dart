// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_tunnel_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1TunnelStatus extends V1TunnelStatus {
  @override
  final TunnelStatusState? state;
  @override
  final String? details;
  @override
  final V1WireGuardStatus? wg;
  @override
  final V1AdGuardHomeStatus? agh;

  factory _$V1TunnelStatus([void Function(V1TunnelStatusBuilder)? updates]) =>
      (new V1TunnelStatusBuilder()..update(updates))._build();

  _$V1TunnelStatus._({this.state, this.details, this.wg, this.agh}) : super._();

  @override
  V1TunnelStatus rebuild(void Function(V1TunnelStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1TunnelStatusBuilder toBuilder() =>
      new V1TunnelStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1TunnelStatus &&
        state == other.state &&
        details == other.details &&
        wg == other.wg &&
        agh == other.agh;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jc(_$hash, wg.hashCode);
    _$hash = $jc(_$hash, agh.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1TunnelStatus')
          ..add('state', state)
          ..add('details', details)
          ..add('wg', wg)
          ..add('agh', agh))
        .toString();
  }
}

class V1TunnelStatusBuilder
    implements Builder<V1TunnelStatus, V1TunnelStatusBuilder> {
  _$V1TunnelStatus? _$v;

  TunnelStatusState? _state;
  TunnelStatusState? get state => _$this._state;
  set state(TunnelStatusState? state) => _$this._state = state;

  String? _details;
  String? get details => _$this._details;
  set details(String? details) => _$this._details = details;

  V1WireGuardStatusBuilder? _wg;
  V1WireGuardStatusBuilder get wg =>
      _$this._wg ??= new V1WireGuardStatusBuilder();
  set wg(V1WireGuardStatusBuilder? wg) => _$this._wg = wg;

  V1AdGuardHomeStatusBuilder? _agh;
  V1AdGuardHomeStatusBuilder get agh =>
      _$this._agh ??= new V1AdGuardHomeStatusBuilder();
  set agh(V1AdGuardHomeStatusBuilder? agh) => _$this._agh = agh;

  V1TunnelStatusBuilder() {
    V1TunnelStatus._defaults(this);
  }

  V1TunnelStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
      _details = $v.details;
      _wg = $v.wg?.toBuilder();
      _agh = $v.agh?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1TunnelStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1TunnelStatus;
  }

  @override
  void update(void Function(V1TunnelStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1TunnelStatus build() => _build();

  _$V1TunnelStatus _build() {
    _$V1TunnelStatus _$result;
    try {
      _$result = _$v ??
          new _$V1TunnelStatus._(
              state: state,
              details: details,
              wg: _wg?.build(),
              agh: _agh?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'wg';
        _wg?.build();
        _$failedField = 'agh';
        _agh?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'V1TunnelStatus', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
