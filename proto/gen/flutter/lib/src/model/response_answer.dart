//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_answer.g.dart';

/// ResponseAnswer
///
/// Properties:
/// * [type] 
/// * [value] 
/// * [ttl] 
@BuiltValue()
abstract class ResponseAnswer implements Built<ResponseAnswer, ResponseAnswerBuilder> {
  @BuiltValueField(wireName: r'type')
  String get type;

  @BuiltValueField(wireName: r'value')
  String get value;

  @BuiltValueField(wireName: r'ttl')
  int? get ttl;

  ResponseAnswer._();

  factory ResponseAnswer([void updates(ResponseAnswerBuilder b)]) = _$ResponseAnswer;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResponseAnswerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResponseAnswer> get serializer => _$ResponseAnswerSerializer();
}

class _$ResponseAnswerSerializer implements PrimitiveSerializer<ResponseAnswer> {
  @override
  final Iterable<Type> types = const [ResponseAnswer, _$ResponseAnswer];

  @override
  final String wireName = r'ResponseAnswer';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResponseAnswer object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(String),
    );
    if (object.ttl != null) {
      yield r'ttl';
      yield serializers.serialize(
        object.ttl,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ResponseAnswer object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ResponseAnswerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        case r'ttl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.ttl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResponseAnswer deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResponseAnswerBuilder();
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

