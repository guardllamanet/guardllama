// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_authenticate_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1AuthenticateResponse extends V1AuthenticateResponse {
  @override
  final V1JwtToken? jwtToken;
  @override
  final String? cookie;

  factory _$V1AuthenticateResponse(
          [void Function(V1AuthenticateResponseBuilder)? updates]) =>
      (new V1AuthenticateResponseBuilder()..update(updates))._build();

  _$V1AuthenticateResponse._({this.jwtToken, this.cookie}) : super._();

  @override
  V1AuthenticateResponse rebuild(
          void Function(V1AuthenticateResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1AuthenticateResponseBuilder toBuilder() =>
      new V1AuthenticateResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1AuthenticateResponse &&
        jwtToken == other.jwtToken &&
        cookie == other.cookie;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, jwtToken.hashCode);
    _$hash = $jc(_$hash, cookie.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1AuthenticateResponse')
          ..add('jwtToken', jwtToken)
          ..add('cookie', cookie))
        .toString();
  }
}

class V1AuthenticateResponseBuilder
    implements Builder<V1AuthenticateResponse, V1AuthenticateResponseBuilder> {
  _$V1AuthenticateResponse? _$v;

  V1JwtTokenBuilder? _jwtToken;
  V1JwtTokenBuilder get jwtToken =>
      _$this._jwtToken ??= new V1JwtTokenBuilder();
  set jwtToken(V1JwtTokenBuilder? jwtToken) => _$this._jwtToken = jwtToken;

  String? _cookie;
  String? get cookie => _$this._cookie;
  set cookie(String? cookie) => _$this._cookie = cookie;

  V1AuthenticateResponseBuilder() {
    V1AuthenticateResponse._defaults(this);
  }

  V1AuthenticateResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jwtToken = $v.jwtToken?.toBuilder();
      _cookie = $v.cookie;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1AuthenticateResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1AuthenticateResponse;
  }

  @override
  void update(void Function(V1AuthenticateResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1AuthenticateResponse build() => _build();

  _$V1AuthenticateResponse _build() {
    _$V1AuthenticateResponse _$result;
    try {
      _$result = _$v ??
          new _$V1AuthenticateResponse._(
              jwtToken: _jwtToken?.build(), cookie: cookie);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'jwtToken';
        _jwtToken?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'V1AuthenticateResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
