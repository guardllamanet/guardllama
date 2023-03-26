//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'query_log_reason.g.dart';

class QueryLogReason extends EnumClass {

  @BuiltValueEnumConst(wireName: r'UNKNOWN')
  static const QueryLogReason UNKNOWN = _$UNKNOWN;
  @BuiltValueEnumConst(wireName: r'FILTERED_BLOCK_LIST')
  static const QueryLogReason FILTERED_BLOCK_LIST = _$FILTERED_BLOCK_LIST;
  @BuiltValueEnumConst(wireName: r'ALLOWED')
  static const QueryLogReason ALLOWED = _$ALLOWED;

  static Serializer<QueryLogReason> get serializer => _$queryLogReasonSerializer;

  const QueryLogReason._(String name): super(name);

  static BuiltSet<QueryLogReason> get values => _$values;
  static QueryLogReason valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class QueryLogReasonMixin = Object with _$QueryLogReasonMixin;

