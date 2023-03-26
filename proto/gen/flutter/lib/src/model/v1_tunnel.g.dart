// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_tunnel.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1Tunnel extends V1Tunnel {
  @override
  final String name;
  @override
  final V1TunnelConfig? config;
  @override
  final V1TunnelStatus? status;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$V1Tunnel([void Function(V1TunnelBuilder)? updates]) =>
      (new V1TunnelBuilder()..update(updates))._build();

  _$V1Tunnel._(
      {required this.name,
      this.config,
      this.status,
      this.createdAt,
      this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'V1Tunnel', 'name');
  }

  @override
  V1Tunnel rebuild(void Function(V1TunnelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1TunnelBuilder toBuilder() => new V1TunnelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1Tunnel &&
        name == other.name &&
        config == other.config &&
        status == other.status &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1Tunnel')
          ..add('name', name)
          ..add('config', config)
          ..add('status', status)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class V1TunnelBuilder implements Builder<V1Tunnel, V1TunnelBuilder> {
  _$V1Tunnel? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  V1TunnelConfigBuilder? _config;
  V1TunnelConfigBuilder get config =>
      _$this._config ??= new V1TunnelConfigBuilder();
  set config(V1TunnelConfigBuilder? config) => _$this._config = config;

  V1TunnelStatusBuilder? _status;
  V1TunnelStatusBuilder get status =>
      _$this._status ??= new V1TunnelStatusBuilder();
  set status(V1TunnelStatusBuilder? status) => _$this._status = status;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  V1TunnelBuilder() {
    V1Tunnel._defaults(this);
  }

  V1TunnelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _config = $v.config?.toBuilder();
      _status = $v.status?.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1Tunnel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1Tunnel;
  }

  @override
  void update(void Function(V1TunnelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1Tunnel build() => _build();

  _$V1Tunnel _build() {
    _$V1Tunnel _$result;
    try {
      _$result = _$v ??
          new _$V1Tunnel._(
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'V1Tunnel', 'name'),
              config: _config?.build(),
              status: _status?.build(),
              createdAt: createdAt,
              updatedAt: updatedAt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'config';
        _config?.build();
        _$failedField = 'status';
        _status?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'V1Tunnel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
