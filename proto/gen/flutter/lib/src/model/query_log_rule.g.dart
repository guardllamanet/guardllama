// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_log_rule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QueryLogRule extends QueryLogRule {
  @override
  final String? filterId;
  @override
  final String text;

  factory _$QueryLogRule([void Function(QueryLogRuleBuilder)? updates]) =>
      (new QueryLogRuleBuilder()..update(updates))._build();

  _$QueryLogRule._({this.filterId, required this.text}) : super._() {
    BuiltValueNullFieldError.checkNotNull(text, r'QueryLogRule', 'text');
  }

  @override
  QueryLogRule rebuild(void Function(QueryLogRuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QueryLogRuleBuilder toBuilder() => new QueryLogRuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QueryLogRule &&
        filterId == other.filterId &&
        text == other.text;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filterId.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QueryLogRule')
          ..add('filterId', filterId)
          ..add('text', text))
        .toString();
  }
}

class QueryLogRuleBuilder
    implements Builder<QueryLogRule, QueryLogRuleBuilder> {
  _$QueryLogRule? _$v;

  String? _filterId;
  String? get filterId => _$this._filterId;
  set filterId(String? filterId) => _$this._filterId = filterId;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  QueryLogRuleBuilder() {
    QueryLogRule._defaults(this);
  }

  QueryLogRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filterId = $v.filterId;
      _text = $v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QueryLogRule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QueryLogRule;
  }

  @override
  void update(void Function(QueryLogRuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QueryLogRule build() => _build();

  _$QueryLogRule _build() {
    final _$result = _$v ??
        new _$QueryLogRule._(
            filterId: filterId,
            text: BuiltValueNullFieldError.checkNotNull(
                text, r'QueryLogRule', 'text'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
