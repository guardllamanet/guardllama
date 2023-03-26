// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_image_pull_secret.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImageImagePullSecret extends ImageImagePullSecret {
  @override
  final String? server;
  @override
  final String? username;
  @override
  final String? password;

  factory _$ImageImagePullSecret(
          [void Function(ImageImagePullSecretBuilder)? updates]) =>
      (new ImageImagePullSecretBuilder()..update(updates))._build();

  _$ImageImagePullSecret._({this.server, this.username, this.password})
      : super._();

  @override
  ImageImagePullSecret rebuild(
          void Function(ImageImagePullSecretBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageImagePullSecretBuilder toBuilder() =>
      new ImageImagePullSecretBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageImagePullSecret &&
        server == other.server &&
        username == other.username &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, server.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImageImagePullSecret')
          ..add('server', server)
          ..add('username', username)
          ..add('password', password))
        .toString();
  }
}

class ImageImagePullSecretBuilder
    implements Builder<ImageImagePullSecret, ImageImagePullSecretBuilder> {
  _$ImageImagePullSecret? _$v;

  String? _server;
  String? get server => _$this._server;
  set server(String? server) => _$this._server = server;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  ImageImagePullSecretBuilder() {
    ImageImagePullSecret._defaults(this);
  }

  ImageImagePullSecretBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _server = $v.server;
      _username = $v.username;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImageImagePullSecret other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImageImagePullSecret;
  }

  @override
  void update(void Function(ImageImagePullSecretBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImageImagePullSecret build() => _build();

  _$ImageImagePullSecret _build() {
    final _$result = _$v ??
        new _$ImageImagePullSecret._(
            server: server, username: username, password: password);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
