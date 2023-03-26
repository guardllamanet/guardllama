// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_list_tunnels_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1ListTunnelsResponse extends V1ListTunnelsResponse {
  @override
  final BuiltList<V1Tunnel>? tunnels;

  factory _$V1ListTunnelsResponse(
          [void Function(V1ListTunnelsResponseBuilder)? updates]) =>
      (new V1ListTunnelsResponseBuilder()..update(updates))._build();

  _$V1ListTunnelsResponse._({this.tunnels}) : super._();

  @override
  V1ListTunnelsResponse rebuild(
          void Function(V1ListTunnelsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1ListTunnelsResponseBuilder toBuilder() =>
      new V1ListTunnelsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1ListTunnelsResponse && tunnels == other.tunnels;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tunnels.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1ListTunnelsResponse')
          ..add('tunnels', tunnels))
        .toString();
  }
}

class V1ListTunnelsResponseBuilder
    implements Builder<V1ListTunnelsResponse, V1ListTunnelsResponseBuilder> {
  _$V1ListTunnelsResponse? _$v;

  ListBuilder<V1Tunnel>? _tunnels;
  ListBuilder<V1Tunnel> get tunnels =>
      _$this._tunnels ??= new ListBuilder<V1Tunnel>();
  set tunnels(ListBuilder<V1Tunnel>? tunnels) => _$this._tunnels = tunnels;

  V1ListTunnelsResponseBuilder() {
    V1ListTunnelsResponse._defaults(this);
  }

  V1ListTunnelsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tunnels = $v.tunnels?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1ListTunnelsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1ListTunnelsResponse;
  }

  @override
  void update(void Function(V1ListTunnelsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1ListTunnelsResponse build() => _build();

  _$V1ListTunnelsResponse _build() {
    _$V1ListTunnelsResponse _$result;
    try {
      _$result =
          _$v ?? new _$V1ListTunnelsResponse._(tunnels: _tunnels?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tunnels';
        _tunnels?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'V1ListTunnelsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
