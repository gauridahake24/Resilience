import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ailmentss_record.g.dart';

abstract class AilmentssRecord
    implements Built<AilmentssRecord, AilmentssRecordBuilder> {
  static Serializer<AilmentssRecord> get serializer =>
      _$ailmentssRecordSerializer;

  String? get name;

  BuiltList<String>? get videos;

  String? get id;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AilmentssRecordBuilder builder) => builder
    ..name = ''
    ..videos = ListBuilder()
    ..id = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ailmentss');

  static Stream<AilmentssRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AilmentssRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AilmentssRecord._();
  factory AilmentssRecord([void Function(AilmentssRecordBuilder) updates]) =
      _$AilmentssRecord;

  static AilmentssRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAilmentssRecordData({
  String? name,
  String? id,
}) {
  final firestoreData = serializers.toFirestore(
    AilmentssRecord.serializer,
    AilmentssRecord(
      (a) => a
        ..name = name
        ..videos = null
        ..id = id,
    ),
  );

  return firestoreData;
}
