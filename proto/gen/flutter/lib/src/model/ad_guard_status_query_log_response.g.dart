// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_guard_status_query_log_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdGuardStatusQueryLogResponse extends AdGuardStatusQueryLogResponse {
  @override
  final double? elapsedMs;
  @override
  final String status;
  @override
  final BuiltList<ResponseAnswer>? answers;

  factory _$AdGuardStatusQueryLogResponse(
          [void Function(AdGuardStatusQueryLogResponseBuilder)? updates]) =>
      (new AdGuardStatusQueryLogResponseBuilder()..update(updates))._build();

  _$AdGuardStatusQueryLogResponse._(
      {this.elapsedMs, required this.status, this.answers})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        status, r'AdGuardStatusQueryLogResponse', 'status');
  }

  @override
  AdGuardStatusQueryLogResponse rebuild(
          void Function(AdGuardStatusQueryLogResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdGuardStatusQueryLogResponseBuilder toBuilder() =>
      new AdGuardStatusQueryLogResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdGuardStatusQueryLogResponse &&
        elapsedMs == other.elapsedMs &&
        status == other.status &&
        answers == other.answers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, elapsedMs.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, answers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdGuardStatusQueryLogResponse')
          ..add('elapsedMs', elapsedMs)
          ..add('status', status)
          ..add('answers', answers))
        .toString();
  }
}

class AdGuardStatusQueryLogResponseBuilder
    implements
        Builder<AdGuardStatusQueryLogResponse,
            AdGuardStatusQueryLogResponseBuilder> {
  _$AdGuardStatusQueryLogResponse? _$v;

  double? _elapsedMs;
  double? get elapsedMs => _$this._elapsedMs;
  set elapsedMs(double? elapsedMs) => _$this._elapsedMs = elapsedMs;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ListBuilder<ResponseAnswer>? _answers;
  ListBuilder<ResponseAnswer> get answers =>
      _$this._answers ??= new ListBuilder<ResponseAnswer>();
  set answers(ListBuilder<ResponseAnswer>? answers) =>
      _$this._answers = answers;

  AdGuardStatusQueryLogResponseBuilder() {
    AdGuardStatusQueryLogResponse._defaults(this);
  }

  AdGuardStatusQueryLogResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _elapsedMs = $v.elapsedMs;
      _status = $v.status;
      _answers = $v.answers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdGuardStatusQueryLogResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AdGuardStatusQueryLogResponse;
  }

  @override
  void update(void Function(AdGuardStatusQueryLogResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdGuardStatusQueryLogResponse build() => _build();

  _$AdGuardStatusQueryLogResponse _build() {
    _$AdGuardStatusQueryLogResponse _$result;
    try {
      _$result = _$v ??
          new _$AdGuardStatusQueryLogResponse._(
              elapsedMs: elapsedMs,
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'AdGuardStatusQueryLogResponse', 'status'),
              answers: _answers?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'answers';
        _answers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AdGuardStatusQueryLogResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
