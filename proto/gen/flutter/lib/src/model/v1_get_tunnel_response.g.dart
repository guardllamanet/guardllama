// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_get_tunnel_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1GetTunnelResponse extends V1GetTunnelResponse {
  @override
  final V1Tunnel? tunnel;

  factory _$V1GetTunnelResponse(
          [void Function(V1GetTunnelResponseBuilder)? updates]) =>
      (new V1GetTunnelResponseBuilder()..update(updates))._build();

  _$V1GetTunnelResponse._({this.tunnel}) : super._();

  @override
  V1GetTunnelResponse rebuild(
          void Function(V1GetTunnelResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1GetTunnelResponseBuilder toBuilder() =>
      new V1GetTunnelResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1GetTunnelResponse && tunnel == other.tunnel;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tunnel.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1GetTunnelResponse')
          ..add('tunnel', tunnel))
        .toString();
  }
}

class V1GetTunnelResponseBuilder
    implements Builder<V1GetTunnelResponse, V1GetTunnelResponseBuilder> {
  _$V1GetTunnelResponse? _$v;

  V1TunnelBuilder? _tunnel;
  V1TunnelBuilder get tunnel => _$this._tunnel ??= new V1TunnelBuilder();
  set tunnel(V1TunnelBuilder? tunnel) => _$this._tunnel = tunnel;

  V1GetTunnelResponseBuilder() {
    V1GetTunnelResponse._defaults(this);
  }

  V1GetTunnelResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tunnel = $v.tunnel?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1GetTunnelResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1GetTunnelResponse;
  }

  @override
  void update(void Function(V1GetTunnelResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1GetTunnelResponse build() => _build();

  _$V1GetTunnelResponse _build() {
    _$V1GetTunnelResponse _$result;
    try {
      _$result = _$v ?? new _$V1GetTunnelResponse._(tunnel: _tunnel?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tunnel';
        _tunnel?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'V1GetTunnelResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
