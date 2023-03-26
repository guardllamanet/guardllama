// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_log_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QueryLogRequest extends QueryLogRequest {
  @override
  final String class_;
  @override
  final String name;
  @override
  final String type;

  factory _$QueryLogRequest([void Function(QueryLogRequestBuilder)? updates]) =>
      (new QueryLogRequestBuilder()..update(updates))._build();

  _$QueryLogRequest._(
      {required this.class_, required this.name, required this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(class_, r'QueryLogRequest', 'class_');
    BuiltValueNullFieldError.checkNotNull(name, r'QueryLogRequest', 'name');
    BuiltValueNullFieldError.checkNotNull(type, r'QueryLogRequest', 'type');
  }

  @override
  QueryLogRequest rebuild(void Function(QueryLogRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QueryLogRequestBuilder toBuilder() =>
      new QueryLogRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QueryLogRequest &&
        class_ == other.class_ &&
        name == other.name &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, class_.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QueryLogRequest')
          ..add('class_', class_)
          ..add('name', name)
          ..add('type', type))
        .toString();
  }
}

class QueryLogRequestBuilder
    implements Builder<QueryLogRequest, QueryLogRequestBuilder> {
  _$QueryLogRequest? _$v;

  String? _class_;
  String? get class_ => _$this._class_;
  set class_(String? class_) => _$this._class_ = class_;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  QueryLogRequestBuilder() {
    QueryLogRequest._defaults(this);
  }

  QueryLogRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _class_ = $v.class_;
      _name = $v.name;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QueryLogRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QueryLogRequest;
  }

  @override
  void update(void Function(QueryLogRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QueryLogRequest build() => _build();

  _$QueryLogRequest _build() {
    final _$result = _$v ??
        new _$QueryLogRequest._(
            class_: BuiltValueNullFieldError.checkNotNull(
                class_, r'QueryLogRequest', 'class_'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'QueryLogRequest', 'name'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'QueryLogRequest', 'type'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
