// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppointmentRecord> _$appointmentRecordSerializer =
    new _$AppointmentRecordSerializer();

class _$AppointmentRecordSerializer
    implements StructuredSerializer<AppointmentRecord> {
  @override
  final Iterable<Type> types = const [AppointmentRecord, _$AppointmentRecord];
  @override
  final String wireName = 'AppointmentRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppointmentRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.patientId;
    if (value != null) {
      result
        ..add('Patient_id')
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
    value = object.patientDOB;
    if (value != null) {
      result
        ..add('Patient_DOB')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.appointmentPerson;
    if (value != null) {
      result
        ..add('Appointment_person')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.patientReference;
    if (value != null) {
      result
        ..add('patient_reference')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.appointmentDateTime;
    if (value != null) {
      result
        ..add('appointment_date_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ailmentChecked;
    if (value != null) {
      result
        ..add('ailment_checked')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.appointmentDescription;
    if (value != null) {
      result
        ..add('appointment_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.patName;
    if (value != null) {
      result
        ..add('pat_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.attended;
    if (value != null) {
      result
        ..add('attended')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  AppointmentRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppointmentRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Patient_id':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Patient_phone_number':
          result.patientPhoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Patient_DOB':
          result.patientDOB = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Appointment_person':
          result.appointmentPerson = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'patient_reference':
          result.patientReference = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'appointment_date_time':
          result.appointmentDateTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'ailment_checked':
          result.ailmentChecked.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'appointment_description':
          result.appointmentDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pat_name':
          result.patName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'attended':
          result.attended = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$AppointmentRecord extends AppointmentRecord {
  @override
  final String? patientId;
  @override
  final String? patientPhoneNumber;
  @override
  final DateTime? patientDOB;
  @override
  final DocumentReference<Object?>? appointmentPerson;
  @override
  final DocumentReference<Object?>? patientReference;
  @override
  final DateTime? appointmentDateTime;
  @override
  final BuiltList<String>? ailmentChecked;
  @override
  final String? appointmentDescription;
  @override
  final String? patName;
  @override
  final bool? attended;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AppointmentRecord(
          [void Function(AppointmentRecordBuilder)? updates]) =>
      (new AppointmentRecordBuilder()..update(updates))._build();

  _$AppointmentRecord._(
      {this.patientId,
      this.patientPhoneNumber,
      this.patientDOB,
      this.appointmentPerson,
      this.patientReference,
      this.appointmentDateTime,
      this.ailmentChecked,
      this.appointmentDescription,
      this.patName,
      this.attended,
      this.ffRef})
      : super._();

  @override
  AppointmentRecord rebuild(void Function(AppointmentRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppointmentRecordBuilder toBuilder() =>
      new AppointmentRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppointmentRecord &&
        patientId == other.patientId &&
        patientPhoneNumber == other.patientPhoneNumber &&
        patientDOB == other.patientDOB &&
        appointmentPerson == other.appointmentPerson &&
        patientReference == other.patientReference &&
        appointmentDateTime == other.appointmentDateTime &&
        ailmentChecked == other.ailmentChecked &&
        appointmentDescription == other.appointmentDescription &&
        patName == other.patName &&
        attended == other.attended &&
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
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, patientId.hashCode),
                                            patientPhoneNumber.hashCode),
                                        patientDOB.hashCode),
                                    appointmentPerson.hashCode),
                                patientReference.hashCode),
                            appointmentDateTime.hashCode),
                        ailmentChecked.hashCode),
                    appointmentDescription.hashCode),
                patName.hashCode),
            attended.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppointmentRecord')
          ..add('patientId', patientId)
          ..add('patientPhoneNumber', patientPhoneNumber)
          ..add('patientDOB', patientDOB)
          ..add('appointmentPerson', appointmentPerson)
          ..add('patientReference', patientReference)
          ..add('appointmentDateTime', appointmentDateTime)
          ..add('ailmentChecked', ailmentChecked)
          ..add('appointmentDescription', appointmentDescription)
          ..add('patName', patName)
          ..add('attended', attended)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AppointmentRecordBuilder
    implements Builder<AppointmentRecord, AppointmentRecordBuilder> {
  _$AppointmentRecord? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _patientPhoneNumber;
  String? get patientPhoneNumber => _$this._patientPhoneNumber;
  set patientPhoneNumber(String? patientPhoneNumber) =>
      _$this._patientPhoneNumber = patientPhoneNumber;

  DateTime? _patientDOB;
  DateTime? get patientDOB => _$this._patientDOB;
  set patientDOB(DateTime? patientDOB) => _$this._patientDOB = patientDOB;

  DocumentReference<Object?>? _appointmentPerson;
  DocumentReference<Object?>? get appointmentPerson =>
      _$this._appointmentPerson;
  set appointmentPerson(DocumentReference<Object?>? appointmentPerson) =>
      _$this._appointmentPerson = appointmentPerson;

  DocumentReference<Object?>? _patientReference;
  DocumentReference<Object?>? get patientReference => _$this._patientReference;
  set patientReference(DocumentReference<Object?>? patientReference) =>
      _$this._patientReference = patientReference;

  DateTime? _appointmentDateTime;
  DateTime? get appointmentDateTime => _$this._appointmentDateTime;
  set appointmentDateTime(DateTime? appointmentDateTime) =>
      _$this._appointmentDateTime = appointmentDateTime;

  ListBuilder<String>? _ailmentChecked;
  ListBuilder<String> get ailmentChecked =>
      _$this._ailmentChecked ??= new ListBuilder<String>();
  set ailmentChecked(ListBuilder<String>? ailmentChecked) =>
      _$this._ailmentChecked = ailmentChecked;

  String? _appointmentDescription;
  String? get appointmentDescription => _$this._appointmentDescription;
  set appointmentDescription(String? appointmentDescription) =>
      _$this._appointmentDescription = appointmentDescription;

  String? _patName;
  String? get patName => _$this._patName;
  set patName(String? patName) => _$this._patName = patName;

  bool? _attended;
  bool? get attended => _$this._attended;
  set attended(bool? attended) => _$this._attended = attended;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AppointmentRecordBuilder() {
    AppointmentRecord._initializeBuilder(this);
  }

  AppointmentRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _patientPhoneNumber = $v.patientPhoneNumber;
      _patientDOB = $v.patientDOB;
      _appointmentPerson = $v.appointmentPerson;
      _patientReference = $v.patientReference;
      _appointmentDateTime = $v.appointmentDateTime;
      _ailmentChecked = $v.ailmentChecked?.toBuilder();
      _appointmentDescription = $v.appointmentDescription;
      _patName = $v.patName;
      _attended = $v.attended;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppointmentRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppointmentRecord;
  }

  @override
  void update(void Function(AppointmentRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppointmentRecord build() => _build();

  _$AppointmentRecord _build() {
    _$AppointmentRecord _$result;
    try {
      _$result = _$v ??
          new _$AppointmentRecord._(
              patientId: patientId,
              patientPhoneNumber: patientPhoneNumber,
              patientDOB: patientDOB,
              appointmentPerson: appointmentPerson,
              patientReference: patientReference,
              appointmentDateTime: appointmentDateTime,
              ailmentChecked: _ailmentChecked?.build(),
              appointmentDescription: appointmentDescription,
              patName: patName,
              attended: attended,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ailmentChecked';
        _ailmentChecked?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AppointmentRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
