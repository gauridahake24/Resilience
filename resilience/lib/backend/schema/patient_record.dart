import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'patient_record.g.dart';

abstract class PatientRecord
    implements Built<PatientRecord, PatientRecordBuilder> {
  static Serializer<PatientRecord> get serializer => _$patientRecordSerializer;

  @BuiltValueField(wireName: 'Patient_name')
  String? get patientName;

  @BuiltValueField(wireName: 'Patient_phone_number')
  String? get patientPhoneNumber;

  @BuiltValueField(wireName: 'Patient_blood_group')
  String? get patientBloodGroup;

  @BuiltValueField(wireName: 'Patient_birthdate')
  DateTime? get patientBirthdate;

  @BuiltValueField(wireName: 'Patient_id')
  String? get patientId;

  @BuiltValueField(wireName: 'Patient_email')
  String? get patientEmail;

  DocumentReference? get uid;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PatientRecordBuilder builder) => builder
    ..patientName = ''
    ..patientPhoneNumber = ''
    ..patientBloodGroup = ''
    ..patientId = ''
    ..patientEmail = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Patient');

  static Stream<PatientRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PatientRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PatientRecord._();
  factory PatientRecord([void Function(PatientRecordBuilder) updates]) =
      _$PatientRecord;

  static PatientRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPatientRecordData({
  String? patientName,
  String? patientPhoneNumber,
  String? patientBloodGroup,
  DateTime? patientBirthdate,
  String? patientId,
  String? patientEmail,
  DocumentReference? uid,
}) {
  final firestoreData = serializers.toFirestore(
    PatientRecord.serializer,
    PatientRecord(
      (p) => p
        ..patientName = patientName
        ..patientPhoneNumber = patientPhoneNumber
        ..patientBloodGroup = patientBloodGroup
        ..patientBirthdate = patientBirthdate
        ..patientId = patientId
        ..patientEmail = patientEmail
        ..uid = uid,
    ),
  );

  return firestoreData;
}
