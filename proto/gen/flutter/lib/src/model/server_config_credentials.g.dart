// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_config_credentials.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServerConfigCredentials extends ServerConfigCredentials {
  @override
  final CredentialsApi? api;

  factory _$ServerConfigCredentials(
          [void Function(ServerConfigCredentialsBuilder)? updates]) =>
      (new ServerConfigCredentialsBuilder()..update(updates))._build();

  _$ServerConfigCredentials._({this.api}) : super._();

  @override
  ServerConfigCredentials rebuild(
          void Function(ServerConfigCredentialsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServerConfigCredentialsBuilder toBuilder() =>
      new ServerConfigCredentialsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServerConfigCredentials && api == other.api;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, api.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServerConfigCredentials')
          ..add('api', api))
        .toString();
  }
}

class ServerConfigCredentialsBuilder
    implements
        Builder<ServerConfigCredentials, ServerConfigCredentialsBuilder> {
  _$ServerConfigCredentials? _$v;

  CredentialsApiBuilder? _api;
  CredentialsApiBuilder get api => _$this._api ??= new CredentialsApiBuilder();
  set api(CredentialsApiBuilder? api) => _$this._api = api;

  ServerConfigCredentialsBuilder() {
    ServerConfigCredentials._defaults(this);
  }

  ServerConfigCredentialsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _api = $v.api?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServerConfigCredentials other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServerConfigCredentials;
  }

  @override
  void update(void Function(ServerConfigCredentialsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServerConfigCredentials build() => _build();

  _$ServerConfigCredentials _build() {
    _$ServerConfigCredentials _$result;
    try {
      _$result = _$v ?? new _$ServerConfigCredentials._(api: _api?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'api';
        _api?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ServerConfigCredentials', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
