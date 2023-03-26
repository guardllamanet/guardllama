//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'node_port_range_protocol.g.dart';

class NodePortRangeProtocol extends EnumClass {

  @BuiltValueEnumConst(wireName: r'TCP')
  static const NodePortRangeProtocol TCP = _$TCP;
  @BuiltValueEnumConst(wireName: r'UDP')
  static const NodePortRangeProtocol UDP = _$UDP;

  static Serializer<NodePortRangeProtocol> get serializer => _$nodePortRangeProtocolSerializer;

  const NodePortRangeProtocol._(String name): super(name);

  static BuiltSet<NodePortRangeProtocol> get values => _$values;
  static NodePortRangeProtocol valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class NodePortRangeProtocolMixin = Object with _$NodePortRangeProtocolMixin;

