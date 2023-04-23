//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vpn_port_range_protocol.g.dart';

class VpnPortRangeProtocol extends EnumClass {

  @BuiltValueEnumConst(wireName: r'TCP')
  static const VpnPortRangeProtocol TCP = _$TCP;
  @BuiltValueEnumConst(wireName: r'UDP')
  static const VpnPortRangeProtocol UDP = _$UDP;

  static Serializer<VpnPortRangeProtocol> get serializer => _$vpnPortRangeProtocolSerializer;

  const VpnPortRangeProtocol._(String name): super(name);

  static BuiltSet<VpnPortRangeProtocol> get values => _$values;
  static VpnPortRangeProtocol valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class VpnPortRangeProtocolMixin = Object with _$VpnPortRangeProtocolMixin;

