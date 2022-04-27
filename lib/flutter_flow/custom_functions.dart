import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String imgAlt(
  String photoUrl,
  String alternative,
) {
  if (photoUrl.isEmpty) {
    return alternative;
  } else {
    return photoUrl;
  }
}

bool pesanKosong(String teks) {
  if (teks.isNotEmpty) {
    return true;
  }
}

int hitunghuruf(String kalimat) {
  int a = kalimat.length;
  int hitunghuruf = a;
  return hitunghuruf;
}

String namaHariFunc(DateTime namaHari) {
  String hari = DateFormat('EEEE', 'id').format(namaHari);
  if (namaHari != null) {
    return hari;
  }
}

String namaTanggalFunc(DateTime namaTanggal) {
  String tanggal = DateFormat('yMMMd', 'id').format(namaTanggal);
  if (namaTanggal != null) {
    return tanggal;
  }
}
