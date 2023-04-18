import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'appointment_record.g.dart';

abstract class AppointmentRecord
    implements Built<AppointmentRecord, AppointmentRecordBuilder> {
  static Serializer<AppointmentRecord> get serializer =>
      _$appointmentRecordSerializer;

  @BuiltValueField(wireName: 'Patient_id')
  String? get patientId;

  @BuiltValueField(wireName: 'Patient_phone_number')
  String? get patientPhoneNumber;

  @BuiltValueField(wireName: 'Patient_DOB')
  DateTime? get patientDOB;

  @BuiltValueField(wireName: 'Appointment_person')
  DocumentReference? get appointmentPerson;

  @BuiltValueField(wireName: 'patient_reference')
  DocumentReference? get patientReference;

  @BuiltValueField(wireName: 'appointment_date_time')
  DateTime? get appointmentDateTime;

  @BuiltValueField(wireName: 'ailment_checked')
  BuiltList<String>? get ailmentChecked;

  @BuiltValueField(wireName: 'appointment_description')
  String? get appointmentDescription;

  @BuiltValueField(wireName: 'pat_name')
  String? get patName;

  bool? get attended;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AppointmentRecordBuilder builder) => builder
    ..patientId = ''
    ..patientPhoneNumber = ''
    ..ailmentChecked = ListBuilder()
    ..appointmentDescription = ''
    ..patName = ''
    ..attended = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Appointment');

  static Stream<AppointmentRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AppointmentRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AppointmentRecord._();
  factory AppointmentRecord([void Function(AppointmentRecordBuilder) updates]) =
      _$AppointmentRecord;

  static AppointmentRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAppointmentRecordData({
  String? patientId,
  String? patientPhoneNumber,
  DateTime? patientDOB,
  DocumentReference? appointmentPerson,
  DocumentReference? patientReference,
  DateTime? appointmentDateTime,
  String? appointmentDescription,
  String? patName,
  bool? attended,
}) {
  final firestoreData = serializers.toFirestore(
    AppointmentRecord.serializer,
    AppointmentRecord(
      (a) => a
        ..patientId = patientId
        ..patientPhoneNumber = patientPhoneNumber
        ..patientDOB = patientDOB
        ..appointmentPerson = appointmentPerson
        ..patientReference = patientReference
        ..appointmentDateTime = appointmentDateTime
        ..ailmentChecked = null
        ..appointmentDescription = appointmentDescription
        ..patName = patName
        ..attended = attended,
    ),
  );

  return firestoreData;
}
