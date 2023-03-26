// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_wire_guard_interface.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1WireGuardInterface extends V1WireGuardInterface {
  @override
  final String? privateKey;
  @override
  final int? listenPort;
  @override
  final int? ingressPort;
  @override
  final int? firewallMark;
  @override
  final BuiltList<String>? address;
  @override
  final BuiltList<String>? dns;
  @override
  final int? mtu;
  @override
  final int? table;
  @override
  final String? preUp;
  @override
  final String? postUp;
  @override
  final String? preDown;
  @override
  final String? postDown;

  factory _$V1WireGuardInterface(
          [void Function(V1WireGuardInterfaceBuilder)? updates]) =>
      (new V1WireGuardInterfaceBuilder()..update(updates))._build();

  _$V1WireGuardInterface._(
      {this.privateKey,
      this.listenPort,
      this.ingressPort,
      this.firewallMark,
      this.address,
      this.dns,
      this.mtu,
      this.table,
      this.preUp,
      this.postUp,
      this.preDown,
      this.postDown})
      : super._();

  @override
  V1WireGuardInterface rebuild(
          void Function(V1WireGuardInterfaceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1WireGuardInterfaceBuilder toBuilder() =>
      new V1WireGuardInterfaceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1WireGuardInterface &&
        privateKey == other.privateKey &&
        listenPort == other.listenPort &&
        ingressPort == other.ingressPort &&
        firewallMark == other.firewallMark &&
        address == other.address &&
        dns == other.dns &&
        mtu == other.mtu &&
        table == other.table &&
        preUp == other.preUp &&
        postUp == other.postUp &&
        preDown == other.preDown &&
        postDown == other.postDown;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, privateKey.hashCode);
    _$hash = $jc(_$hash, listenPort.hashCode);
    _$hash = $jc(_$hash, ingressPort.hashCode);
    _$hash = $jc(_$hash, firewallMark.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, dns.hashCode);
    _$hash = $jc(_$hash, mtu.hashCode);
    _$hash = $jc(_$hash, table.hashCode);
    _$hash = $jc(_$hash, preUp.hashCode);
    _$hash = $jc(_$hash, postUp.hashCode);
    _$hash = $jc(_$hash, preDown.hashCode);
    _$hash = $jc(_$hash, postDown.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1WireGuardInterface')
          ..add('privateKey', privateKey)
          ..add('listenPort', listenPort)
          ..add('ingressPort', ingressPort)
          ..add('firewallMark', firewallMark)
          ..add('address', address)
          ..add('dns', dns)
          ..add('mtu', mtu)
          ..add('table', table)
          ..add('preUp', preUp)
          ..add('postUp', postUp)
          ..add('preDown', preDown)
          ..add('postDown', postDown))
        .toString();
  }
}

class V1WireGuardInterfaceBuilder
    implements Builder<V1WireGuardInterface, V1WireGuardInterfaceBuilder> {
  _$V1WireGuardInterface? _$v;

  String? _privateKey;
  String? get privateKey => _$this._privateKey;
  set privateKey(String? privateKey) => _$this._privateKey = privateKey;

  int? _listenPort;
  int? get listenPort => _$this._listenPort;
  set listenPort(int? listenPort) => _$this._listenPort = listenPort;

  int? _ingressPort;
  int? get ingressPort => _$this._ingressPort;
  set ingressPort(int? ingressPort) => _$this._ingressPort = ingressPort;

  int? _firewallMark;
  int? get firewallMark => _$this._firewallMark;
  set firewallMark(int? firewallMark) => _$this._firewallMark = firewallMark;

  ListBuilder<String>? _address;
  ListBuilder<String> get address =>
      _$this._address ??= new ListBuilder<String>();
  set address(ListBuilder<String>? address) => _$this._address = address;

  ListBuilder<String>? _dns;
  ListBuilder<String> get dns => _$this._dns ??= new ListBuilder<String>();
  set dns(ListBuilder<String>? dns) => _$this._dns = dns;

  int? _mtu;
  int? get mtu => _$this._mtu;
  set mtu(int? mtu) => _$this._mtu = mtu;

  int? _table;
  int? get table => _$this._table;
  set table(int? table) => _$this._table = table;

  String? _preUp;
  String? get preUp => _$this._preUp;
  set preUp(String? preUp) => _$this._preUp = preUp;

  String? _postUp;
  String? get postUp => _$this._postUp;
  set postUp(String? postUp) => _$this._postUp = postUp;

  String? _preDown;
  String? get preDown => _$this._preDown;
  set preDown(String? preDown) => _$this._preDown = preDown;

  String? _postDown;
  String? get postDown => _$this._postDown;
  set postDown(String? postDown) => _$this._postDown = postDown;

  V1WireGuardInterfaceBuilder() {
    V1WireGuardInterface._defaults(this);
  }

  V1WireGuardInterfaceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _privateKey = $v.privateKey;
      _listenPort = $v.listenPort;
      _ingressPort = $v.ingressPort;
      _firewallMark = $v.firewallMark;
      _address = $v.address?.toBuilder();
      _dns = $v.dns?.toBuilder();
      _mtu = $v.mtu;
      _table = $v.table;
      _preUp = $v.preUp;
      _postUp = $v.postUp;
      _preDown = $v.preDown;
      _postDown = $v.postDown;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1WireGuardInterface other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1WireGuardInterface;
  }

  @override
  void update(void Function(V1WireGuardInterfaceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1WireGuardInterface build() => _build();

  _$V1WireGuardInterface _build() {
    _$V1WireGuardInterface _$result;
    try {
      _$result = _$v ??
          new _$V1WireGuardInterface._(
              privateKey: privateKey,
              listenPort: listenPort,
              ingressPort: ingressPort,
              firewallMark: firewallMark,
              address: _address?.build(),
              dns: _dns?.build(),
              mtu: mtu,
              table: table,
              preUp: preUp,
              postUp: postUp,
              preDown: preDown,
              postDown: postDown);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        _address?.build();
        _$failedField = 'dns';
        _dns?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'V1WireGuardInterface', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
