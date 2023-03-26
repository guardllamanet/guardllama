//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:guardllama_api/src/model/v1_wire_guard_device.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_wire_guard_status.g.dart';

/// V1WireGuardStatus
///
/// Properties:
/// * [device] 
@BuiltValue()
abstract class V1WireGuardStatus implements Built<V1WireGuardStatus, V1WireGuardStatusBuilder> {
  @BuiltValueField(wireName: r'device')
  V1WireGuardDevice? get device;

  V1WireGuardStatus._();

  factory V1WireGuardStatus([void updates(V1WireGuardStatusBuilder b)]) = _$V1WireGuardStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1WireGuardStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1WireGuardStatus> get serializer => _$V1WireGuardStatusSerializer();
}

class _$V1WireGuardStatusSerializer implements PrimitiveSerializer<V1WireGuardStatus> {
  @override
  final Iterable<Type> types = const [V1WireGuardStatus, _$V1WireGuardStatus];

  @override
  final String wireName = r'V1WireGuardStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1WireGuardStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.device != null) {
      yield r'device';
      yield serializers.serialize(
        object.device,
        specifiedType: const FullType(V1WireGuardDevice),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1WireGuardStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1WireGuardStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'device':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(V1WireGuardDevice),
          ) as V1WireGuardDevice;
          result.device.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1WireGuardStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1WireGuardStatusBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

