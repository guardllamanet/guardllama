// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_ad_guard_home_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1AdGuardHomeConfig extends V1AdGuardHomeConfig {
  @override
  final bool? filteringEnabled;
  @override
  final BuiltList<AdGuardHomeConfigBlockList>? blockLists;

  factory _$V1AdGuardHomeConfig(
          [void Function(V1AdGuardHomeConfigBuilder)? updates]) =>
      (new V1AdGuardHomeConfigBuilder()..update(updates))._build();

  _$V1AdGuardHomeConfig._({this.filteringEnabled, this.blockLists}) : super._();

  @override
  V1AdGuardHomeConfig rebuild(
          void Function(V1AdGuardHomeConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1AdGuardHomeConfigBuilder toBuilder() =>
      new V1AdGuardHomeConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1AdGuardHomeConfig &&
        filteringEnabled == other.filteringEnabled &&
        blockLists == other.blockLists;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filteringEnabled.hashCode);
    _$hash = $jc(_$hash, blockLists.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1AdGuardHomeConfig')
          ..add('filteringEnabled', filteringEnabled)
          ..add('blockLists', blockLists))
        .toString();
  }
}

class V1AdGuardHomeConfigBuilder
    implements Builder<V1AdGuardHomeConfig, V1AdGuardHomeConfigBuilder> {
  _$V1AdGuardHomeConfig? _$v;

  bool? _filteringEnabled;
  bool? get filteringEnabled => _$this._filteringEnabled;
  set filteringEnabled(bool? filteringEnabled) =>
      _$this._filteringEnabled = filteringEnabled;

  ListBuilder<AdGuardHomeConfigBlockList>? _blockLists;
  ListBuilder<AdGuardHomeConfigBlockList> get blockLists =>
      _$this._blockLists ??= new ListBuilder<AdGuardHomeConfigBlockList>();
  set blockLists(ListBuilder<AdGuardHomeConfigBlockList>? blockLists) =>
      _$this._blockLists = blockLists;

  V1AdGuardHomeConfigBuilder() {
    V1AdGuardHomeConfig._defaults(this);
  }

  V1AdGuardHomeConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filteringEnabled = $v.filteringEnabled;
      _blockLists = $v.blockLists?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1AdGuardHomeConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1AdGuardHomeConfig;
  }

  @override
  void update(void Function(V1AdGuardHomeConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1AdGuardHomeConfig build() => _build();

  _$V1AdGuardHomeConfig _build() {
    _$V1AdGuardHomeConfig _$result;
    try {
      _$result = _$v ??
          new _$V1AdGuardHomeConfig._(
              filteringEnabled: filteringEnabled,
              blockLists: _blockLists?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'blockLists';
        _blockLists?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'V1AdGuardHomeConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
