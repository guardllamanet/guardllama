// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tunnel_service_update_dns_filtering_rules_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TunnelServiceUpdateDNSFilteringRulesRequest
    extends TunnelServiceUpdateDNSFilteringRulesRequest {
  @override
  final BuiltList<V1AdGuardConfigRule>? rules;

  factory _$TunnelServiceUpdateDNSFilteringRulesRequest(
          [void Function(TunnelServiceUpdateDNSFilteringRulesRequestBuilder)?
              updates]) =>
      (new TunnelServiceUpdateDNSFilteringRulesRequestBuilder()
            ..update(updates))
          ._build();

  _$TunnelServiceUpdateDNSFilteringRulesRequest._({this.rules}) : super._();

  @override
  TunnelServiceUpdateDNSFilteringRulesRequest rebuild(
          void Function(TunnelServiceUpdateDNSFilteringRulesRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TunnelServiceUpdateDNSFilteringRulesRequestBuilder toBuilder() =>
      new TunnelServiceUpdateDNSFilteringRulesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TunnelServiceUpdateDNSFilteringRulesRequest &&
        rules == other.rules;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rules.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'TunnelServiceUpdateDNSFilteringRulesRequest')
          ..add('rules', rules))
        .toString();
  }
}

class TunnelServiceUpdateDNSFilteringRulesRequestBuilder
    implements
        Builder<TunnelServiceUpdateDNSFilteringRulesRequest,
            TunnelServiceUpdateDNSFilteringRulesRequestBuilder> {
  _$TunnelServiceUpdateDNSFilteringRulesRequest? _$v;

  ListBuilder<V1AdGuardConfigRule>? _rules;
  ListBuilder<V1AdGuardConfigRule> get rules =>
      _$this._rules ??= new ListBuilder<V1AdGuardConfigRule>();
  set rules(ListBuilder<V1AdGuardConfigRule>? rules) => _$this._rules = rules;

  TunnelServiceUpdateDNSFilteringRulesRequestBuilder() {
    TunnelServiceUpdateDNSFilteringRulesRequest._defaults(this);
  }

  TunnelServiceUpdateDNSFilteringRulesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rules = $v.rules?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TunnelServiceUpdateDNSFilteringRulesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TunnelServiceUpdateDNSFilteringRulesRequest;
  }

  @override
  void update(
      void Function(TunnelServiceUpdateDNSFilteringRulesRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  TunnelServiceUpdateDNSFilteringRulesRequest build() => _build();

  _$TunnelServiceUpdateDNSFilteringRulesRequest _build() {
    _$TunnelServiceUpdateDNSFilteringRulesRequest _$result;
    try {
      _$result = _$v ??
          new _$TunnelServiceUpdateDNSFilteringRulesRequest._(
              rules: _rules?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rules';
        _rules?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TunnelServiceUpdateDNSFilteringRulesRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
