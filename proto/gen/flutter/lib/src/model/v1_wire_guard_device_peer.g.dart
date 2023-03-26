// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_wire_guard_device_peer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1WireGuardDevicePeer extends V1WireGuardDevicePeer {
  @override
  final String? publicKey;
  @override
  final String? presharedKey;
  @override
  final String? endpoint;
  @override
  final String? persistentKeepaliveInterval;
  @override
  final DateTime? lastHandshakeTime;
  @override
  final String? receiveBytes;
  @override
  final String? transmitBytes;
  @override
  final BuiltList<String>? allowedIps;
  @override
  final int? protocolVersion;

  factory _$V1WireGuardDevicePeer(
          [void Function(V1WireGuardDevicePeerBuilder)? updates]) =>
      (new V1WireGuardDevicePeerBuilder()..update(updates))._build();

  _$V1WireGuardDevicePeer._(
      {this.publicKey,
      this.presharedKey,
      this.endpoint,
      this.persistentKeepaliveInterval,
      this.lastHandshakeTime,
      this.receiveBytes,
      this.transmitBytes,
      this.allowedIps,
      this.protocolVersion})
      : super._();

  @override
  V1WireGuardDevicePeer rebuild(
          void Function(V1WireGuardDevicePeerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1WireGuardDevicePeerBuilder toBuilder() =>
      new V1WireGuardDevicePeerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1WireGuardDevicePeer &&
        publicKey == other.publicKey &&
        presharedKey == other.presharedKey &&
        endpoint == other.endpoint &&
        persistentKeepaliveInterval == other.persistentKeepaliveInterval &&
        lastHandshakeTime == other.lastHandshakeTime &&
        receiveBytes == other.receiveBytes &&
        transmitBytes == other.transmitBytes &&
        allowedIps == other.allowedIps &&
        protocolVersion == other.protocolVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, publicKey.hashCode);
    _$hash = $jc(_$hash, presharedKey.hashCode);
    _$hash = $jc(_$hash, endpoint.hashCode);
    _$hash = $jc(_$hash, persistentKeepaliveInterval.hashCode);
    _$hash = $jc(_$hash, lastHandshakeTime.hashCode);
    _$hash = $jc(_$hash, receiveBytes.hashCode);
    _$hash = $jc(_$hash, transmitBytes.hashCode);
    _$hash = $jc(_$hash, allowedIps.hashCode);
    _$hash = $jc(_$hash, protocolVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1WireGuardDevicePeer')
          ..add('publicKey', publicKey)
          ..add('presharedKey', presharedKey)
          ..add('endpoint', endpoint)
          ..add('persistentKeepaliveInterval', persistentKeepaliveInterval)
          ..add('lastHandshakeTime', lastHandshakeTime)
          ..add('receiveBytes', receiveBytes)
          ..add('transmitBytes', transmitBytes)
          ..add('allowedIps', allowedIps)
          ..add('protocolVersion', protocolVersion))
        .toString();
  }
}

class V1WireGuardDevicePeerBuilder
    implements Builder<V1WireGuardDevicePeer, V1WireGuardDevicePeerBuilder> {
  _$V1WireGuardDevicePeer? _$v;

  String? _publicKey;
  String? get publicKey => _$this._publicKey;
  set publicKey(String? publicKey) => _$this._publicKey = publicKey;

  String? _presharedKey;
  String? get presharedKey => _$this._presharedKey;
  set presharedKey(String? presharedKey) => _$this._presharedKey = presharedKey;

  String? _endpoint;
  String? get endpoint => _$this._endpoint;
  set endpoint(String? endpoint) => _$this._endpoint = endpoint;

  String? _persistentKeepaliveInterval;
  String? get persistentKeepaliveInterval =>
      _$this._persistentKeepaliveInterval;
  set persistentKeepaliveInterval(String? persistentKeepaliveInterval) =>
      _$this._persistentKeepaliveInterval = persistentKeepaliveInterval;

  DateTime? _lastHandshakeTime;
  DateTime? get lastHandshakeTime => _$this._lastHandshakeTime;
  set lastHandshakeTime(DateTime? lastHandshakeTime) =>
      _$this._lastHandshakeTime = lastHandshakeTime;

  String? _receiveBytes;
  String? get receiveBytes => _$this._receiveBytes;
  set receiveBytes(String? receiveBytes) => _$this._receiveBytes = receiveBytes;

  String? _transmitBytes;
  String? get transmitBytes => _$this._transmitBytes;
  set transmitBytes(String? transmitBytes) =>
      _$this._transmitBytes = transmitBytes;

  ListBuilder<String>? _allowedIps;
  ListBuilder<String> get allowedIps =>
      _$this._allowedIps ??= new ListBuilder<String>();
  set allowedIps(ListBuilder<String>? allowedIps) =>
      _$this._allowedIps = allowedIps;

  int? _protocolVersion;
  int? get protocolVersion => _$this._protocolVersion;
  set protocolVersion(int? protocolVersion) =>
      _$this._protocolVersion = protocolVersion;

  V1WireGuardDevicePeerBuilder() {
    V1WireGuardDevicePeer._defaults(this);
  }

  V1WireGuardDevicePeerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _publicKey = $v.publicKey;
      _presharedKey = $v.presharedKey;
      _endpoint = $v.endpoint;
      _persistentKeepaliveInterval = $v.persistentKeepaliveInterval;
      _lastHandshakeTime = $v.lastHandshakeTime;
      _receiveBytes = $v.receiveBytes;
      _transmitBytes = $v.transmitBytes;
      _allowedIps = $v.allowedIps?.toBuilder();
      _protocolVersion = $v.protocolVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1WireGuardDevicePeer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1WireGuardDevicePeer;
  }

  @override
  void update(void Function(V1WireGuardDevicePeerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1WireGuardDevicePeer build() => _build();

  _$V1WireGuardDevicePeer _build() {
    _$V1WireGuardDevicePeer _$result;
    try {
      _$result = _$v ??
          new _$V1WireGuardDevicePeer._(
              publicKey: publicKey,
              presharedKey: presharedKey,
              endpoint: endpoint,
              persistentKeepaliveInterval: persistentKeepaliveInterval,
              lastHandshakeTime: lastHandshakeTime,
              receiveBytes: receiveBytes,
              transmitBytes: transmitBytes,
              allowedIps: _allowedIps?.build(),
              protocolVersion: protocolVersion);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allowedIps';
        _allowedIps?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'V1WireGuardDevicePeer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
