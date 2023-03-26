// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_log_reason.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const QueryLogReason _$UNKNOWN = const QueryLogReason._('UNKNOWN');
const QueryLogReason _$FILTERED_BLOCK_LIST =
    const QueryLogReason._('FILTERED_BLOCK_LIST');
const QueryLogReason _$ALLOWED = const QueryLogReason._('ALLOWED');

QueryLogReason _$valueOf(String name) {
  switch (name) {
    case 'UNKNOWN':
      return _$UNKNOWN;
    case 'FILTERED_BLOCK_LIST':
      return _$FILTERED_BLOCK_LIST;
    case 'ALLOWED':
      return _$ALLOWED;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<QueryLogReason> _$values =
    new BuiltSet<QueryLogReason>(const <QueryLogReason>[
  _$UNKNOWN,
  _$FILTERED_BLOCK_LIST,
  _$ALLOWED,
]);

class _$QueryLogReasonMeta {
  const _$QueryLogReasonMeta();
  QueryLogReason get UNKNOWN => _$UNKNOWN;
  QueryLogReason get FILTERED_BLOCK_LIST => _$FILTERED_BLOCK_LIST;
  QueryLogReason get ALLOWED => _$ALLOWED;
  QueryLogReason valueOf(String name) => _$valueOf(name);
  BuiltSet<QueryLogReason> get values => _$values;
}

abstract class _$QueryLogReasonMixin {
  // ignore: non_constant_identifier_names
  _$QueryLogReasonMeta get QueryLogReason => const _$QueryLogReasonMeta();
}

Serializer<QueryLogReason> _$queryLogReasonSerializer =
    new _$QueryLogReasonSerializer();

class _$QueryLogReasonSerializer
    implements PrimitiveSerializer<QueryLogReason> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'UNKNOWN': 'UNKNOWN',
    'FILTERED_BLOCK_LIST': 'FILTERED_BLOCK_LIST',
    'ALLOWED': 'ALLOWED',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'UNKNOWN': 'UNKNOWN',
    'FILTERED_BLOCK_LIST': 'FILTERED_BLOCK_LIST',
    'ALLOWED': 'ALLOWED',
  };

  @override
  final Iterable<Type> types = const <Type>[QueryLogReason];
  @override
  final String wireName = 'QueryLogReason';

  @override
  Object serialize(Serializers serializers, QueryLogReason object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  QueryLogReason deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      QueryLogReason.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
