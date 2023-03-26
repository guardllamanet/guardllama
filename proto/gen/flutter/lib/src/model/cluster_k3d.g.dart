// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cluster_k3d.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClusterK3d extends ClusterK3d {
  @override
  final String? name;
  @override
  final BuiltList<K3dNodePortRange>? nodePortRanges;

  factory _$ClusterK3d([void Function(ClusterK3dBuilder)? updates]) =>
      (new ClusterK3dBuilder()..update(updates))._build();

  _$ClusterK3d._({this.name, this.nodePortRanges}) : super._();

  @override
  ClusterK3d rebuild(void Function(ClusterK3dBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClusterK3dBuilder toBuilder() => new ClusterK3dBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClusterK3d &&
        name == other.name &&
        nodePortRanges == other.nodePortRanges;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, nodePortRanges.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClusterK3d')
          ..add('name', name)
          ..add('nodePortRanges', nodePortRanges))
        .toString();
  }
}

class ClusterK3dBuilder implements Builder<ClusterK3d, ClusterK3dBuilder> {
  _$ClusterK3d? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<K3dNodePortRange>? _nodePortRanges;
  ListBuilder<K3dNodePortRange> get nodePortRanges =>
      _$this._nodePortRanges ??= new ListBuilder<K3dNodePortRange>();
  set nodePortRanges(ListBuilder<K3dNodePortRange>? nodePortRanges) =>
      _$this._nodePortRanges = nodePortRanges;

  ClusterK3dBuilder() {
    ClusterK3d._defaults(this);
  }

  ClusterK3dBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _nodePortRanges = $v.nodePortRanges?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClusterK3d other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClusterK3d;
  }

  @override
  void update(void Function(ClusterK3dBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClusterK3d build() => _build();

  _$ClusterK3d _build() {
    _$ClusterK3d _$result;
    try {
      _$result = _$v ??
          new _$ClusterK3d._(
              name: name, nodePortRanges: _nodePortRanges?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nodePortRanges';
        _nodePortRanges?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ClusterK3d', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
