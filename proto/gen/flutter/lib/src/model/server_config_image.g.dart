// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_config_image.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServerConfigImage extends ServerConfigImage {
  @override
  final String? image;
  @override
  final ImageImagePullPolicy? imagePullPolicy;
  @override
  final ImageImagePullSecret? imagePullSecret;

  factory _$ServerConfigImage(
          [void Function(ServerConfigImageBuilder)? updates]) =>
      (new ServerConfigImageBuilder()..update(updates))._build();

  _$ServerConfigImage._(
      {this.image, this.imagePullPolicy, this.imagePullSecret})
      : super._();

  @override
  ServerConfigImage rebuild(void Function(ServerConfigImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServerConfigImageBuilder toBuilder() =>
      new ServerConfigImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServerConfigImage &&
        image == other.image &&
        imagePullPolicy == other.imagePullPolicy &&
        imagePullSecret == other.imagePullSecret;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, imagePullPolicy.hashCode);
    _$hash = $jc(_$hash, imagePullSecret.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServerConfigImage')
          ..add('image', image)
          ..add('imagePullPolicy', imagePullPolicy)
          ..add('imagePullSecret', imagePullSecret))
        .toString();
  }
}

class ServerConfigImageBuilder
    implements Builder<ServerConfigImage, ServerConfigImageBuilder> {
  _$ServerConfigImage? _$v;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  ImageImagePullPolicy? _imagePullPolicy;
  ImageImagePullPolicy? get imagePullPolicy => _$this._imagePullPolicy;
  set imagePullPolicy(ImageImagePullPolicy? imagePullPolicy) =>
      _$this._imagePullPolicy = imagePullPolicy;

  ImageImagePullSecretBuilder? _imagePullSecret;
  ImageImagePullSecretBuilder get imagePullSecret =>
      _$this._imagePullSecret ??= new ImageImagePullSecretBuilder();
  set imagePullSecret(ImageImagePullSecretBuilder? imagePullSecret) =>
      _$this._imagePullSecret = imagePullSecret;

  ServerConfigImageBuilder() {
    ServerConfigImage._defaults(this);
  }

  ServerConfigImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _image = $v.image;
      _imagePullPolicy = $v.imagePullPolicy;
      _imagePullSecret = $v.imagePullSecret?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServerConfigImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServerConfigImage;
  }

  @override
  void update(void Function(ServerConfigImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServerConfigImage build() => _build();

  _$ServerConfigImage _build() {
    _$ServerConfigImage _$result;
    try {
      _$result = _$v ??
          new _$ServerConfigImage._(
              image: image,
              imagePullPolicy: imagePullPolicy,
              imagePullSecret: _imagePullSecret?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'imagePullSecret';
        _imagePullSecret?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ServerConfigImage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
