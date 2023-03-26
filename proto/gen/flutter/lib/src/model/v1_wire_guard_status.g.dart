// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_wire_guard_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1WireGuardStatus extends V1WireGuardStatus {
  @override
  final V1WireGuardDevice? device;

  factory _$V1WireGuardStatus(
          [void Function(V1WireGuardStatusBuilder)? updates]) =>
      (new V1WireGuardStatusBuilder()..update(updates))._build();

  _$V1WireGuardStatus._({this.device}) : super._();

  @override
  V1WireGuardStatus rebuild(void Function(V1WireGuardStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1WireGuardStatusBuilder toBuilder() =>
      new V1WireGuardStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1WireGuardStatus && device == other.device;
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
    return (newBuiltValueToStringHelper(r'V1WireGuardStatus')
          ..add('device', device))
        .toString();
  }
}

class V1WireGuardStatusBuilder
    implements Builder<V1WireGuardStatus, V1WireGuardStatusBuilder> {
  _$V1WireGuardStatus? _$v;

  V1WireGuardDeviceBuilder? _device;
  V1WireGuardDeviceBuilder get device =>
      _$this._device ??= new V1WireGuardDeviceBuilder();
  set device(V1WireGuardDeviceBuilder? device) => _$this._device = device;

  V1WireGuardStatusBuilder() {
    V1WireGuardStatus._defaults(this);
  }

  V1WireGuardStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _device = $v.device?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1WireGuardStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1WireGuardStatus;
  }

  @override
  void update(void Function(V1WireGuardStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1WireGuardStatus build() => _build();

  _$V1WireGuardStatus _build() {
    _$V1WireGuardStatus _$result;
    try {
      _$result = _$v ?? new _$V1WireGuardStatus._(device: _device?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'device';
        _device?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'V1WireGuardStatus', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
