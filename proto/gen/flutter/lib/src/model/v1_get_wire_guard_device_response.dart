//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:guardllama_api/src/model/v1_wire_guard_device.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_get_wire_guard_device_response.g.dart';

/// V1GetWireGuardDeviceResponse
///
/// Properties:
/// * [device] 
@BuiltValue()
abstract class V1GetWireGuardDeviceResponse implements Built<V1GetWireGuardDeviceResponse, V1GetWireGuardDeviceResponseBuilder> {
  @BuiltValueField(wireName: r'device')
  V1WireGuardDevice? get device;

  V1GetWireGuardDeviceResponse._();

  factory V1GetWireGuardDeviceResponse([void updates(V1GetWireGuardDeviceResponseBuilder b)]) = _$V1GetWireGuardDeviceResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1GetWireGuardDeviceResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1GetWireGuardDeviceResponse> get serializer => _$V1GetWireGuardDeviceResponseSerializer();
}

class _$V1GetWireGuardDeviceResponseSerializer implements PrimitiveSerializer<V1GetWireGuardDeviceResponse> {
  @override
  final Iterable<Type> types = const [V1GetWireGuardDeviceResponse, _$V1GetWireGuardDeviceResponse];

  @override
  final String wireName = r'V1GetWireGuardDeviceResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1GetWireGuardDeviceResponse object, {
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
    V1GetWireGuardDeviceResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1GetWireGuardDeviceResponseBuilder result,
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
  V1GetWireGuardDeviceResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1GetWireGuardDeviceResponseBuilder();
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

