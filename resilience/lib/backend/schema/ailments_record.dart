import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ailments_record.g.dart';

abstract class AilmentsRecord
    implements Built<AilmentsRecord, AilmentsRecordBuilder> {
  static Serializer<AilmentsRecord> get serializer =>
      _$ailmentsRecordSerializer;

  @BuiltValueField(wireName: 'ailment_name')
  BuiltList<String>? get ailmentName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AilmentsRecordBuilder builder) =>
      builder..ailmentName = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ailments');

  static Stream<AilmentsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AilmentsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AilmentsRecord._();
  factory AilmentsRecord([void Function(AilmentsRecordBuilder) updates]) =
      _$AilmentsRecord;

  static AilmentsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAilmentsRecordData() {
  final firestoreData = serializers.toFirestore(
    AilmentsRecord.serializer,
    AilmentsRecord(
      (a) => a..ailmentName = null,
    ),
  );

  return firestoreData;
}
