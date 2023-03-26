// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_log_client.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QueryLogClient extends QueryLogClient {
  @override
  final String address;
  @override
  final String name;

  factory _$QueryLogClient([void Function(QueryLogClientBuilder)? updates]) =>
      (new QueryLogClientBuilder()..update(updates))._build();

  _$QueryLogClient._({required this.address, required this.name}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        address, r'QueryLogClient', 'address');
    BuiltValueNullFieldError.checkNotNull(name, r'QueryLogClient', 'name');
  }

  @override
  QueryLogClient rebuild(void Function(QueryLogClientBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QueryLogClientBuilder toBuilder() =>
      new QueryLogClientBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QueryLogClient &&
        address == other.address &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QueryLogClient')
          ..add('address', address)
          ..add('name', name))
        .toString();
  }
}

class QueryLogClientBuilder
    implements Builder<QueryLogClient, QueryLogClientBuilder> {
  _$QueryLogClient? _$v;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  QueryLogClientBuilder() {
    QueryLogClient._defaults(this);
  }

  QueryLogClientBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QueryLogClient other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QueryLogClient;
  }

  @override
  void update(void Function(QueryLogClientBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QueryLogClient build() => _build();

  _$QueryLogClient _build() {
    final _$result = _$v ??
        new _$QueryLogClient._(
            address: BuiltValueNullFieldError.checkNotNull(
                address, r'QueryLogClient', 'address'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'QueryLogClient', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
