//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:guardllama_api/src/model/protobuf_any.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rpc_status.g.dart';

/// RpcStatus
///
/// Properties:
/// * [code] 
/// * [message] 
/// * [details] 
@BuiltValue()
abstract class RpcStatus implements Built<RpcStatus, RpcStatusBuilder> {
  @BuiltValueField(wireName: r'code')
  int? get code;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'details')
  BuiltList<ProtobufAny>? get details;

  RpcStatus._();

  factory RpcStatus([void updates(RpcStatusBuilder b)]) = _$RpcStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RpcStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RpcStatus> get serializer => _$RpcStatusSerializer();
}

class _$RpcStatusSerializer implements PrimitiveSerializer<RpcStatus> {
  @override
  final Iterable<Type> types = const [RpcStatus, _$RpcStatus];

  @override
  final String wireName = r'RpcStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RpcStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.code != null) {
      yield r'code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType(int),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.details != null) {
      yield r'details';
      yield serializers.serialize(
        object.details,
        specifiedType: const FullType(BuiltList, [FullType(ProtobufAny)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RpcStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RpcStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.code = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'details':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ProtobufAny)]),
          ) as BuiltList<ProtobufAny>;
          result.details.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RpcStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RpcStatusBuilder();
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

