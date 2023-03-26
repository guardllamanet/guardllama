// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_wire_guard_device.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1WireGuardDevice extends V1WireGuardDevice {
  @override
  final String? name;
  @override
  final WireGuardDeviceDeviceType? type;
  @override
  final String? publicKey;
  @override
  final int? listenPort;
  @override
  final int? firewallMark;
  @override
  final BuiltList<V1WireGuardDevicePeer>? peers;

  factory _$V1WireGuardDevice(
          [void Function(V1WireGuardDeviceBuilder)? updates]) =>
      (new V1WireGuardDeviceBuilder()..update(updates))._build();

  _$V1WireGuardDevice._(
      {this.name,
      this.type,
      this.publicKey,
      this.listenPort,
      this.firewallMark,
      this.peers})
      : super._();

  @override
  V1WireGuardDevice rebuild(void Function(V1WireGuardDeviceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1WireGuardDeviceBuilder toBuilder() =>
      new V1WireGuardDeviceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1WireGuardDevice &&
        name == other.name &&
        type == other.type &&
        publicKey == other.publicKey &&
        listenPort == other.listenPort &&
        firewallMark == other.firewallMark &&
        peers == other.peers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, publicKey.hashCode);
    _$hash = $jc(_$hash, listenPort.hashCode);
    _$hash = $jc(_$hash, firewallMark.hashCode);
    _$hash = $jc(_$hash, peers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1WireGuardDevice')
          ..add('name', name)
          ..add('type', type)
          ..add('publicKey', publicKey)
          ..add('listenPort', listenPort)
          ..add('firewallMark', firewallMark)
          ..add('peers', peers))
        .toString();
  }
}

class V1WireGuardDeviceBuilder
    implements Builder<V1WireGuardDevice, V1WireGuardDeviceBuilder> {
  _$V1WireGuardDevice? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  WireGuardDeviceDeviceType? _type;
  WireGuardDeviceDeviceType? get type => _$this._type;
  set type(WireGuardDeviceDeviceType? type) => _$this._type = type;

  String? _publicKey;
  String? get publicKey => _$this._publicKey;
  set publicKey(String? publicKey) => _$this._publicKey = publicKey;

  int? _listenPort;
  int? get listenPort => _$this._listenPort;
  set listenPort(int? listenPort) => _$this._listenPort = listenPort;

  int? _firewallMark;
  int? get firewallMark => _$this._firewallMark;
  set firewallMark(int? firewallMark) => _$this._firewallMark = firewallMark;

  ListBuilder<V1WireGuardDevicePeer>? _peers;
  ListBuilder<V1WireGuardDevicePeer> get peers =>
      _$this._peers ??= new ListBuilder<V1WireGuardDevicePeer>();
  set peers(ListBuilder<V1WireGuardDevicePeer>? peers) => _$this._peers = peers;

  V1WireGuardDeviceBuilder() {
    V1WireGuardDevice._defaults(this);
  }

  V1WireGuardDeviceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _type = $v.type;
      _publicKey = $v.publicKey;
      _listenPort = $v.listenPort;
      _firewallMark = $v.firewallMark;
      _peers = $v.peers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1WireGuardDevice other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1WireGuardDevice;
  }

  @override
  void update(void Function(V1WireGuardDeviceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1WireGuardDevice build() => _build();

  _$V1WireGuardDevice _build() {
    _$V1WireGuardDevice _$result;
    try {
      _$result = _$v ??
          new _$V1WireGuardDevice._(
              name: name,
              type: type,
              publicKey: publicKey,
              listenPort: listenPort,
              firewallMark: firewallMark,
              peers: _peers?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'peers';
        _peers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'V1WireGuardDevice', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
