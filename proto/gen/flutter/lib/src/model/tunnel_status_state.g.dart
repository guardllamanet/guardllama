// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tunnel_status_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TunnelStatusState _$PENDING = const TunnelStatusState._('PENDING');
const TunnelStatusState _$READY = const TunnelStatusState._('READY');
const TunnelStatusState _$ERROR = const TunnelStatusState._('ERROR');

TunnelStatusState _$valueOf(String name) {
  switch (name) {
    case 'PENDING':
      return _$PENDING;
    case 'READY':
      return _$READY;
    case 'ERROR':
      return _$ERROR;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TunnelStatusState> _$values =
    new BuiltSet<TunnelStatusState>(const <TunnelStatusState>[
  _$PENDING,
  _$READY,
  _$ERROR,
]);

class _$TunnelStatusStateMeta {
  const _$TunnelStatusStateMeta();
  TunnelStatusState get PENDING => _$PENDING;
  TunnelStatusState get READY => _$READY;
  TunnelStatusState get ERROR => _$ERROR;
  TunnelStatusState valueOf(String name) => _$valueOf(name);
  BuiltSet<TunnelStatusState> get values => _$values;
}

abstract class _$TunnelStatusStateMixin {
  // ignore: non_constant_identifier_names
  _$TunnelStatusStateMeta get TunnelStatusState =>
      const _$TunnelStatusStateMeta();
}

Serializer<TunnelStatusState> _$tunnelStatusStateSerializer =
    new _$TunnelStatusStateSerializer();

class _$TunnelStatusStateSerializer
    implements PrimitiveSerializer<TunnelStatusState> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'PENDING': 'PENDING',
    'READY': 'READY',
    'ERROR': 'ERROR',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PENDING': 'PENDING',
    'READY': 'READY',
    'ERROR': 'ERROR',
  };

  @override
  final Iterable<Type> types = const <Type>[TunnelStatusState];
  @override
  final String wireName = 'TunnelStatusState';

  @override
  Object serialize(Serializers serializers, TunnelStatusState object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TunnelStatusState deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TunnelStatusState.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
