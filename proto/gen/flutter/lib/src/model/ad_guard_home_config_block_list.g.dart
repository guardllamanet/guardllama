// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_guard_home_config_block_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdGuardHomeConfigBlockList extends AdGuardHomeConfigBlockList {
  @override
  final String? name;
  @override
  final String? url;

  factory _$AdGuardHomeConfigBlockList(
          [void Function(AdGuardHomeConfigBlockListBuilder)? updates]) =>
      (new AdGuardHomeConfigBlockListBuilder()..update(updates))._build();

  _$AdGuardHomeConfigBlockList._({this.name, this.url}) : super._();

  @override
  AdGuardHomeConfigBlockList rebuild(
          void Function(AdGuardHomeConfigBlockListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdGuardHomeConfigBlockListBuilder toBuilder() =>
      new AdGuardHomeConfigBlockListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdGuardHomeConfigBlockList &&
        name == other.name &&
        url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdGuardHomeConfigBlockList')
          ..add('name', name)
          ..add('url', url))
        .toString();
  }
}

class AdGuardHomeConfigBlockListBuilder
    implements
        Builder<AdGuardHomeConfigBlockList, AdGuardHomeConfigBlockListBuilder> {
  _$AdGuardHomeConfigBlockList? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  AdGuardHomeConfigBlockListBuilder() {
    AdGuardHomeConfigBlockList._defaults(this);
  }

  AdGuardHomeConfigBlockListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdGuardHomeConfigBlockList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AdGuardHomeConfigBlockList;
  }

  @override
  void update(void Function(AdGuardHomeConfigBlockListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdGuardHomeConfigBlockList build() => _build();

  _$AdGuardHomeConfigBlockList _build() {
    final _$result =
        _$v ?? new _$AdGuardHomeConfigBlockList._(name: name, url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
