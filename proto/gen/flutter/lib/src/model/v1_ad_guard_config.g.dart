// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_ad_guard_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1AdGuardConfig extends V1AdGuardConfig {
  @override
  final bool? filteringEnabled;
  @override
  final BuiltList<AdGuardConfigBlockList>? blockLists;

  factory _$V1AdGuardConfig([void Function(V1AdGuardConfigBuilder)? updates]) =>
      (new V1AdGuardConfigBuilder()..update(updates))._build();

  _$V1AdGuardConfig._({this.filteringEnabled, this.blockLists}) : super._();

  @override
  V1AdGuardConfig rebuild(void Function(V1AdGuardConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1AdGuardConfigBuilder toBuilder() =>
      new V1AdGuardConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1AdGuardConfig &&
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
    return (newBuiltValueToStringHelper(r'V1AdGuardConfig')
          ..add('filteringEnabled', filteringEnabled)
          ..add('blockLists', blockLists))
        .toString();
  }
}

class V1AdGuardConfigBuilder
    implements Builder<V1AdGuardConfig, V1AdGuardConfigBuilder> {
  _$V1AdGuardConfig? _$v;

  bool? _filteringEnabled;
  bool? get filteringEnabled => _$this._filteringEnabled;
  set filteringEnabled(bool? filteringEnabled) =>
      _$this._filteringEnabled = filteringEnabled;

  ListBuilder<AdGuardConfigBlockList>? _blockLists;
  ListBuilder<AdGuardConfigBlockList> get blockLists =>
      _$this._blockLists ??= new ListBuilder<AdGuardConfigBlockList>();
  set blockLists(ListBuilder<AdGuardConfigBlockList>? blockLists) =>
      _$this._blockLists = blockLists;

  V1AdGuardConfigBuilder() {
    V1AdGuardConfig._defaults(this);
  }

  V1AdGuardConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filteringEnabled = $v.filteringEnabled;
      _blockLists = $v.blockLists?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1AdGuardConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1AdGuardConfig;
  }

  @override
  void update(void Function(V1AdGuardConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1AdGuardConfig build() => _build();

  _$V1AdGuardConfig _build() {
    _$V1AdGuardConfig _$result;
    try {
      _$result = _$v ??
          new _$V1AdGuardConfig._(
              filteringEnabled: filteringEnabled,
              blockLists: _blockLists?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'blockLists';
        _blockLists?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'V1AdGuardConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
