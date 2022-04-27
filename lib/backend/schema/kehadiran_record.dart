import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'kehadiran_record.g.dart';

abstract class KehadiranRecord
    implements Built<KehadiranRecord, KehadiranRecordBuilder> {
  static Serializer<KehadiranRecord> get serializer =>
      _$kehadiranRecordSerializer;

  @nullable
  DocumentReference get pengguna;

  @nullable
  @BuiltValueField(wireName: 'waktu_kerja')
  DateTime get waktuKerja;

  @nullable
  @BuiltValueField(wireName: 'waktu_masuk')
  DateTime get waktuMasuk;

  @nullable
  @BuiltValueField(wireName: 'waktu_pulang')
  DateTime get waktuPulang;

  @nullable
  String get status;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(KehadiranRecordBuilder builder) =>
      builder..status = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('kehadiran');

  static Stream<KehadiranRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<KehadiranRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  KehadiranRecord._();
  factory KehadiranRecord([void Function(KehadiranRecordBuilder) updates]) =
      _$KehadiranRecord;

  static KehadiranRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createKehadiranRecordData({
  DocumentReference pengguna,
  DateTime waktuKerja,
  DateTime waktuMasuk,
  DateTime waktuPulang,
  String status,
}) =>
    serializers.toFirestore(
        KehadiranRecord.serializer,
        KehadiranRecord((k) => k
          ..pengguna = pengguna
          ..waktuKerja = waktuKerja
          ..waktuMasuk = waktuMasuk
          ..waktuPulang = waktuPulang
          ..status = status));
