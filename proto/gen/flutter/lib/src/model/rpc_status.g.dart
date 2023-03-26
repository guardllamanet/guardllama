// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rpc_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RpcStatus extends RpcStatus {
  @override
  final int? code;
  @override
  final String? message;
  @override
  final BuiltList<ProtobufAny>? details;

  factory _$RpcStatus([void Function(RpcStatusBuilder)? updates]) =>
      (new RpcStatusBuilder()..update(updates))._build();

  _$RpcStatus._({this.code, this.message, this.details}) : super._();

  @override
  RpcStatus rebuild(void Function(RpcStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RpcStatusBuilder toBuilder() => new RpcStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RpcStatus &&
        code == other.code &&
        message == other.message &&
        details == other.details;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RpcStatus')
          ..add('code', code)
          ..add('message', message)
          ..add('details', details))
        .toString();
  }
}

class RpcStatusBuilder implements Builder<RpcStatus, RpcStatusBuilder> {
  _$RpcStatus? _$v;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ListBuilder<ProtobufAny>? _details;
  ListBuilder<ProtobufAny> get details =>
      _$this._details ??= new ListBuilder<ProtobufAny>();
  set details(ListBuilder<ProtobufAny>? details) => _$this._details = details;

  RpcStatusBuilder() {
    RpcStatus._defaults(this);
  }

  RpcStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _details = $v.details?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RpcStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RpcStatus;
  }

  @override
  void update(void Function(RpcStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RpcStatus build() => _build();

  _$RpcStatus _build() {
    _$RpcStatus _$result;
    try {
      _$result = _$v ??
          new _$RpcStatus._(
              code: code, message: message, details: _details?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RpcStatus', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
