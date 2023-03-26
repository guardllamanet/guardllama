// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_get_server_config_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1GetServerConfigResponse extends V1GetServerConfigResponse {
  @override
  final V1ServerConfig? config;

  factory _$V1GetServerConfigResponse(
          [void Function(V1GetServerConfigResponseBuilder)? updates]) =>
      (new V1GetServerConfigResponseBuilder()..update(updates))._build();

  _$V1GetServerConfigResponse._({this.config}) : super._();

  @override
  V1GetServerConfigResponse rebuild(
          void Function(V1GetServerConfigResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1GetServerConfigResponseBuilder toBuilder() =>
      new V1GetServerConfigResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1GetServerConfigResponse && config == other.config;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1GetServerConfigResponse')
          ..add('config', config))
        .toString();
  }
}

class V1GetServerConfigResponseBuilder
    implements
        Builder<V1GetServerConfigResponse, V1GetServerConfigResponseBuilder> {
  _$V1GetServerConfigResponse? _$v;

  V1ServerConfigBuilder? _config;
  V1ServerConfigBuilder get config =>
      _$this._config ??= new V1ServerConfigBuilder();
  set config(V1ServerConfigBuilder? config) => _$this._config = config;

  V1GetServerConfigResponseBuilder() {
    V1GetServerConfigResponse._defaults(this);
  }

  V1GetServerConfigResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _config = $v.config?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1GetServerConfigResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1GetServerConfigResponse;
  }

  @override
  void update(void Function(V1GetServerConfigResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1GetServerConfigResponse build() => _build();

  _$V1GetServerConfigResponse _build() {
    _$V1GetServerConfigResponse _$result;
    try {
      _$result =
          _$v ?? new _$V1GetServerConfigResponse._(config: _config?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'config';
        _config?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'V1GetServerConfigResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
