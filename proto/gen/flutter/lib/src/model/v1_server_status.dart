//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_server_status.g.dart';

/// V1ServerStatus
///
/// Properties:
/// * [machineIp] 
/// * [serverVersion] 
/// * [kubernetesDistribution] 
/// * [kubernetesVersion] 
@BuiltValue()
abstract class V1ServerStatus implements Built<V1ServerStatus, V1ServerStatusBuilder> {
  @BuiltValueField(wireName: r'machine_ip')
  String? get machineIp;

  @BuiltValueField(wireName: r'server_version')
  String? get serverVersion;

  @BuiltValueField(wireName: r'kubernetes_distribution')
  String? get kubernetesDistribution;

  @BuiltValueField(wireName: r'kubernetes_version')
  String? get kubernetesVersion;

  V1ServerStatus._();

  factory V1ServerStatus([void updates(V1ServerStatusBuilder b)]) = _$V1ServerStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1ServerStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1ServerStatus> get serializer => _$V1ServerStatusSerializer();
}

class _$V1ServerStatusSerializer implements PrimitiveSerializer<V1ServerStatus> {
  @override
  final Iterable<Type> types = const [V1ServerStatus, _$V1ServerStatus];

  @override
  final String wireName = r'V1ServerStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1ServerStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.machineIp != null) {
      yield r'machine_ip';
      yield serializers.serialize(
        object.machineIp,
        specifiedType: const FullType(String),
      );
    }
    if (object.serverVersion != null) {
      yield r'server_version';
      yield serializers.serialize(
        object.serverVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.kubernetesDistribution != null) {
      yield r'kubernetes_distribution';
      yield serializers.serialize(
        object.kubernetesDistribution,
        specifiedType: const FullType(String),
      );
    }
    if (object.kubernetesVersion != null) {
      yield r'kubernetes_version';
      yield serializers.serialize(
        object.kubernetesVersion,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1ServerStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1ServerStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'machine_ip':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.machineIp = valueDes;
          break;
        case r'server_version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.serverVersion = valueDes;
          break;
        case r'kubernetes_distribution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kubernetesDistribution = valueDes;
          break;
        case r'kubernetes_version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kubernetesVersion = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1ServerStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1ServerStatusBuilder();
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

