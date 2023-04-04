// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_server_config_credentials.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1ServerConfigCredentials extends V1ServerConfigCredentials {
  @override
  final CredentialsApi? api;
  @override
  final CredentialsJwt? jwt;

  factory _$V1ServerConfigCredentials(
          [void Function(V1ServerConfigCredentialsBuilder)? updates]) =>
      (new V1ServerConfigCredentialsBuilder()..update(updates))._build();

  _$V1ServerConfigCredentials._({this.api, this.jwt}) : super._();

  @override
  V1ServerConfigCredentials rebuild(
          void Function(V1ServerConfigCredentialsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1ServerConfigCredentialsBuilder toBuilder() =>
      new V1ServerConfigCredentialsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1ServerConfigCredentials &&
        api == other.api &&
        jwt == other.jwt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, api.hashCode);
    _$hash = $jc(_$hash, jwt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1ServerConfigCredentials')
          ..add('api', api)
          ..add('jwt', jwt))
        .toString();
  }
}

class V1ServerConfigCredentialsBuilder
    implements
        Builder<V1ServerConfigCredentials, V1ServerConfigCredentialsBuilder> {
  _$V1ServerConfigCredentials? _$v;

  CredentialsApiBuilder? _api;
  CredentialsApiBuilder get api => _$this._api ??= new CredentialsApiBuilder();
  set api(CredentialsApiBuilder? api) => _$this._api = api;

  CredentialsJwtBuilder? _jwt;
  CredentialsJwtBuilder get jwt => _$this._jwt ??= new CredentialsJwtBuilder();
  set jwt(CredentialsJwtBuilder? jwt) => _$this._jwt = jwt;

  V1ServerConfigCredentialsBuilder() {
    V1ServerConfigCredentials._defaults(this);
  }

  V1ServerConfigCredentialsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _api = $v.api?.toBuilder();
      _jwt = $v.jwt?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1ServerConfigCredentials other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1ServerConfigCredentials;
  }

  @override
  void update(void Function(V1ServerConfigCredentialsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1ServerConfigCredentials build() => _build();

  _$V1ServerConfigCredentials _build() {
    _$V1ServerConfigCredentials _$result;
    try {
      _$result = _$v ??
          new _$V1ServerConfigCredentials._(
              api: _api?.build(), jwt: _jwt?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'api';
        _api?.build();
        _$failedField = 'jwt';
        _jwt?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'V1ServerConfigCredentials', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
