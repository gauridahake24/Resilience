// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ailmentss_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AilmentssRecord> _$ailmentssRecordSerializer =
    new _$AilmentssRecordSerializer();

class _$AilmentssRecordSerializer
    implements StructuredSerializer<AilmentssRecord> {
  @override
  final Iterable<Type> types = const [AilmentssRecord, _$AilmentssRecord];
  @override
  final String wireName = 'AilmentssRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AilmentssRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.videos;
    if (value != null) {
      result
        ..add('videos')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  AilmentssRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AilmentssRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'videos':
          result.videos.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$AilmentssRecord extends AilmentssRecord {
  @override
  final String? name;
  @override
  final BuiltList<String>? videos;
  @override
  final String? id;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AilmentssRecord([void Function(AilmentssRecordBuilder)? updates]) =>
      (new AilmentssRecordBuilder()..update(updates))._build();

  _$AilmentssRecord._({this.name, this.videos, this.id, this.ffRef})
      : super._();

  @override
  AilmentssRecord rebuild(void Function(AilmentssRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AilmentssRecordBuilder toBuilder() =>
      new AilmentssRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AilmentssRecord &&
        name == other.name &&
        videos == other.videos &&
        id == other.id &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), videos.hashCode), id.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AilmentssRecord')
          ..add('name', name)
          ..add('videos', videos)
          ..add('id', id)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AilmentssRecordBuilder
    implements Builder<AilmentssRecord, AilmentssRecordBuilder> {
  _$AilmentssRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<String>? _videos;
  ListBuilder<String> get videos =>
      _$this._videos ??= new ListBuilder<String>();
  set videos(ListBuilder<String>? videos) => _$this._videos = videos;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AilmentssRecordBuilder() {
    AilmentssRecord._initializeBuilder(this);
  }

  AilmentssRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _videos = $v.videos?.toBuilder();
      _id = $v.id;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AilmentssRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AilmentssRecord;
  }

  @override
  void update(void Function(AilmentssRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AilmentssRecord build() => _build();

  _$AilmentssRecord _build() {
    _$AilmentssRecord _$result;
    try {
      _$result = _$v ??
          new _$AilmentssRecord._(
              name: name, videos: _videos?.build(), id: id, ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'videos';
        _videos?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AilmentssRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
