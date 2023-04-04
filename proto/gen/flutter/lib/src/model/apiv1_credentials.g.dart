// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apiv1_credentials.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Apiv1Credentials extends Apiv1Credentials {
  @override
  final String token;

  factory _$Apiv1Credentials(
          [void Function(Apiv1CredentialsBuilder)? updates]) =>
      (new Apiv1CredentialsBuilder()..update(updates))._build();

  _$Apiv1Credentials._({required this.token}) : super._() {
    BuiltValueNullFieldError.checkNotNull(token, r'Apiv1Credentials', 'token');
  }

  @override
  Apiv1Credentials rebuild(void Function(Apiv1CredentialsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Apiv1CredentialsBuilder toBuilder() =>
      new Apiv1CredentialsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Apiv1Credentials && token == other.token;
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
    return (newBuiltValueToStringHelper(r'Apiv1Credentials')
          ..add('token', token))
        .toString();
  }
}

class Apiv1CredentialsBuilder
    implements Builder<Apiv1Credentials, Apiv1CredentialsBuilder> {
  _$Apiv1Credentials? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  Apiv1CredentialsBuilder() {
    Apiv1Credentials._defaults(this);
  }

  Apiv1CredentialsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Apiv1Credentials other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Apiv1Credentials;
  }

  @override
  void update(void Function(Apiv1CredentialsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Apiv1Credentials build() => _build();

  _$Apiv1Credentials _build() {
    final _$result = _$v ??
        new _$Apiv1Credentials._(
            token: BuiltValueNullFieldError.checkNotNull(
                token, r'Apiv1Credentials', 'token'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
