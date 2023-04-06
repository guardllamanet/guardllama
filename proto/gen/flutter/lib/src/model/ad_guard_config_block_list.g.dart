// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_guard_config_block_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdGuardConfigBlockList extends AdGuardConfigBlockList {
  @override
  final String? name;
  @override
  final String? url;

  factory _$AdGuardConfigBlockList(
          [void Function(AdGuardConfigBlockListBuilder)? updates]) =>
      (new AdGuardConfigBlockListBuilder()..update(updates))._build();

  _$AdGuardConfigBlockList._({this.name, this.url}) : super._();

  @override
  AdGuardConfigBlockList rebuild(
          void Function(AdGuardConfigBlockListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdGuardConfigBlockListBuilder toBuilder() =>
      new AdGuardConfigBlockListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdGuardConfigBlockList &&
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
    return (newBuiltValueToStringHelper(r'AdGuardConfigBlockList')
          ..add('name', name)
          ..add('url', url))
        .toString();
  }
}

class AdGuardConfigBlockListBuilder
    implements Builder<AdGuardConfigBlockList, AdGuardConfigBlockListBuilder> {
  _$AdGuardConfigBlockList? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  AdGuardConfigBlockListBuilder() {
    AdGuardConfigBlockList._defaults(this);
  }

  AdGuardConfigBlockListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdGuardConfigBlockList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AdGuardConfigBlockList;
  }

  @override
  void update(void Function(AdGuardConfigBlockListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdGuardConfigBlockList build() => _build();

  _$AdGuardConfigBlockList _build() {
    final _$result =
        _$v ?? new _$AdGuardConfigBlockList._(name: name, url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
