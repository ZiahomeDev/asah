import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'status_administrasi_record.g.dart';

abstract class StatusAdministrasiRecord
    implements
        Built<StatusAdministrasiRecord, StatusAdministrasiRecordBuilder> {
  static Serializer<StatusAdministrasiRecord> get serializer =>
      _$statusAdministrasiRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'nama_layanan')
  String get namaLayanan;

  @nullable
  String get status;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(StatusAdministrasiRecordBuilder builder) =>
      builder
        ..namaLayanan = ''
        ..status = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('status_administrasi');

  static Stream<StatusAdministrasiRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<StatusAdministrasiRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  StatusAdministrasiRecord._();
  factory StatusAdministrasiRecord(
          [void Function(StatusAdministrasiRecordBuilder) updates]) =
      _$StatusAdministrasiRecord;

  static StatusAdministrasiRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createStatusAdministrasiRecordData({
  String namaLayanan,
  String status,
}) =>
    serializers.toFirestore(
        StatusAdministrasiRecord.serializer,
        StatusAdministrasiRecord((s) => s
          ..namaLayanan = namaLayanan
          ..status = status));
