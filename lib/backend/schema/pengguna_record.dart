import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'pengguna_record.g.dart';

abstract class PenggunaRecord
    implements Built<PenggunaRecord, PenggunaRecordBuilder> {
  static Serializer<PenggunaRecord> get serializer =>
      _$penggunaRecordSerializer;

  @nullable
  String get jabatan;

  @nullable
  @BuiltValueField(wireName: 'status_kehadiran')
  String get statusKehadiran;

  @nullable
  String get pesan;

  @nullable
  @BuiltValueField(wireName: 'jenis_pengguna')
  String get jenisPengguna;

  @nullable
  @BuiltValueField(wireName: 'nama_lengkap')
  String get namaLengkap;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  DocumentReference get pathID;

  @nullable
  @BuiltValueField(wireName: 'urutan_data')
  int get urutanData;

  @nullable
  @BuiltValueField(wireName: 'jenis_jabatan')
  String get jenisJabatan;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PenggunaRecordBuilder builder) => builder
    ..jabatan = ''
    ..statusKehadiran = ''
    ..pesan = ''
    ..jenisPengguna = ''
    ..namaLengkap = ''
    ..displayName = ''
    ..email = ''
    ..photoUrl = ''
    ..phoneNumber = ''
    ..uid = ''
    ..urutanData = 0
    ..jenisJabatan = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pengguna');

  static Stream<PenggunaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PenggunaRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PenggunaRecord._();
  factory PenggunaRecord([void Function(PenggunaRecordBuilder) updates]) =
      _$PenggunaRecord;

  static PenggunaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPenggunaRecordData({
  String jabatan,
  String statusKehadiran,
  String pesan,
  String jenisPengguna,
  String namaLengkap,
  String displayName,
  String email,
  String photoUrl,
  String phoneNumber,
  String uid,
  DateTime createdTime,
  DocumentReference pathID,
  int urutanData,
  String jenisJabatan,
}) =>
    serializers.toFirestore(
        PenggunaRecord.serializer,
        PenggunaRecord((p) => p
          ..jabatan = jabatan
          ..statusKehadiran = statusKehadiran
          ..pesan = pesan
          ..jenisPengguna = jenisPengguna
          ..namaLengkap = namaLengkap
          ..displayName = displayName
          ..email = email
          ..photoUrl = photoUrl
          ..phoneNumber = phoneNumber
          ..uid = uid
          ..createdTime = createdTime
          ..pathID = pathID
          ..urutanData = urutanData
          ..jenisJabatan = jenisJabatan));
