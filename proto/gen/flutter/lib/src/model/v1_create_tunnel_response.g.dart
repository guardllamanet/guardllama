// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_create_tunnel_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1CreateTunnelResponse extends V1CreateTunnelResponse {
  @override
  final V1Tunnel? tunnel;

  factory _$V1CreateTunnelResponse(
          [void Function(V1CreateTunnelResponseBuilder)? updates]) =>
      (new V1CreateTunnelResponseBuilder()..update(updates))._build();

  _$V1CreateTunnelResponse._({this.tunnel}) : super._();

  @override
  V1CreateTunnelResponse rebuild(
          void Function(V1CreateTunnelResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1CreateTunnelResponseBuilder toBuilder() =>
      new V1CreateTunnelResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1CreateTunnelResponse && tunnel == other.tunnel;
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
    return (newBuiltValueToStringHelper(r'V1CreateTunnelResponse')
          ..add('tunnel', tunnel))
        .toString();
  }
}

class V1CreateTunnelResponseBuilder
    implements Builder<V1CreateTunnelResponse, V1CreateTunnelResponseBuilder> {
  _$V1CreateTunnelResponse? _$v;

  V1TunnelBuilder? _tunnel;
  V1TunnelBuilder get tunnel => _$this._tunnel ??= new V1TunnelBuilder();
  set tunnel(V1TunnelBuilder? tunnel) => _$this._tunnel = tunnel;

  V1CreateTunnelResponseBuilder() {
    V1CreateTunnelResponse._defaults(this);
  }

  V1CreateTunnelResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tunnel = $v.tunnel?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1CreateTunnelResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1CreateTunnelResponse;
  }

  @override
  void update(void Function(V1CreateTunnelResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1CreateTunnelResponse build() => _build();

  _$V1CreateTunnelResponse _build() {
    _$V1CreateTunnelResponse _$result;
    try {
      _$result =
          _$v ?? new _$V1CreateTunnelResponse._(tunnel: _tunnel?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tunnel';
        _tunnel?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'V1CreateTunnelResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
