// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_ad_guard_config_rule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1AdGuardConfigRule extends V1AdGuardConfigRule {
  @override
  final String? rule;

  factory _$V1AdGuardConfigRule(
          [void Function(V1AdGuardConfigRuleBuilder)? updates]) =>
      (new V1AdGuardConfigRuleBuilder()..update(updates))._build();

  _$V1AdGuardConfigRule._({this.rule}) : super._();

  @override
  V1AdGuardConfigRule rebuild(
          void Function(V1AdGuardConfigRuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1AdGuardConfigRuleBuilder toBuilder() =>
      new V1AdGuardConfigRuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1AdGuardConfigRule && rule == other.rule;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rule.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1AdGuardConfigRule')
          ..add('rule', rule))
        .toString();
  }
}

class V1AdGuardConfigRuleBuilder
    implements Builder<V1AdGuardConfigRule, V1AdGuardConfigRuleBuilder> {
  _$V1AdGuardConfigRule? _$v;

  String? _rule;
  String? get rule => _$this._rule;
  set rule(String? rule) => _$this._rule = rule;

  V1AdGuardConfigRuleBuilder() {
    V1AdGuardConfigRule._defaults(this);
  }

  V1AdGuardConfigRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rule = $v.rule;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1AdGuardConfigRule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1AdGuardConfigRule;
  }

  @override
  void update(void Function(V1AdGuardConfigRuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1AdGuardConfigRule build() => _build();

  _$V1AdGuardConfigRule _build() {
    final _$result = _$v ?? new _$V1AdGuardConfigRule._(rule: rule);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
