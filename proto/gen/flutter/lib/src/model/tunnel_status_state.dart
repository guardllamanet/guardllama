//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tunnel_status_state.g.dart';

class TunnelStatusState extends EnumClass {

  @BuiltValueEnumConst(wireName: r'PENDING')
  static const TunnelStatusState PENDING = _$PENDING;
  @BuiltValueEnumConst(wireName: r'READY')
  static const TunnelStatusState READY = _$READY;
  @BuiltValueEnumConst(wireName: r'ERROR')
  static const TunnelStatusState ERROR = _$ERROR;

  static Serializer<TunnelStatusState> get serializer => _$tunnelStatusStateSerializer;

  const TunnelStatusState._(String name): super(name);

  static BuiltSet<TunnelStatusState> get values => _$values;
  static TunnelStatusState valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TunnelStatusStateMixin = Object with _$TunnelStatusStateMixin;

