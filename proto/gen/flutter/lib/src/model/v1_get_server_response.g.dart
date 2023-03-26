// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_get_server_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1GetServerResponse extends V1GetServerResponse {
  @override
  final V1Server? server;

  factory _$V1GetServerResponse(
          [void Function(V1GetServerResponseBuilder)? updates]) =>
      (new V1GetServerResponseBuilder()..update(updates))._build();

  _$V1GetServerResponse._({this.server}) : super._();

  @override
  V1GetServerResponse rebuild(
          void Function(V1GetServerResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1GetServerResponseBuilder toBuilder() =>
      new V1GetServerResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1GetServerResponse && server == other.server;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, server.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1GetServerResponse')
          ..add('server', server))
        .toString();
  }
}

class V1GetServerResponseBuilder
    implements Builder<V1GetServerResponse, V1GetServerResponseBuilder> {
  _$V1GetServerResponse? _$v;

  V1ServerBuilder? _server;
  V1ServerBuilder get server => _$this._server ??= new V1ServerBuilder();
  set server(V1ServerBuilder? server) => _$this._server = server;

  V1GetServerResponseBuilder() {
    V1GetServerResponse._defaults(this);
  }

  V1GetServerResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _server = $v.server?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1GetServerResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1GetServerResponse;
  }

  @override
  void update(void Function(V1GetServerResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1GetServerResponse build() => _build();

  _$V1GetServerResponse _build() {
    _$V1GetServerResponse _$result;
    try {
      _$result = _$v ?? new _$V1GetServerResponse._(server: _server?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'server';
        _server?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'V1GetServerResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
