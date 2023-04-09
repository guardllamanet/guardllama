// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_jwt_token.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1JwtToken extends V1JwtToken {
  @override
  final String? token;
  @override
  final DateTime? expiresAt;

  factory _$V1JwtToken([void Function(V1JwtTokenBuilder)? updates]) =>
      (new V1JwtTokenBuilder()..update(updates))._build();

  _$V1JwtToken._({this.token, this.expiresAt}) : super._();

  @override
  V1JwtToken rebuild(void Function(V1JwtTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1JwtTokenBuilder toBuilder() => new V1JwtTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1JwtToken &&
        token == other.token &&
        expiresAt == other.expiresAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1JwtToken')
          ..add('token', token)
          ..add('expiresAt', expiresAt))
        .toString();
  }
}

class V1JwtTokenBuilder implements Builder<V1JwtToken, V1JwtTokenBuilder> {
  _$V1JwtToken? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  V1JwtTokenBuilder() {
    V1JwtToken._defaults(this);
  }

  V1JwtTokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _expiresAt = $v.expiresAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1JwtToken other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1JwtToken;
  }

  @override
  void update(void Function(V1JwtTokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1JwtToken build() => _build();

  _$V1JwtToken _build() {
    final _$result =
        _$v ?? new _$V1JwtToken._(token: token, expiresAt: expiresAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
