// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PatientRecord> _$patientRecordSerializer =
    new _$PatientRecordSerializer();

class _$PatientRecordSerializer implements StructuredSerializer<PatientRecord> {
  @override
  final Iterable<Type> types = const [PatientRecord, _$PatientRecord];
  @override
  final String wireName = 'PatientRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PatientRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.patientName;
    if (value != null) {
      result
        ..add('Patient_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.patientPhoneNumber;
    if (value != null) {
      result
        ..add('Patient_phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.patientBloodGroup;
    if (value != null) {
      result
        ..add('Patient_blood_group')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.patientBirthdate;
    if (value != null) {
      result
        ..add('Patient_birthdate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.patientId;
    if (value != null) {
      result
        ..add('Patient_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.patientEmail;
    if (value != null) {
      result
        ..add('Patient_email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  PatientRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PatientRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Patient_name':
          result.patientName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Patient_phone_number':
          result.patientPhoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Patient_blood_group':
          result.patientBloodGroup = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Patient_birthdate':
          result.patientBirthdate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Patient_id':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Patient_email':
          result.patientEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$PatientRecord extends PatientRecord {
  @override
  final String? patientName;
  @override
  final String? patientPhoneNumber;
  @override
  final String? patientBloodGroup;
  @override
  final DateTime? patientBirthdate;
  @override
  final String? patientId;
  @override
  final String? patientEmail;
  @override
  final DocumentReference<Object?>? uid;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PatientRecord([void Function(PatientRecordBuilder)? updates]) =>
      (new PatientRecordBuilder()..update(updates))._build();

  _$PatientRecord._(
      {this.patientName,
      this.patientPhoneNumber,
      this.patientBloodGroup,
      this.patientBirthdate,
      this.patientId,
      this.patientEmail,
      this.uid,
      this.ffRef})
      : super._();

  @override
  PatientRecord rebuild(void Function(PatientRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatientRecordBuilder toBuilder() => new PatientRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatientRecord &&
        patientName == other.patientName &&
        patientPhoneNumber == other.patientPhoneNumber &&
        patientBloodGroup == other.patientBloodGroup &&
        patientBirthdate == other.patientBirthdate &&
        patientId == other.patientId &&
        patientEmail == other.patientEmail &&
        uid == other.uid &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, patientName.hashCode),
                                patientPhoneNumber.hashCode),
                            patientBloodGroup.hashCode),
                        patientBirthdate.hashCode),
                    patientId.hashCode),
                patientEmail.hashCode),
            uid.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PatientRecord')
          ..add('patientName', patientName)
          ..add('patientPhoneNumber', patientPhoneNumber)
          ..add('patientBloodGroup', patientBloodGroup)
          ..add('patientBirthdate', patientBirthdate)
          ..add('patientId', patientId)
          ..add('patientEmail', patientEmail)
          ..add('uid', uid)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PatientRecordBuilder
    implements Builder<PatientRecord, PatientRecordBuilder> {
  _$PatientRecord? _$v;

  String? _patientName;
  String? get patientName => _$this._patientName;
  set patientName(String? patientName) => _$this._patientName = patientName;

  String? _patientPhoneNumber;
  String? get patientPhoneNumber => _$this._patientPhoneNumber;
  set patientPhoneNumber(String? patientPhoneNumber) =>
      _$this._patientPhoneNumber = patientPhoneNumber;

  String? _patientBloodGroup;
  String? get patientBloodGroup => _$this._patientBloodGroup;
  set patientBloodGroup(String? patientBloodGroup) =>
      _$this._patientBloodGroup = patientBloodGroup;

  DateTime? _patientBirthdate;
  DateTime? get patientBirthdate => _$this._patientBirthdate;
  set patientBirthdate(DateTime? patientBirthdate) =>
      _$this._patientBirthdate = patientBirthdate;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _patientEmail;
  String? get patientEmail => _$this._patientEmail;
  set patientEmail(String? patientEmail) => _$this._patientEmail = patientEmail;

  DocumentReference<Object?>? _uid;
  DocumentReference<Object?>? get uid => _$this._uid;
  set uid(DocumentReference<Object?>? uid) => _$this._uid = uid;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PatientRecordBuilder() {
    PatientRecord._initializeBuilder(this);
  }

  PatientRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientName = $v.patientName;
      _patientPhoneNumber = $v.patientPhoneNumber;
      _patientBloodGroup = $v.patientBloodGroup;
      _patientBirthdate = $v.patientBirthdate;
      _patientId = $v.patientId;
      _patientEmail = $v.patientEmail;
      _uid = $v.uid;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatientRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PatientRecord;
  }

  @override
  void update(void Function(PatientRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatientRecord build() => _build();

  _$PatientRecord _build() {
    final _$result = _$v ??
        new _$PatientRecord._(
            patientName: patientName,
            patientPhoneNumber: patientPhoneNumber,
            patientBloodGroup: patientBloodGroup,
            patientBirthdate: patientBirthdate,
            patientId: patientId,
            patientEmail: patientEmail,
            uid: uid,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
