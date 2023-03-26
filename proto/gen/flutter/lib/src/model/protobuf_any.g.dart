// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'protobuf_any.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProtobufAny extends ProtobufAny {
  @override
  final String? atType;

  factory _$ProtobufAny([void Function(ProtobufAnyBuilder)? updates]) =>
      (new ProtobufAnyBuilder()..update(updates))._build();

  _$ProtobufAny._({this.atType}) : super._();

  @override
  ProtobufAny rebuild(void Function(ProtobufAnyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProtobufAnyBuilder toBuilder() => new ProtobufAnyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProtobufAny && atType == other.atType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, atType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProtobufAny')..add('atType', atType))
        .toString();
  }
}

class ProtobufAnyBuilder implements Builder<ProtobufAny, ProtobufAnyBuilder> {
  _$ProtobufAny? _$v;

  String? _atType;
  String? get atType => _$this._atType;
  set atType(String? atType) => _$this._atType = atType;

  ProtobufAnyBuilder() {
    ProtobufAny._defaults(this);
  }

  ProtobufAnyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _atType = $v.atType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProtobufAny other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProtobufAny;
  }

  @override
  void update(void Function(ProtobufAnyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProtobufAny build() => _build();

  _$ProtobufAny _build() {
    final _$result = _$v ?? new _$ProtobufAny._(atType: atType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
