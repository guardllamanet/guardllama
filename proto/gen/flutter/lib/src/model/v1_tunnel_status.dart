//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:guardllama_api/src/model/v1_ad_guard_home_status.dart';
import 'package:guardllama_api/src/model/v1_wire_guard_status.dart';
import 'package:guardllama_api/src/model/tunnel_status_state.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_tunnel_status.g.dart';

/// V1TunnelStatus
///
/// Properties:
/// * [state] 
/// * [details] 
/// * [wg] 
/// * [agh] 
@BuiltValue()
abstract class V1TunnelStatus implements Built<V1TunnelStatus, V1TunnelStatusBuilder> {
  @BuiltValueField(wireName: r'state')
  TunnelStatusState? get state;
  // enum stateEnum {  PENDING,  READY,  ERROR,  };

  @BuiltValueField(wireName: r'details')
  String? get details;

  @BuiltValueField(wireName: r'wg')
  V1WireGuardStatus? get wg;

  @BuiltValueField(wireName: r'agh')
  V1AdGuardHomeStatus? get agh;

  V1TunnelStatus._();

  factory V1TunnelStatus([void updates(V1TunnelStatusBuilder b)]) = _$V1TunnelStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1TunnelStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1TunnelStatus> get serializer => _$V1TunnelStatusSerializer();
}

class _$V1TunnelStatusSerializer implements PrimitiveSerializer<V1TunnelStatus> {
  @override
  final Iterable<Type> types = const [V1TunnelStatus, _$V1TunnelStatus];

  @override
  final String wireName = r'V1TunnelStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1TunnelStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.state != null) {
      yield r'state';
      yield serializers.serialize(
        object.state,
        specifiedType: const FullType(TunnelStatusState),
      );
    }
    if (object.details != null) {
      yield r'details';
      yield serializers.serialize(
        object.details,
        specifiedType: const FullType(String),
      );
    }
    if (object.wg != null) {
      yield r'wg';
      yield serializers.serialize(
        object.wg,
        specifiedType: const FullType(V1WireGuardStatus),
      );
    }
    if (object.agh != null) {
      yield r'agh';
      yield serializers.serialize(
        object.agh,
        specifiedType: const FullType(V1AdGuardHomeStatus),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1TunnelStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1TunnelStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TunnelStatusState),
          ) as TunnelStatusState;
          result.state = valueDes;
          break;
        case r'details':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.details = valueDes;
          break;
        case r'wg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(V1WireGuardStatus),
          ) as V1WireGuardStatus;
          result.wg.replace(valueDes);
          break;
        case r'agh':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(V1AdGuardHomeStatus),
          ) as V1AdGuardHomeStatus;
          result.agh.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1TunnelStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1TunnelStatusBuilder();
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

