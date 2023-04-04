// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credentials_jwt.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CredentialsJwt extends CredentialsJwt {
  @override
  final String? signKey;
  @override
  final String? verifyKey;

  factory _$CredentialsJwt([void Function(CredentialsJwtBuilder)? updates]) =>
      (new CredentialsJwtBuilder()..update(updates))._build();

  _$CredentialsJwt._({this.signKey, this.verifyKey}) : super._();

  @override
  CredentialsJwt rebuild(void Function(CredentialsJwtBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CredentialsJwtBuilder toBuilder() =>
      new CredentialsJwtBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CredentialsJwt &&
        signKey == other.signKey &&
        verifyKey == other.verifyKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, signKey.hashCode);
    _$hash = $jc(_$hash, verifyKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CredentialsJwt')
          ..add('signKey', signKey)
          ..add('verifyKey', verifyKey))
        .toString();
  }
}

class CredentialsJwtBuilder
    implements Builder<CredentialsJwt, CredentialsJwtBuilder> {
  _$CredentialsJwt? _$v;

  String? _signKey;
  String? get signKey => _$this._signKey;
  set signKey(String? signKey) => _$this._signKey = signKey;

  String? _verifyKey;
  String? get verifyKey => _$this._verifyKey;
  set verifyKey(String? verifyKey) => _$this._verifyKey = verifyKey;

  CredentialsJwtBuilder() {
    CredentialsJwt._defaults(this);
  }

  CredentialsJwtBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _signKey = $v.signKey;
      _verifyKey = $v.verifyKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CredentialsJwt other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CredentialsJwt;
  }

  @override
  void update(void Function(CredentialsJwtBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CredentialsJwt build() => _build();

  _$CredentialsJwt _build() {
    final _$result =
        _$v ?? new _$CredentialsJwt._(signKey: signKey, verifyKey: verifyKey);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
