// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_guard_config_block_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdGuardConfigBlockList extends AdGuardConfigBlockList {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? url;
  @override
  final bool? enabled;

  factory _$AdGuardConfigBlockList(
          [void Function(AdGuardConfigBlockListBuilder)? updates]) =>
      (new AdGuardConfigBlockListBuilder()..update(updates))._build();

  _$AdGuardConfigBlockList._({this.id, this.name, this.url, this.enabled})
      : super._();

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
        id == other.id &&
        name == other.name &&
        url == other.url &&
        enabled == other.enabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdGuardConfigBlockList')
          ..add('id', id)
          ..add('name', name)
          ..add('url', url)
          ..add('enabled', enabled))
        .toString();
  }
}

class AdGuardConfigBlockListBuilder
    implements Builder<AdGuardConfigBlockList, AdGuardConfigBlockListBuilder> {
  _$AdGuardConfigBlockList? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  AdGuardConfigBlockListBuilder() {
    AdGuardConfigBlockList._defaults(this);
  }

  AdGuardConfigBlockListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _url = $v.url;
      _enabled = $v.enabled;
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
    final _$result = _$v ??
        new _$AdGuardConfigBlockList._(
            id: id, name: name, url: url, enabled: enabled);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
