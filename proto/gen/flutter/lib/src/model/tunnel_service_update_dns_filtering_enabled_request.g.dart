// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tunnel_service_update_dns_filtering_enabled_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TunnelServiceUpdateDNSFilteringEnabledRequest
    extends TunnelServiceUpdateDNSFilteringEnabledRequest {
  @override
  final bool? filteringEnabled;

  factory _$TunnelServiceUpdateDNSFilteringEnabledRequest(
          [void Function(TunnelServiceUpdateDNSFilteringEnabledRequestBuilder)?
              updates]) =>
      (new TunnelServiceUpdateDNSFilteringEnabledRequestBuilder()
            ..update(updates))
          ._build();

  _$TunnelServiceUpdateDNSFilteringEnabledRequest._({this.filteringEnabled})
      : super._();

  @override
  TunnelServiceUpdateDNSFilteringEnabledRequest rebuild(
          void Function(TunnelServiceUpdateDNSFilteringEnabledRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TunnelServiceUpdateDNSFilteringEnabledRequestBuilder toBuilder() =>
      new TunnelServiceUpdateDNSFilteringEnabledRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TunnelServiceUpdateDNSFilteringEnabledRequest &&
        filteringEnabled == other.filteringEnabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filteringEnabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'TunnelServiceUpdateDNSFilteringEnabledRequest')
          ..add('filteringEnabled', filteringEnabled))
        .toString();
  }
}

class TunnelServiceUpdateDNSFilteringEnabledRequestBuilder
    implements
        Builder<TunnelServiceUpdateDNSFilteringEnabledRequest,
            TunnelServiceUpdateDNSFilteringEnabledRequestBuilder> {
  _$TunnelServiceUpdateDNSFilteringEnabledRequest? _$v;

  bool? _filteringEnabled;
  bool? get filteringEnabled => _$this._filteringEnabled;
  set filteringEnabled(bool? filteringEnabled) =>
      _$this._filteringEnabled = filteringEnabled;

  TunnelServiceUpdateDNSFilteringEnabledRequestBuilder() {
    TunnelServiceUpdateDNSFilteringEnabledRequest._defaults(this);
  }

  TunnelServiceUpdateDNSFilteringEnabledRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filteringEnabled = $v.filteringEnabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TunnelServiceUpdateDNSFilteringEnabledRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TunnelServiceUpdateDNSFilteringEnabledRequest;
  }

  @override
  void update(
      void Function(TunnelServiceUpdateDNSFilteringEnabledRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  TunnelServiceUpdateDNSFilteringEnabledRequest build() => _build();

  _$TunnelServiceUpdateDNSFilteringEnabledRequest _build() {
    final _$result = _$v ??
        new _$TunnelServiceUpdateDNSFilteringEnabledRequest._(
            filteringEnabled: filteringEnabled);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
