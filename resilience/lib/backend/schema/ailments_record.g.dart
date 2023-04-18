// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ailments_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AilmentsRecord> _$ailmentsRecordSerializer =
    new _$AilmentsRecordSerializer();

class _$AilmentsRecordSerializer
    implements StructuredSerializer<AilmentsRecord> {
  @override
  final Iterable<Type> types = const [AilmentsRecord, _$AilmentsRecord];
  @override
  final String wireName = 'AilmentsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AilmentsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.ailmentName;
    if (value != null) {
      result
        ..add('ailment_name')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  AilmentsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AilmentsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ailment_name':
          result.ailmentName.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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

class _$AilmentsRecord extends AilmentsRecord {
  @override
  final BuiltList<String>? ailmentName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AilmentsRecord([void Function(AilmentsRecordBuilder)? updates]) =>
      (new AilmentsRecordBuilder()..update(updates))._build();

  _$AilmentsRecord._({this.ailmentName, this.ffRef}) : super._();

  @override
  AilmentsRecord rebuild(void Function(AilmentsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AilmentsRecordBuilder toBuilder() =>
      new AilmentsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AilmentsRecord &&
        ailmentName == other.ailmentName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, ailmentName.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AilmentsRecord')
          ..add('ailmentName', ailmentName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AilmentsRecordBuilder
    implements Builder<AilmentsRecord, AilmentsRecordBuilder> {
  _$AilmentsRecord? _$v;

  ListBuilder<String>? _ailmentName;
  ListBuilder<String> get ailmentName =>
      _$this._ailmentName ??= new ListBuilder<String>();
  set ailmentName(ListBuilder<String>? ailmentName) =>
      _$this._ailmentName = ailmentName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AilmentsRecordBuilder() {
    AilmentsRecord._initializeBuilder(this);
  }

  AilmentsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ailmentName = $v.ailmentName?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AilmentsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AilmentsRecord;
  }

  @override
  void update(void Function(AilmentsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AilmentsRecord build() => _build();

  _$AilmentsRecord _build() {
    _$AilmentsRecord _$result;
    try {
      _$result = _$v ??
          new _$AilmentsRecord._(
              ailmentName: _ailmentName?.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ailmentName';
        _ailmentName?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AilmentsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
