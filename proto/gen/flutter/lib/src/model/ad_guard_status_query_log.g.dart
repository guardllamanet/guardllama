// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_guard_status_query_log.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdGuardStatusQueryLog extends AdGuardStatusQueryLog {
  @override
  final DateTime timestamp;
  @override
  final QueryLogRequest request;
  @override
  final AdGuardStatusQueryLogResponse response;
  @override
  final QueryLogReason reason;
  @override
  final BuiltList<AdGuardStatusQueryLogRule>? rules;
  @override
  final QueryLogClient client;

  factory _$AdGuardStatusQueryLog(
          [void Function(AdGuardStatusQueryLogBuilder)? updates]) =>
      (new AdGuardStatusQueryLogBuilder()..update(updates))._build();

  _$AdGuardStatusQueryLog._(
      {required this.timestamp,
      required this.request,
      required this.response,
      required this.reason,
      this.rules,
      required this.client})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        timestamp, r'AdGuardStatusQueryLog', 'timestamp');
    BuiltValueNullFieldError.checkNotNull(
        request, r'AdGuardStatusQueryLog', 'request');
    BuiltValueNullFieldError.checkNotNull(
        response, r'AdGuardStatusQueryLog', 'response');
    BuiltValueNullFieldError.checkNotNull(
        reason, r'AdGuardStatusQueryLog', 'reason');
    BuiltValueNullFieldError.checkNotNull(
        client, r'AdGuardStatusQueryLog', 'client');
  }

  @override
  AdGuardStatusQueryLog rebuild(
          void Function(AdGuardStatusQueryLogBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdGuardStatusQueryLogBuilder toBuilder() =>
      new AdGuardStatusQueryLogBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdGuardStatusQueryLog &&
        timestamp == other.timestamp &&
        request == other.request &&
        response == other.response &&
        reason == other.reason &&
        rules == other.rules &&
        client == other.client;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jc(_$hash, request.hashCode);
    _$hash = $jc(_$hash, response.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, rules.hashCode);
    _$hash = $jc(_$hash, client.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdGuardStatusQueryLog')
          ..add('timestamp', timestamp)
          ..add('request', request)
          ..add('response', response)
          ..add('reason', reason)
          ..add('rules', rules)
          ..add('client', client))
        .toString();
  }
}

class AdGuardStatusQueryLogBuilder
    implements Builder<AdGuardStatusQueryLog, AdGuardStatusQueryLogBuilder> {
  _$AdGuardStatusQueryLog? _$v;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  QueryLogRequestBuilder? _request;
  QueryLogRequestBuilder get request =>
      _$this._request ??= new QueryLogRequestBuilder();
  set request(QueryLogRequestBuilder? request) => _$this._request = request;

  AdGuardStatusQueryLogResponseBuilder? _response;
  AdGuardStatusQueryLogResponseBuilder get response =>
      _$this._response ??= new AdGuardStatusQueryLogResponseBuilder();
  set response(AdGuardStatusQueryLogResponseBuilder? response) =>
      _$this._response = response;

  QueryLogReason? _reason;
  QueryLogReason? get reason => _$this._reason;
  set reason(QueryLogReason? reason) => _$this._reason = reason;

  ListBuilder<AdGuardStatusQueryLogRule>? _rules;
  ListBuilder<AdGuardStatusQueryLogRule> get rules =>
      _$this._rules ??= new ListBuilder<AdGuardStatusQueryLogRule>();
  set rules(ListBuilder<AdGuardStatusQueryLogRule>? rules) =>
      _$this._rules = rules;

  QueryLogClientBuilder? _client;
  QueryLogClientBuilder get client =>
      _$this._client ??= new QueryLogClientBuilder();
  set client(QueryLogClientBuilder? client) => _$this._client = client;

  AdGuardStatusQueryLogBuilder() {
    AdGuardStatusQueryLog._defaults(this);
  }

  AdGuardStatusQueryLogBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timestamp = $v.timestamp;
      _request = $v.request.toBuilder();
      _response = $v.response.toBuilder();
      _reason = $v.reason;
      _rules = $v.rules?.toBuilder();
      _client = $v.client.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdGuardStatusQueryLog other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AdGuardStatusQueryLog;
  }

  @override
  void update(void Function(AdGuardStatusQueryLogBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdGuardStatusQueryLog build() => _build();

  _$AdGuardStatusQueryLog _build() {
    _$AdGuardStatusQueryLog _$result;
    try {
      _$result = _$v ??
          new _$AdGuardStatusQueryLog._(
              timestamp: BuiltValueNullFieldError.checkNotNull(
                  timestamp, r'AdGuardStatusQueryLog', 'timestamp'),
              request: request.build(),
              response: response.build(),
              reason: BuiltValueNullFieldError.checkNotNull(
                  reason, r'AdGuardStatusQueryLog', 'reason'),
              rules: _rules?.build(),
              client: client.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'request';
        request.build();
        _$failedField = 'response';
        response.build();

        _$failedField = 'rules';
        _rules?.build();
        _$failedField = 'client';
        client.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AdGuardStatusQueryLog', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
