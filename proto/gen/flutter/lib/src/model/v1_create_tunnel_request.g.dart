// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_create_tunnel_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1CreateTunnelRequest extends V1CreateTunnelRequest {
  @override
  final String? name;
  @override
  final V1AdGuardHomeConfig? agh;

  factory _$V1CreateTunnelRequest(
          [void Function(V1CreateTunnelRequestBuilder)? updates]) =>
      (new V1CreateTunnelRequestBuilder()..update(updates))._build();

  _$V1CreateTunnelRequest._({this.name, this.agh}) : super._();

  @override
  V1CreateTunnelRequest rebuild(
          void Function(V1CreateTunnelRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1CreateTunnelRequestBuilder toBuilder() =>
      new V1CreateTunnelRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1CreateTunnelRequest &&
        name == other.name &&
        agh == other.agh;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, agh.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1CreateTunnelRequest')
          ..add('name', name)
          ..add('agh', agh))
        .toString();
  }
}

class V1CreateTunnelRequestBuilder
    implements Builder<V1CreateTunnelRequest, V1CreateTunnelRequestBuilder> {
  _$V1CreateTunnelRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  V1AdGuardHomeConfigBuilder? _agh;
  V1AdGuardHomeConfigBuilder get agh =>
      _$this._agh ??= new V1AdGuardHomeConfigBuilder();
  set agh(V1AdGuardHomeConfigBuilder? agh) => _$this._agh = agh;

  V1CreateTunnelRequestBuilder() {
    V1CreateTunnelRequest._defaults(this);
  }

  V1CreateTunnelRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _agh = $v.agh?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1CreateTunnelRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1CreateTunnelRequest;
  }

  @override
  void update(void Function(V1CreateTunnelRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1CreateTunnelRequest build() => _build();

  _$V1CreateTunnelRequest _build() {
    _$V1CreateTunnelRequest _$result;
    try {
      _$result =
          _$v ?? new _$V1CreateTunnelRequest._(name: name, agh: _agh?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'agh';
        _agh?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'V1CreateTunnelRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
