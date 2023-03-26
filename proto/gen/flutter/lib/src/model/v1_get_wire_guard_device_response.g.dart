// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_get_wire_guard_device_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1GetWireGuardDeviceResponse extends V1GetWireGuardDeviceResponse {
  @override
  final V1WireGuardDevice? device;

  factory _$V1GetWireGuardDeviceResponse(
          [void Function(V1GetWireGuardDeviceResponseBuilder)? updates]) =>
      (new V1GetWireGuardDeviceResponseBuilder()..update(updates))._build();

  _$V1GetWireGuardDeviceResponse._({this.device}) : super._();

  @override
  V1GetWireGuardDeviceResponse rebuild(
          void Function(V1GetWireGuardDeviceResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1GetWireGuardDeviceResponseBuilder toBuilder() =>
      new V1GetWireGuardDeviceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1GetWireGuardDeviceResponse && device == other.device;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, device.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1GetWireGuardDeviceResponse')
          ..add('device', device))
        .toString();
  }
}

class V1GetWireGuardDeviceResponseBuilder
    implements
        Builder<V1GetWireGuardDeviceResponse,
            V1GetWireGuardDeviceResponseBuilder> {
  _$V1GetWireGuardDeviceResponse? _$v;

  V1WireGuardDeviceBuilder? _device;
  V1WireGuardDeviceBuilder get device =>
      _$this._device ??= new V1WireGuardDeviceBuilder();
  set device(V1WireGuardDeviceBuilder? device) => _$this._device = device;

  V1GetWireGuardDeviceResponseBuilder() {
    V1GetWireGuardDeviceResponse._defaults(this);
  }

  V1GetWireGuardDeviceResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _device = $v.device?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1GetWireGuardDeviceResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1GetWireGuardDeviceResponse;
  }

  @override
  void update(void Function(V1GetWireGuardDeviceResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1GetWireGuardDeviceResponse build() => _build();

  _$V1GetWireGuardDeviceResponse _build() {
    _$V1GetWireGuardDeviceResponse _$result;
    try {
      _$result =
          _$v ?? new _$V1GetWireGuardDeviceResponse._(device: _device?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'device';
        _device?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'V1GetWireGuardDeviceResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
