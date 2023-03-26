// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_wire_guard_peer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1WireGuardPeer extends V1WireGuardPeer {
  @override
  final String? publicKey;
  @override
  final String? presharedKey;
  @override
  final String? endpoint;
  @override
  final String? persistentKeepaliveInterval;
  @override
  final BuiltList<String>? allowedIps;

  factory _$V1WireGuardPeer([void Function(V1WireGuardPeerBuilder)? updates]) =>
      (new V1WireGuardPeerBuilder()..update(updates))._build();

  _$V1WireGuardPeer._(
      {this.publicKey,
      this.presharedKey,
      this.endpoint,
      this.persistentKeepaliveInterval,
      this.allowedIps})
      : super._();

  @override
  V1WireGuardPeer rebuild(void Function(V1WireGuardPeerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1WireGuardPeerBuilder toBuilder() =>
      new V1WireGuardPeerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1WireGuardPeer &&
        publicKey == other.publicKey &&
        presharedKey == other.presharedKey &&
        endpoint == other.endpoint &&
        persistentKeepaliveInterval == other.persistentKeepaliveInterval &&
        allowedIps == other.allowedIps;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, publicKey.hashCode);
    _$hash = $jc(_$hash, presharedKey.hashCode);
    _$hash = $jc(_$hash, endpoint.hashCode);
    _$hash = $jc(_$hash, persistentKeepaliveInterval.hashCode);
    _$hash = $jc(_$hash, allowedIps.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1WireGuardPeer')
          ..add('publicKey', publicKey)
          ..add('presharedKey', presharedKey)
          ..add('endpoint', endpoint)
          ..add('persistentKeepaliveInterval', persistentKeepaliveInterval)
          ..add('allowedIps', allowedIps))
        .toString();
  }
}

class V1WireGuardPeerBuilder
    implements Builder<V1WireGuardPeer, V1WireGuardPeerBuilder> {
  _$V1WireGuardPeer? _$v;

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

  ListBuilder<String>? _allowedIps;
  ListBuilder<String> get allowedIps =>
      _$this._allowedIps ??= new ListBuilder<String>();
  set allowedIps(ListBuilder<String>? allowedIps) =>
      _$this._allowedIps = allowedIps;

  V1WireGuardPeerBuilder() {
    V1WireGuardPeer._defaults(this);
  }

  V1WireGuardPeerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _publicKey = $v.publicKey;
      _presharedKey = $v.presharedKey;
      _endpoint = $v.endpoint;
      _persistentKeepaliveInterval = $v.persistentKeepaliveInterval;
      _allowedIps = $v.allowedIps?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1WireGuardPeer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1WireGuardPeer;
  }

  @override
  void update(void Function(V1WireGuardPeerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1WireGuardPeer build() => _build();

  _$V1WireGuardPeer _build() {
    _$V1WireGuardPeer _$result;
    try {
      _$result = _$v ??
          new _$V1WireGuardPeer._(
              publicKey: publicKey,
              presharedKey: presharedKey,
              endpoint: endpoint,
              persistentKeepaliveInterval: persistentKeepaliveInterval,
              allowedIps: _allowedIps?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allowedIps';
        _allowedIps?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'V1WireGuardPeer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
