// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_server_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1ServerConfig extends V1ServerConfig {
  @override
  final ServerConfigCluster? cluster;
  @override
  final ServerConfigImage? manager;
  @override
  final ServerConfigImage? wg;
  @override
  final V1ServerConfigCredentials? credentials;
  @override
  final bool? debug;

  factory _$V1ServerConfig([void Function(V1ServerConfigBuilder)? updates]) =>
      (new V1ServerConfigBuilder()..update(updates))._build();

  _$V1ServerConfig._(
      {this.cluster, this.manager, this.wg, this.credentials, this.debug})
      : super._();

  @override
  V1ServerConfig rebuild(void Function(V1ServerConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1ServerConfigBuilder toBuilder() =>
      new V1ServerConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1ServerConfig &&
        cluster == other.cluster &&
        manager == other.manager &&
        wg == other.wg &&
        credentials == other.credentials &&
        debug == other.debug;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cluster.hashCode);
    _$hash = $jc(_$hash, manager.hashCode);
    _$hash = $jc(_$hash, wg.hashCode);
    _$hash = $jc(_$hash, credentials.hashCode);
    _$hash = $jc(_$hash, debug.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1ServerConfig')
          ..add('cluster', cluster)
          ..add('manager', manager)
          ..add('wg', wg)
          ..add('credentials', credentials)
          ..add('debug', debug))
        .toString();
  }
}

class V1ServerConfigBuilder
    implements Builder<V1ServerConfig, V1ServerConfigBuilder> {
  _$V1ServerConfig? _$v;

  ServerConfigClusterBuilder? _cluster;
  ServerConfigClusterBuilder get cluster =>
      _$this._cluster ??= new ServerConfigClusterBuilder();
  set cluster(ServerConfigClusterBuilder? cluster) => _$this._cluster = cluster;

  ServerConfigImageBuilder? _manager;
  ServerConfigImageBuilder get manager =>
      _$this._manager ??= new ServerConfigImageBuilder();
  set manager(ServerConfigImageBuilder? manager) => _$this._manager = manager;

  ServerConfigImageBuilder? _wg;
  ServerConfigImageBuilder get wg =>
      _$this._wg ??= new ServerConfigImageBuilder();
  set wg(ServerConfigImageBuilder? wg) => _$this._wg = wg;

  V1ServerConfigCredentialsBuilder? _credentials;
  V1ServerConfigCredentialsBuilder get credentials =>
      _$this._credentials ??= new V1ServerConfigCredentialsBuilder();
  set credentials(V1ServerConfigCredentialsBuilder? credentials) =>
      _$this._credentials = credentials;

  bool? _debug;
  bool? get debug => _$this._debug;
  set debug(bool? debug) => _$this._debug = debug;

  V1ServerConfigBuilder() {
    V1ServerConfig._defaults(this);
  }

  V1ServerConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cluster = $v.cluster?.toBuilder();
      _manager = $v.manager?.toBuilder();
      _wg = $v.wg?.toBuilder();
      _credentials = $v.credentials?.toBuilder();
      _debug = $v.debug;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1ServerConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1ServerConfig;
  }

  @override
  void update(void Function(V1ServerConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1ServerConfig build() => _build();

  _$V1ServerConfig _build() {
    _$V1ServerConfig _$result;
    try {
      _$result = _$v ??
          new _$V1ServerConfig._(
              cluster: _cluster?.build(),
              manager: _manager?.build(),
              wg: _wg?.build(),
              credentials: _credentials?.build(),
              debug: debug);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cluster';
        _cluster?.build();
        _$failedField = 'manager';
        _manager?.build();
        _$failedField = 'wg';
        _wg?.build();
        _$failedField = 'credentials';
        _credentials?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'V1ServerConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
