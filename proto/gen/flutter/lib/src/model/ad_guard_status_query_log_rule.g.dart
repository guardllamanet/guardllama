// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_guard_status_query_log_rule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdGuardStatusQueryLogRule extends AdGuardStatusQueryLogRule {
  @override
  final String? filterId;
  @override
  final String text;

  factory _$AdGuardStatusQueryLogRule(
          [void Function(AdGuardStatusQueryLogRuleBuilder)? updates]) =>
      (new AdGuardStatusQueryLogRuleBuilder()..update(updates))._build();

  _$AdGuardStatusQueryLogRule._({this.filterId, required this.text})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        text, r'AdGuardStatusQueryLogRule', 'text');
  }

  @override
  AdGuardStatusQueryLogRule rebuild(
          void Function(AdGuardStatusQueryLogRuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdGuardStatusQueryLogRuleBuilder toBuilder() =>
      new AdGuardStatusQueryLogRuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdGuardStatusQueryLogRule &&
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
    return (newBuiltValueToStringHelper(r'AdGuardStatusQueryLogRule')
          ..add('filterId', filterId)
          ..add('text', text))
        .toString();
  }
}

class AdGuardStatusQueryLogRuleBuilder
    implements
        Builder<AdGuardStatusQueryLogRule, AdGuardStatusQueryLogRuleBuilder> {
  _$AdGuardStatusQueryLogRule? _$v;

  String? _filterId;
  String? get filterId => _$this._filterId;
  set filterId(String? filterId) => _$this._filterId = filterId;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  AdGuardStatusQueryLogRuleBuilder() {
    AdGuardStatusQueryLogRule._defaults(this);
  }

  AdGuardStatusQueryLogRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filterId = $v.filterId;
      _text = $v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdGuardStatusQueryLogRule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AdGuardStatusQueryLogRule;
  }

  @override
  void update(void Function(AdGuardStatusQueryLogRuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdGuardStatusQueryLogRule build() => _build();

  _$AdGuardStatusQueryLogRule _build() {
    final _$result = _$v ??
        new _$AdGuardStatusQueryLogRule._(
            filterId: filterId,
            text: BuiltValueNullFieldError.checkNotNull(
                text, r'AdGuardStatusQueryLogRule', 'text'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
