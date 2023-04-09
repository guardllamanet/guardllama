// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_authenticate_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1AuthenticateRequest extends V1AuthenticateRequest {
  @override
  final Apiv1Credentials? creds;

  factory _$V1AuthenticateRequest(
          [void Function(V1AuthenticateRequestBuilder)? updates]) =>
      (new V1AuthenticateRequestBuilder()..update(updates))._build();

  _$V1AuthenticateRequest._({this.creds}) : super._();

  @override
  V1AuthenticateRequest rebuild(
          void Function(V1AuthenticateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1AuthenticateRequestBuilder toBuilder() =>
      new V1AuthenticateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1AuthenticateRequest && creds == other.creds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, creds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1AuthenticateRequest')
          ..add('creds', creds))
        .toString();
  }
}

class V1AuthenticateRequestBuilder
    implements Builder<V1AuthenticateRequest, V1AuthenticateRequestBuilder> {
  _$V1AuthenticateRequest? _$v;

  Apiv1CredentialsBuilder? _creds;
  Apiv1CredentialsBuilder get creds =>
      _$this._creds ??= new Apiv1CredentialsBuilder();
  set creds(Apiv1CredentialsBuilder? creds) => _$this._creds = creds;

  V1AuthenticateRequestBuilder() {
    V1AuthenticateRequest._defaults(this);
  }

  V1AuthenticateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _creds = $v.creds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1AuthenticateRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1AuthenticateRequest;
  }

  @override
  void update(void Function(V1AuthenticateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1AuthenticateRequest build() => _build();

  _$V1AuthenticateRequest _build() {
    _$V1AuthenticateRequest _$result;
    try {
      _$result = _$v ?? new _$V1AuthenticateRequest._(creds: _creds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'creds';
        _creds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'V1AuthenticateRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
