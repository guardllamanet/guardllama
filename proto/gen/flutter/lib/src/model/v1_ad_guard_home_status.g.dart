// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_ad_guard_home_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1AdGuardHomeStatus extends V1AdGuardHomeStatus {
  @override
  final BuiltList<String>? dns;
  @override
  final bool? filteringEnabled;
  @override
  final BuiltList<AdGuardHomeConfigBlockList>? blockLists;

  factory _$V1AdGuardHomeStatus(
          [void Function(V1AdGuardHomeStatusBuilder)? updates]) =>
      (new V1AdGuardHomeStatusBuilder()..update(updates))._build();

  _$V1AdGuardHomeStatus._({this.dns, this.filteringEnabled, this.blockLists})
      : super._();

  @override
  V1AdGuardHomeStatus rebuild(
          void Function(V1AdGuardHomeStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1AdGuardHomeStatusBuilder toBuilder() =>
      new V1AdGuardHomeStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1AdGuardHomeStatus &&
        dns == other.dns &&
        filteringEnabled == other.filteringEnabled &&
        blockLists == other.blockLists;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dns.hashCode);
    _$hash = $jc(_$hash, filteringEnabled.hashCode);
    _$hash = $jc(_$hash, blockLists.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1AdGuardHomeStatus')
          ..add('dns', dns)
          ..add('filteringEnabled', filteringEnabled)
          ..add('blockLists', blockLists))
        .toString();
  }
}

class V1AdGuardHomeStatusBuilder
    implements Builder<V1AdGuardHomeStatus, V1AdGuardHomeStatusBuilder> {
  _$V1AdGuardHomeStatus? _$v;

  ListBuilder<String>? _dns;
  ListBuilder<String> get dns => _$this._dns ??= new ListBuilder<String>();
  set dns(ListBuilder<String>? dns) => _$this._dns = dns;

  bool? _filteringEnabled;
  bool? get filteringEnabled => _$this._filteringEnabled;
  set filteringEnabled(bool? filteringEnabled) =>
      _$this._filteringEnabled = filteringEnabled;

  ListBuilder<AdGuardHomeConfigBlockList>? _blockLists;
  ListBuilder<AdGuardHomeConfigBlockList> get blockLists =>
      _$this._blockLists ??= new ListBuilder<AdGuardHomeConfigBlockList>();
  set blockLists(ListBuilder<AdGuardHomeConfigBlockList>? blockLists) =>
      _$this._blockLists = blockLists;

  V1AdGuardHomeStatusBuilder() {
    V1AdGuardHomeStatus._defaults(this);
  }

  V1AdGuardHomeStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dns = $v.dns?.toBuilder();
      _filteringEnabled = $v.filteringEnabled;
      _blockLists = $v.blockLists?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1AdGuardHomeStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1AdGuardHomeStatus;
  }

  @override
  void update(void Function(V1AdGuardHomeStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1AdGuardHomeStatus build() => _build();

  _$V1AdGuardHomeStatus _build() {
    _$V1AdGuardHomeStatus _$result;
    try {
      _$result = _$v ??
          new _$V1AdGuardHomeStatus._(
              dns: _dns?.build(),
              filteringEnabled: filteringEnabled,
              blockLists: _blockLists?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dns';
        _dns?.build();

        _$failedField = 'blockLists';
        _blockLists?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'V1AdGuardHomeStatus', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
