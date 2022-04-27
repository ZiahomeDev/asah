import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'status_layanan_digital_record.g.dart';

abstract class StatusLayananDigitalRecord
    implements
        Built<StatusLayananDigitalRecord, StatusLayananDigitalRecordBuilder> {
  static Serializer<StatusLayananDigitalRecord> get serializer =>
      _$statusLayananDigitalRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'nama_layanan')
  String get namaLayanan;

  @nullable
  String get status;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(StatusLayananDigitalRecordBuilder builder) =>
      builder
        ..namaLayanan = ''
        ..status = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('status_layanan_digital');

  static Stream<StatusLayananDigitalRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<StatusLayananDigitalRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  StatusLayananDigitalRecord._();
  factory StatusLayananDigitalRecord(
          [void Function(StatusLayananDigitalRecordBuilder) updates]) =
      _$StatusLayananDigitalRecord;

  static StatusLayananDigitalRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createStatusLayananDigitalRecordData({
  String namaLayanan,
  String status,
}) =>
    serializers.toFirestore(
        StatusLayananDigitalRecord.serializer,
        StatusLayananDigitalRecord((s) => s
          ..namaLayanan = namaLayanan
          ..status = status));
