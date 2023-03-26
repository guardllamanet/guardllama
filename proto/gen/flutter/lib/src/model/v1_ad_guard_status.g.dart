// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_ad_guard_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1AdGuardStatus extends V1AdGuardStatus {
  @override
  final BuiltList<AdGuardStatusQueryLog>? queryLogs;

  factory _$V1AdGuardStatus([void Function(V1AdGuardStatusBuilder)? updates]) =>
      (new V1AdGuardStatusBuilder()..update(updates))._build();

  _$V1AdGuardStatus._({this.queryLogs}) : super._();

  @override
  V1AdGuardStatus rebuild(void Function(V1AdGuardStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1AdGuardStatusBuilder toBuilder() =>
      new V1AdGuardStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1AdGuardStatus && queryLogs == other.queryLogs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, queryLogs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1AdGuardStatus')
          ..add('queryLogs', queryLogs))
        .toString();
  }
}

class V1AdGuardStatusBuilder
    implements Builder<V1AdGuardStatus, V1AdGuardStatusBuilder> {
  _$V1AdGuardStatus? _$v;

  ListBuilder<AdGuardStatusQueryLog>? _queryLogs;
  ListBuilder<AdGuardStatusQueryLog> get queryLogs =>
      _$this._queryLogs ??= new ListBuilder<AdGuardStatusQueryLog>();
  set queryLogs(ListBuilder<AdGuardStatusQueryLog>? queryLogs) =>
      _$this._queryLogs = queryLogs;

  V1AdGuardStatusBuilder() {
    V1AdGuardStatus._defaults(this);
  }

  V1AdGuardStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _queryLogs = $v.queryLogs?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1AdGuardStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1AdGuardStatus;
  }

  @override
  void update(void Function(V1AdGuardStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1AdGuardStatus build() => _build();

  _$V1AdGuardStatus _build() {
    _$V1AdGuardStatus _$result;
    try {
      _$result = _$v ?? new _$V1AdGuardStatus._(queryLogs: _queryLogs?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'queryLogs';
        _queryLogs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'V1AdGuardStatus', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
