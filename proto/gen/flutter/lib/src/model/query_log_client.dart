//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'query_log_client.g.dart';

/// QueryLogClient
///
/// Properties:
/// * [address] 
/// * [name] 
@BuiltValue()
abstract class QueryLogClient implements Built<QueryLogClient, QueryLogClientBuilder> {
  @BuiltValueField(wireName: r'address')
  String get address;

  @BuiltValueField(wireName: r'name')
  String get name;

  QueryLogClient._();

  factory QueryLogClient([void updates(QueryLogClientBuilder b)]) = _$QueryLogClient;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QueryLogClientBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QueryLogClient> get serializer => _$QueryLogClientSerializer();
}

class _$QueryLogClientSerializer implements PrimitiveSerializer<QueryLogClient> {
  @override
  final Iterable<Type> types = const [QueryLogClient, _$QueryLogClient];

  @override
  final String wireName = r'QueryLogClient';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QueryLogClient object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'address';
    yield serializers.serialize(
      object.address,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    QueryLogClient object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QueryLogClientBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.address = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QueryLogClient deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueryLogClientBuilder();
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

