// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credentials_api.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CredentialsApi extends CredentialsApi {
  @override
  final String? token;

  factory _$CredentialsApi([void Function(CredentialsApiBuilder)? updates]) =>
      (new CredentialsApiBuilder()..update(updates))._build();

  _$CredentialsApi._({this.token}) : super._();

  @override
  CredentialsApi rebuild(void Function(CredentialsApiBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CredentialsApiBuilder toBuilder() =>
      new CredentialsApiBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CredentialsApi && token == other.token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CredentialsApi')..add('token', token))
        .toString();
  }
}

class CredentialsApiBuilder
    implements Builder<CredentialsApi, CredentialsApiBuilder> {
  _$CredentialsApi? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  CredentialsApiBuilder() {
    CredentialsApi._defaults(this);
  }

  CredentialsApiBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CredentialsApi other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CredentialsApi;
  }

  @override
  void update(void Function(CredentialsApiBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CredentialsApi build() => _build();

  _$CredentialsApi _build() {
    final _$result = _$v ?? new _$CredentialsApi._(token: token);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
