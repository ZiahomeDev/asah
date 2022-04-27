import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'chat_record.g.dart';

abstract class ChatRecord implements Built<ChatRecord, ChatRecordBuilder> {
  static Serializer<ChatRecord> get serializer => _$chatRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'ref_user')
  DocumentReference get refUser;

  @nullable
  String get pesan;

  @nullable
  DateTime get tanggalPesan;

  @nullable
  String get gambar;

  @nullable
  @BuiltValueField(wireName: 'link_youtube')
  String get linkYoutube;

  @nullable
  @BuiltValueField(wireName: 'link_file')
  String get linkFile;

  @nullable
  bool get img;

  @nullable
  bool get yt;

  @nullable
  bool get pdf;

  @nullable
  bool get msg;

  @nullable
  @BuiltValueField(wireName: 'pesan_img')
  String get pesanImg;

  @nullable
  @BuiltValueField(wireName: 'pesan_yt')
  String get pesanYt;

  @nullable
  @BuiltValueField(wireName: 'pesan_pdf')
  String get pesanPdf;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ChatRecordBuilder builder) => builder
    ..pesan = ''
    ..gambar = ''
    ..linkYoutube = ''
    ..linkFile = ''
    ..img = false
    ..yt = false
    ..pdf = false
    ..msg = false
    ..pesanImg = ''
    ..pesanYt = ''
    ..pesanPdf = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chat');

  static Stream<ChatRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ChatRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ChatRecord._();
  factory ChatRecord([void Function(ChatRecordBuilder) updates]) = _$ChatRecord;

  static ChatRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createChatRecordData({
  DocumentReference refUser,
  String pesan,
  DateTime tanggalPesan,
  String gambar,
  String linkYoutube,
  String linkFile,
  bool img,
  bool yt,
  bool pdf,
  bool msg,
  String pesanImg,
  String pesanYt,
  String pesanPdf,
}) =>
    serializers.toFirestore(
        ChatRecord.serializer,
        ChatRecord((c) => c
          ..refUser = refUser
          ..pesan = pesan
          ..tanggalPesan = tanggalPesan
          ..gambar = gambar
          ..linkYoutube = linkYoutube
          ..linkFile = linkFile
          ..img = img
          ..yt = yt
          ..pdf = pdf
          ..msg = msg
          ..pesanImg = pesanImg
          ..pesanYt = pesanYt
          ..pesanPdf = pesanPdf));
