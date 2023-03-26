// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_answer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResponseAnswer extends ResponseAnswer {
  @override
  final String type;
  @override
  final String value;
  @override
  final int? ttl;

  factory _$ResponseAnswer([void Function(ResponseAnswerBuilder)? updates]) =>
      (new ResponseAnswerBuilder()..update(updates))._build();

  _$ResponseAnswer._({required this.type, required this.value, this.ttl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(type, r'ResponseAnswer', 'type');
    BuiltValueNullFieldError.checkNotNull(value, r'ResponseAnswer', 'value');
  }

  @override
  ResponseAnswer rebuild(void Function(ResponseAnswerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResponseAnswerBuilder toBuilder() =>
      new ResponseAnswerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResponseAnswer &&
        type == other.type &&
        value == other.value &&
        ttl == other.ttl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, ttl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResponseAnswer')
          ..add('type', type)
          ..add('value', value)
          ..add('ttl', ttl))
        .toString();
  }
}

class ResponseAnswerBuilder
    implements Builder<ResponseAnswer, ResponseAnswerBuilder> {
  _$ResponseAnswer? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  int? _ttl;
  int? get ttl => _$this._ttl;
  set ttl(int? ttl) => _$this._ttl = ttl;

  ResponseAnswerBuilder() {
    ResponseAnswer._defaults(this);
  }

  ResponseAnswerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _value = $v.value;
      _ttl = $v.ttl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResponseAnswer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResponseAnswer;
  }

  @override
  void update(void Function(ResponseAnswerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResponseAnswer build() => _build();

  _$ResponseAnswer _build() {
    final _$result = _$v ??
        new _$ResponseAnswer._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'ResponseAnswer', 'type'),
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'ResponseAnswer', 'value'),
            ttl: ttl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
