import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'pengumuman_record.g.dart';

abstract class PengumumanRecord
    implements Built<PengumumanRecord, PengumumanRecordBuilder> {
  static Serializer<PengumumanRecord> get serializer =>
      _$pengumumanRecordSerializer;

  @nullable
  DateTime get tanggal;

  @nullable
  @BuiltValueField(wireName: 'isi_pengumuman')
  String get isiPengumuman;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PengumumanRecordBuilder builder) =>
      builder..isiPengumuman = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pengumuman');

  static Stream<PengumumanRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PengumumanRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PengumumanRecord._();
  factory PengumumanRecord([void Function(PengumumanRecordBuilder) updates]) =
      _$PengumumanRecord;

  static PengumumanRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPengumumanRecordData({
  DateTime tanggal,
  String isiPengumuman,
}) =>
    serializers.toFirestore(
        PengumumanRecord.serializer,
        PengumumanRecord((p) => p
          ..tanggal = tanggal
          ..isiPengumuman = isiPengumuman));
