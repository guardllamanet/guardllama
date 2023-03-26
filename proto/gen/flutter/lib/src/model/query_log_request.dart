//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'query_log_request.g.dart';

/// QueryLogRequest
///
/// Properties:
/// * [class_] 
/// * [name] 
/// * [type] 
@BuiltValue()
abstract class QueryLogRequest implements Built<QueryLogRequest, QueryLogRequestBuilder> {
  @BuiltValueField(wireName: r'class')
  String get class_;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'type')
  String get type;

  QueryLogRequest._();

  factory QueryLogRequest([void updates(QueryLogRequestBuilder b)]) = _$QueryLogRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QueryLogRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QueryLogRequest> get serializer => _$QueryLogRequestSerializer();
}

class _$QueryLogRequestSerializer implements PrimitiveSerializer<QueryLogRequest> {
  @override
  final Iterable<Type> types = const [QueryLogRequest, _$QueryLogRequest];

  @override
  final String wireName = r'QueryLogRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QueryLogRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'class';
    yield serializers.serialize(
      object.class_,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    QueryLogRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QueryLogRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'class':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.class_ = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QueryLogRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueryLogRequestBuilder();
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

