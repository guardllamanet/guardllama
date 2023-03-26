//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:guardllama_api/src/model/k3d_node_port_range.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cluster_k3d.g.dart';

/// ClusterK3d
///
/// Properties:
/// * [name] 
/// * [nodePortRanges] 
@BuiltValue()
abstract class ClusterK3d implements Built<ClusterK3d, ClusterK3dBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'node_port_ranges')
  BuiltList<K3dNodePortRange>? get nodePortRanges;

  ClusterK3d._();

  factory ClusterK3d([void updates(ClusterK3dBuilder b)]) = _$ClusterK3d;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ClusterK3dBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ClusterK3d> get serializer => _$ClusterK3dSerializer();
}

class _$ClusterK3dSerializer implements PrimitiveSerializer<ClusterK3d> {
  @override
  final Iterable<Type> types = const [ClusterK3d, _$ClusterK3d];

  @override
  final String wireName = r'ClusterK3d';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ClusterK3d object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.nodePortRanges != null) {
      yield r'node_port_ranges';
      yield serializers.serialize(
        object.nodePortRanges,
        specifiedType: const FullType(BuiltList, [FullType(K3dNodePortRange)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ClusterK3d object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ClusterK3dBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'node_port_ranges':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(K3dNodePortRange)]),
          ) as BuiltList<K3dNodePortRange>;
          result.nodePortRanges.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ClusterK3d deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClusterK3dBuilder();
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

