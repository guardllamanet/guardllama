// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tunnel_service_update_dns_block_lists_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TunnelServiceUpdateDNSBlockListsRequest
    extends TunnelServiceUpdateDNSBlockListsRequest {
  @override
  final BuiltList<AdGuardConfigBlockList>? blockLists;

  factory _$TunnelServiceUpdateDNSBlockListsRequest(
          [void Function(TunnelServiceUpdateDNSBlockListsRequestBuilder)?
              updates]) =>
      (new TunnelServiceUpdateDNSBlockListsRequestBuilder()..update(updates))
          ._build();

  _$TunnelServiceUpdateDNSBlockListsRequest._({this.blockLists}) : super._();

  @override
  TunnelServiceUpdateDNSBlockListsRequest rebuild(
          void Function(TunnelServiceUpdateDNSBlockListsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TunnelServiceUpdateDNSBlockListsRequestBuilder toBuilder() =>
      new TunnelServiceUpdateDNSBlockListsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TunnelServiceUpdateDNSBlockListsRequest &&
        blockLists == other.blockLists;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, blockLists.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'TunnelServiceUpdateDNSBlockListsRequest')
          ..add('blockLists', blockLists))
        .toString();
  }
}

class TunnelServiceUpdateDNSBlockListsRequestBuilder
    implements
        Builder<TunnelServiceUpdateDNSBlockListsRequest,
            TunnelServiceUpdateDNSBlockListsRequestBuilder> {
  _$TunnelServiceUpdateDNSBlockListsRequest? _$v;

  ListBuilder<AdGuardConfigBlockList>? _blockLists;
  ListBuilder<AdGuardConfigBlockList> get blockLists =>
      _$this._blockLists ??= new ListBuilder<AdGuardConfigBlockList>();
  set blockLists(ListBuilder<AdGuardConfigBlockList>? blockLists) =>
      _$this._blockLists = blockLists;

  TunnelServiceUpdateDNSBlockListsRequestBuilder() {
    TunnelServiceUpdateDNSBlockListsRequest._defaults(this);
  }

  TunnelServiceUpdateDNSBlockListsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _blockLists = $v.blockLists?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TunnelServiceUpdateDNSBlockListsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TunnelServiceUpdateDNSBlockListsRequest;
  }

  @override
  void update(
      void Function(TunnelServiceUpdateDNSBlockListsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TunnelServiceUpdateDNSBlockListsRequest build() => _build();

  _$TunnelServiceUpdateDNSBlockListsRequest _build() {
    _$TunnelServiceUpdateDNSBlockListsRequest _$result;
    try {
      _$result = _$v ??
          new _$TunnelServiceUpdateDNSBlockListsRequest._(
              blockLists: _blockLists?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'blockLists';
        _blockLists?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TunnelServiceUpdateDNSBlockListsRequest',
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
