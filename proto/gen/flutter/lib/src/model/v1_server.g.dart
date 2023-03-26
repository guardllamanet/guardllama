// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_server.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1Server extends V1Server {
  @override
  final V1ServerConfig? config;
  @override
  final V1ServerStatus? status;

  factory _$V1Server([void Function(V1ServerBuilder)? updates]) =>
      (new V1ServerBuilder()..update(updates))._build();

  _$V1Server._({this.config, this.status}) : super._();

  @override
  V1Server rebuild(void Function(V1ServerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1ServerBuilder toBuilder() => new V1ServerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1Server &&
        config == other.config &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1Server')
          ..add('config', config)
          ..add('status', status))
        .toString();
  }
}

class V1ServerBuilder implements Builder<V1Server, V1ServerBuilder> {
  _$V1Server? _$v;

  V1ServerConfigBuilder? _config;
  V1ServerConfigBuilder get config =>
      _$this._config ??= new V1ServerConfigBuilder();
  set config(V1ServerConfigBuilder? config) => _$this._config = config;

  V1ServerStatusBuilder? _status;
  V1ServerStatusBuilder get status =>
      _$this._status ??= new V1ServerStatusBuilder();
  set status(V1ServerStatusBuilder? status) => _$this._status = status;

  V1ServerBuilder() {
    V1Server._defaults(this);
  }

  V1ServerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _config = $v.config?.toBuilder();
      _status = $v.status?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1Server other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1Server;
  }

  @override
  void update(void Function(V1ServerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1Server build() => _build();

  _$V1Server _build() {
    _$V1Server _$result;
    try {
      _$result = _$v ??
          new _$V1Server._(config: _config?.build(), status: _status?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'config';
        _config?.build();
        _$failedField = 'status';
        _status?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'V1Server', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
