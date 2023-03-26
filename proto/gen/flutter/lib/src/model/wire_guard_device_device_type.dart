//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'wire_guard_device_device_type.g.dart';

class WireGuardDeviceDeviceType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'UNKNOWN')
  static const WireGuardDeviceDeviceType UNKNOWN = _$UNKNOWN;
  @BuiltValueEnumConst(wireName: r'LINUX')
  static const WireGuardDeviceDeviceType LINUX = _$LINUX;
  @BuiltValueEnumConst(wireName: r'OPEN_BSD')
  static const WireGuardDeviceDeviceType OPEN_BSD = _$OPEN_BSD;
  @BuiltValueEnumConst(wireName: r'FREE_BSD')
  static const WireGuardDeviceDeviceType FREE_BSD = _$FREE_BSD;
  @BuiltValueEnumConst(wireName: r'WINDOWS')
  static const WireGuardDeviceDeviceType WINDOWS = _$WINDOWS;
  @BuiltValueEnumConst(wireName: r'USERSPACE')
  static const WireGuardDeviceDeviceType USERSPACE = _$USERSPACE;

  static Serializer<WireGuardDeviceDeviceType> get serializer => _$wireGuardDeviceDeviceTypeSerializer;

  const WireGuardDeviceDeviceType._(String name): super(name);

  static BuiltSet<WireGuardDeviceDeviceType> get values => _$values;
  static WireGuardDeviceDeviceType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class WireGuardDeviceDeviceTypeMixin = Object with _$WireGuardDeviceDeviceTypeMixin;

