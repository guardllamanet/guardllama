// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_server_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1ServerStatus extends V1ServerStatus {
  @override
  final String? machineIp;
  @override
  final String? serverVersion;
  @override
  final String? kubernetesDistribution;
  @override
  final String? kubernetesVersion;

  factory _$V1ServerStatus([void Function(V1ServerStatusBuilder)? updates]) =>
      (new V1ServerStatusBuilder()..update(updates))._build();

  _$V1ServerStatus._(
      {this.machineIp,
      this.serverVersion,
      this.kubernetesDistribution,
      this.kubernetesVersion})
      : super._();

  @override
  V1ServerStatus rebuild(void Function(V1ServerStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1ServerStatusBuilder toBuilder() =>
      new V1ServerStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1ServerStatus &&
        machineIp == other.machineIp &&
        serverVersion == other.serverVersion &&
        kubernetesDistribution == other.kubernetesDistribution &&
        kubernetesVersion == other.kubernetesVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, machineIp.hashCode);
    _$hash = $jc(_$hash, serverVersion.hashCode);
    _$hash = $jc(_$hash, kubernetesDistribution.hashCode);
    _$hash = $jc(_$hash, kubernetesVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1ServerStatus')
          ..add('machineIp', machineIp)
          ..add('serverVersion', serverVersion)
          ..add('kubernetesDistribution', kubernetesDistribution)
          ..add('kubernetesVersion', kubernetesVersion))
        .toString();
  }
}

class V1ServerStatusBuilder
    implements Builder<V1ServerStatus, V1ServerStatusBuilder> {
  _$V1ServerStatus? _$v;

  String? _machineIp;
  String? get machineIp => _$this._machineIp;
  set machineIp(String? machineIp) => _$this._machineIp = machineIp;

  String? _serverVersion;
  String? get serverVersion => _$this._serverVersion;
  set serverVersion(String? serverVersion) =>
      _$this._serverVersion = serverVersion;

  String? _kubernetesDistribution;
  String? get kubernetesDistribution => _$this._kubernetesDistribution;
  set kubernetesDistribution(String? kubernetesDistribution) =>
      _$this._kubernetesDistribution = kubernetesDistribution;

  String? _kubernetesVersion;
  String? get kubernetesVersion => _$this._kubernetesVersion;
  set kubernetesVersion(String? kubernetesVersion) =>
      _$this._kubernetesVersion = kubernetesVersion;

  V1ServerStatusBuilder() {
    V1ServerStatus._defaults(this);
  }

  V1ServerStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _machineIp = $v.machineIp;
      _serverVersion = $v.serverVersion;
      _kubernetesDistribution = $v.kubernetesDistribution;
      _kubernetesVersion = $v.kubernetesVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1ServerStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1ServerStatus;
  }

  @override
  void update(void Function(V1ServerStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1ServerStatus build() => _build();

  _$V1ServerStatus _build() {
    final _$result = _$v ??
        new _$V1ServerStatus._(
            machineIp: machineIp,
            serverVersion: serverVersion,
            kubernetesDistribution: kubernetesDistribution,
            kubernetesVersion: kubernetesVersion);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
