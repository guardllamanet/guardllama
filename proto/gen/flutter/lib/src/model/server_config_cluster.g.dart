// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_config_cluster.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServerConfigCluster extends ServerConfigCluster {
  @override
  final String? kubeConfig;
  @override
  final JsonObject? k3s;
  @override
  final ClusterK3d? k3d;
  @override
  final String? host;

  factory _$ServerConfigCluster(
          [void Function(ServerConfigClusterBuilder)? updates]) =>
      (new ServerConfigClusterBuilder()..update(updates))._build();

  _$ServerConfigCluster._({this.kubeConfig, this.k3s, this.k3d, this.host})
      : super._();

  @override
  ServerConfigCluster rebuild(
          void Function(ServerConfigClusterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServerConfigClusterBuilder toBuilder() =>
      new ServerConfigClusterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServerConfigCluster &&
        kubeConfig == other.kubeConfig &&
        k3s == other.k3s &&
        k3d == other.k3d &&
        host == other.host;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kubeConfig.hashCode);
    _$hash = $jc(_$hash, k3s.hashCode);
    _$hash = $jc(_$hash, k3d.hashCode);
    _$hash = $jc(_$hash, host.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServerConfigCluster')
          ..add('kubeConfig', kubeConfig)
          ..add('k3s', k3s)
          ..add('k3d', k3d)
          ..add('host', host))
        .toString();
  }
}

class ServerConfigClusterBuilder
    implements Builder<ServerConfigCluster, ServerConfigClusterBuilder> {
  _$ServerConfigCluster? _$v;

  String? _kubeConfig;
  String? get kubeConfig => _$this._kubeConfig;
  set kubeConfig(String? kubeConfig) => _$this._kubeConfig = kubeConfig;

  JsonObject? _k3s;
  JsonObject? get k3s => _$this._k3s;
  set k3s(JsonObject? k3s) => _$this._k3s = k3s;

  ClusterK3dBuilder? _k3d;
  ClusterK3dBuilder get k3d => _$this._k3d ??= new ClusterK3dBuilder();
  set k3d(ClusterK3dBuilder? k3d) => _$this._k3d = k3d;

  String? _host;
  String? get host => _$this._host;
  set host(String? host) => _$this._host = host;

  ServerConfigClusterBuilder() {
    ServerConfigCluster._defaults(this);
  }

  ServerConfigClusterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kubeConfig = $v.kubeConfig;
      _k3s = $v.k3s;
      _k3d = $v.k3d?.toBuilder();
      _host = $v.host;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServerConfigCluster other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServerConfigCluster;
  }

  @override
  void update(void Function(ServerConfigClusterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServerConfigCluster build() => _build();

  _$ServerConfigCluster _build() {
    _$ServerConfigCluster _$result;
    try {
      _$result = _$v ??
          new _$ServerConfigCluster._(
              kubeConfig: kubeConfig, k3s: k3s, k3d: _k3d?.build(), host: host);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'k3d';
        _k3d?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ServerConfigCluster', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
