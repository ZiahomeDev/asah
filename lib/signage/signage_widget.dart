import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SignageWidget extends StatefulWidget {
  const SignageWidget({Key key}) : super(key: key);

  @override
  _SignageWidgetState createState() => _SignageWidgetState();
}

class _SignageWidgetState extends State<SignageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(
                color: Color(0xFFEFF4F8),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/bacck.jpg',
                  ).image,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 20),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        Icons.alarm_on_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        size: 32,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4, 0, 0, 0),
                                      child: Text(
                                        'HADIR',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .lineColor,
                                              fontSize: 20,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF8789F3),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        Icons.airplanemode_active_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        size: 32,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4, 0, 0, 0),
                                      child: Text(
                                        'TUGAS LUAR',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .lineColor,
                                              fontSize: 20,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .tertiaryColor,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        Icons.access_alarms_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        size: 32,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4, 0, 0, 0),
                                      child: Text(
                                        'BERHALANGAN',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .lineColor,
                                              fontSize: 20,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        Icons.alarm_off_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        size: 32,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4, 0, 0, 0),
                                      child: Text(
                                        'TIDAK HADIR',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .lineColor,
                                              fontSize: 20,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'PIMPINAN FAKULTAS',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0x99E0E3E7),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Color(0x00F0F2FA),
                                ),
                                child: Stack(
                                  children: [
                                    StreamBuilder<List<PenggunaRecord>>(
                                      stream: queryPenggunaRecord(
                                        queryBuilder: (penggunaRecord) =>
                                            penggunaRecord
                                                .where('jenis_jabatan',
                                                    isEqualTo: 'Dekanat')
                                                .orderBy('urutan_data'),
                                        limit: 5,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50,
                                              height: 50,
                                              child: SpinKitSquareCircle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                size: 50,
                                              ),
                                            ),
                                          );
                                        }
                                        List<PenggunaRecord>
                                            pimpPenggunaRecordList =
                                            snapshot.data;
                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.horizontal,
                                          itemCount:
                                              pimpPenggunaRecordList.length,
                                          itemBuilder: (context, pimpIndex) {
                                            final pimpPenggunaRecord =
                                                pimpPenggunaRecordList[
                                                    pimpIndex];
                                            return Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(15, 15, 15, 15),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Stack(
                                                    children: [
                                                      Container(
                                                        width: 200,
                                                        height: 160,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x26FFFFFF),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 6,
                                                              color: Color(
                                                                  0x15000000),
                                                              spreadRadius: 2,
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(15),
                                                          border: Border.all(
                                                            color: Color(
                                                                0x658F98AB),
                                                            width: 1,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 200,
                                                        height: 80,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x9603153B),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 8,
                                                              color: Color(
                                                                  0x15000000),
                                                              spreadRadius: 3,
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    15),
                                                            topRight:
                                                                Radius.circular(
                                                                    15),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(58,
                                                                    18, 0, 0),
                                                        child: Container(
                                                          width: 84,
                                                          height: 84,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBtnText,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                blurRadius: 6,
                                                                color: Color(
                                                                    0x14000000),
                                                                spreadRadius: 3,
                                                              )
                                                            ],
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(60,
                                                                    20, 0, 0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(40),
                                                          child:
                                                              CachedNetworkImage(
                                                            imageUrl:
                                                                valueOrDefault<
                                                                    String>(
                                                              pimpPenggunaRecord
                                                                  .photoUrl,
                                                              'https://firebasestorage.googleapis.com/v0/b/hadirtersedia.appspot.com/o/user-image.JPG?alt=media&token=c9e17678-c5a6-4bab-a566-71b32435ebe1',
                                                            ),
                                                            width: 80,
                                                            height: 80,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 94,
                                                                    0, 0),
                                                        child: Container(
                                                          width: 200,
                                                          height: 40,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0x00FFFFFF),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                pimpPenggunaRecord
                                                                    .jabatan,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBtnText,
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Stack(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        30,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Container(
                                                              width: 52,
                                                              height: 52,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child: Icon(
                                                                Icons
                                                                    .alarm_off_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBtnText,
                                                                size: 36,
                                                              ),
                                                            ),
                                                          ),
                                                          if ((pimpPenggunaRecord
                                                                  .statusKehadiran) ==
                                                              'Hadir')
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          30,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child: Container(
                                                                width: 52,
                                                                height: 52,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryColor,
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Icon(
                                                                  Icons
                                                                      .alarm_on_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBtnText,
                                                                  size: 36,
                                                                ),
                                                              ),
                                                            ),
                                                          if ((pimpPenggunaRecord
                                                                  .statusKehadiran) ==
                                                              'Berhalangan')
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          30,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child: Container(
                                                                width: 52,
                                                                height: 52,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiaryColor,
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Icon(
                                                                  Icons
                                                                      .alarm_outlined,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBtnText,
                                                                  size: 36,
                                                                ),
                                                              ),
                                                            ),
                                                          if ((pimpPenggunaRecord
                                                                  .statusKehadiran) ==
                                                              'Tugas Luar')
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          30,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child: Container(
                                                                width: 52,
                                                                height: 52,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFF8789F3),
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Icon(
                                                                  Icons
                                                                      .airplanemode_active_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBtnText,
                                                                  size: 36,
                                                                ),
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0,
                                                                    114, 0, 0),
                                                        child: Container(
                                                          width: 200,
                                                          height: 40,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0x00FFFFFF),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                pimpPenggunaRecord
                                                                    .displayName
                                                                    .maybeHandleOverflow(
                                                                  maxChars: 25,
                                                                  replacement:
                                                                      '…',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .lineColor,
                                                                      fontSize:
                                                                          13,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                      tabletLandscape: false,
                                    ))
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 130, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              'A S A H',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .lineColor,
                                                        fontSize: 50,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                      tabletLandscape: false,
                                    ))
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 60, 130, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              'Aplikasi Realtime Status Harian',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .lineColor,
                                                        fontSize: 36,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                      tabletLandscape: false,
                                    ))
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 110, 100, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Image.asset(
                                              'assets/images/fkip-unismuh-logo-80.png',
                                              width: 250,
                                              fit: BoxFit.contain,
                                            ),
                                          ],
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'KETUA/ SEKRETARIS PROGRAM STUDI',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0x99E0E3E7),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    color: Color(0x00F0F2FA),
                                  ),
                                  child: StreamBuilder<List<PenggunaRecord>>(
                                    stream: queryPenggunaRecord(
                                      queryBuilder: (penggunaRecord) =>
                                          penggunaRecord
                                              .where('jenis_jabatan',
                                                  isEqualTo: 'Prodi')
                                              .where('urutan_data',
                                                  isLessThanOrEqualTo: 6)
                                              .orderBy('urutan_data'),
                                      limit: 6,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: SpinKitSquareCircle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              size: 50,
                                            ),
                                          ),
                                        );
                                      }
                                      List<PenggunaRecord>
                                          prodi1PenggunaRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount:
                                            prodi1PenggunaRecordList.length,
                                        itemBuilder: (context, prodi1Index) {
                                          final prodi1PenggunaRecord =
                                              prodi1PenggunaRecordList[
                                                  prodi1Index];
                                          return Wrap(
                                            spacing: 0,
                                            runSpacing: 0,
                                            alignment: WrapAlignment.start,
                                            crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                            direction: Axis.vertical,
                                            runAlignment: WrapAlignment.start,
                                            verticalDirection:
                                                VerticalDirection.down,
                                            clipBehavior: Clip.none,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(15, 15, 15, 15),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 280,
                                                      height: 60,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0x26FFFFFF),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 6,
                                                            color: Color(
                                                                0x15000000),
                                                            spreadRadius: 2,
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        border: Border.all(
                                                          color:
                                                              Color(0x27A4BEF7),
                                                          width: 1,
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          8),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          8),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          0),
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    prodi1PenggunaRecord
                                                                        .photoUrl,
                                                                    'https://firebasestorage.googleapis.com/v0/b/hadirtersedia.appspot.com/o/user-image.JPG?alt=media&token=c9e17678-c5a6-4bab-a566-71b32435ebe1',
                                                                  ),
                                                                  width: 60,
                                                                  height: 60,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6,
                                                                          6,
                                                                          6,
                                                                          6),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Text(
                                                                          prodi1PenggunaRecord
                                                                              .jabatan
                                                                              .maybeHandleOverflow(maxChars: 25),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            AutoSizeText(
                                                                          prodi1PenggunaRecord
                                                                              .displayName
                                                                              .maybeHandleOverflow(
                                                                            maxChars:
                                                                                20,
                                                                            replacement:
                                                                                '…',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: FlutterFlowTheme.of(context).lineColor,
                                                                                fontSize: 10,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        6,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Stack(
                                                                  children: [
                                                                    Container(
                                                                      width: 46,
                                                                      height:
                                                                          46,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        shape: BoxShape
                                                                            .circle,
                                                                      ),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .alarm_off_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBtnText,
                                                                        size:
                                                                            32,
                                                                      ),
                                                                    ),
                                                                    if ((prodi1PenggunaRecord
                                                                            .statusKehadiran) ==
                                                                        'Hadir')
                                                                      Container(
                                                                        width:
                                                                            46,
                                                                        height:
                                                                            46,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryColor,
                                                                          shape:
                                                                              BoxShape.circle,
                                                                        ),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .alarm_on_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                          size:
                                                                              32,
                                                                        ),
                                                                      ),
                                                                    if ((prodi1PenggunaRecord
                                                                            .statusKehadiran) ==
                                                                        'Berhalangan')
                                                                      Container(
                                                                        width:
                                                                            46,
                                                                        height:
                                                                            46,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          shape:
                                                                              BoxShape.circle,
                                                                        ),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .alarm,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                          size:
                                                                              32,
                                                                        ),
                                                                      ),
                                                                    if ((prodi1PenggunaRecord
                                                                            .statusKehadiran) ==
                                                                        'Tugas Luar')
                                                                      Container(
                                                                        width:
                                                                            46,
                                                                        height:
                                                                            46,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFF8789F3),
                                                                          shape:
                                                                              BoxShape.circle,
                                                                        ),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .airplanemode_active_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                          size:
                                                                              32,
                                                                        ),
                                                                      ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    color: Color(0x00F0F2FA),
                                  ),
                                  child: StreamBuilder<List<PenggunaRecord>>(
                                    stream: queryPenggunaRecord(
                                      queryBuilder: (penggunaRecord) =>
                                          penggunaRecord
                                              .where('jenis_jabatan',
                                                  isEqualTo: 'Prodi')
                                              .where('urutan_data',
                                                  isGreaterThanOrEqualTo: 7)
                                              .orderBy('urutan_data'),
                                      limit: 6,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: SpinKitSquareCircle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              size: 50,
                                            ),
                                          ),
                                        );
                                      }
                                      List<PenggunaRecord>
                                          prodi2PenggunaRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount:
                                            prodi2PenggunaRecordList.length,
                                        itemBuilder: (context, prodi2Index) {
                                          final prodi2PenggunaRecord =
                                              prodi2PenggunaRecordList[
                                                  prodi2Index];
                                          return Wrap(
                                            spacing: 0,
                                            runSpacing: 0,
                                            alignment: WrapAlignment.start,
                                            crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                            direction: Axis.vertical,
                                            runAlignment: WrapAlignment.start,
                                            verticalDirection:
                                                VerticalDirection.down,
                                            clipBehavior: Clip.none,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(15, 15, 15, 15),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 280,
                                                      height: 60,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0x26FFFFFF),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 6,
                                                            color: Color(
                                                                0x15000000),
                                                            spreadRadius: 2,
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        border: Border.all(
                                                          color:
                                                              Color(0x26FFFFFF),
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          8),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          8),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          0),
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    prodi2PenggunaRecord
                                                                        .photoUrl,
                                                                    'https://firebasestorage.googleapis.com/v0/b/hadirtersedia.appspot.com/o/user-image.JPG?alt=media&token=c9e17678-c5a6-4bab-a566-71b32435ebe1',
                                                                  ),
                                                                  width: 60,
                                                                  height: 60,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6,
                                                                          6,
                                                                          6,
                                                                          6),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Text(
                                                                          prodi2PenggunaRecord
                                                                              .jabatan
                                                                              .maybeHandleOverflow(maxChars: 25),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: FlutterFlowTheme.of(context).lineColor,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            AutoSizeText(
                                                                          prodi2PenggunaRecord
                                                                              .displayName
                                                                              .maybeHandleOverflow(
                                                                            maxChars:
                                                                                20,
                                                                            replacement:
                                                                                '…',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: FlutterFlowTheme.of(context).lineColor,
                                                                                fontSize: 10,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        6,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Stack(
                                                                  children: [
                                                                    Container(
                                                                      width: 46,
                                                                      height:
                                                                          46,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        shape: BoxShape
                                                                            .circle,
                                                                      ),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .alarm_off_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBtnText,
                                                                        size:
                                                                            32,
                                                                      ),
                                                                    ),
                                                                    if ((prodi2PenggunaRecord
                                                                            .statusKehadiran) ==
                                                                        'Hadir')
                                                                      Container(
                                                                        width:
                                                                            46,
                                                                        height:
                                                                            46,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryColor,
                                                                          shape:
                                                                              BoxShape.circle,
                                                                        ),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .alarm_on_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                          size:
                                                                              32,
                                                                        ),
                                                                      ),
                                                                    if ((prodi2PenggunaRecord
                                                                            .statusKehadiran) ==
                                                                        'Berhalangan')
                                                                      Container(
                                                                        width:
                                                                            46,
                                                                        height:
                                                                            46,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          shape:
                                                                              BoxShape.circle,
                                                                        ),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .alarm,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                          size:
                                                                              32,
                                                                        ),
                                                                      ),
                                                                    if ((prodi2PenggunaRecord
                                                                            .statusKehadiran) ==
                                                                        'Tugas Luar')
                                                                      Container(
                                                                        width:
                                                                            46,
                                                                        height:
                                                                            46,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFF8789F3),
                                                                          shape:
                                                                              BoxShape.circle,
                                                                        ),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .airplanemode_active_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                          size:
                                                                              32,
                                                                        ),
                                                                      ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    color: Color(0x00F0F2FA),
                                  ),
                                  child: StreamBuilder<List<PenggunaRecord>>(
                                    stream: queryPenggunaRecord(
                                      queryBuilder: (penggunaRecord) =>
                                          penggunaRecord
                                              .where('jenis_jabatan',
                                                  isEqualTo: 'Prodi')
                                              .where('urutan_data',
                                                  isGreaterThan: 12)
                                              .orderBy('urutan_data'),
                                      limit: 6,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: SpinKitSquareCircle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              size: 50,
                                            ),
                                          ),
                                        );
                                      }
                                      List<PenggunaRecord>
                                          prodi3PenggunaRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount:
                                            prodi3PenggunaRecordList.length,
                                        itemBuilder: (context, prodi3Index) {
                                          final prodi3PenggunaRecord =
                                              prodi3PenggunaRecordList[
                                                  prodi3Index];
                                          return Wrap(
                                            spacing: 0,
                                            runSpacing: 0,
                                            alignment: WrapAlignment.start,
                                            crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                            direction: Axis.vertical,
                                            runAlignment: WrapAlignment.start,
                                            verticalDirection:
                                                VerticalDirection.down,
                                            clipBehavior: Clip.none,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(15, 15, 15, 15),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 280,
                                                      height: 60,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0x27FFFFFF),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 6,
                                                            color: Color(
                                                                0x15000000),
                                                            spreadRadius: 2,
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        border: Border.all(
                                                          color:
                                                              Color(0x27FFFFFF),
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          8),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          8),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          0),
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    prodi3PenggunaRecord
                                                                        .photoUrl,
                                                                    'https://firebasestorage.googleapis.com/v0/b/hadirtersedia.appspot.com/o/user-image.JPG?alt=media&token=c9e17678-c5a6-4bab-a566-71b32435ebe1',
                                                                  ),
                                                                  width: 60,
                                                                  height: 60,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6,
                                                                          6,
                                                                          6,
                                                                          6),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Text(
                                                                          prodi3PenggunaRecord
                                                                              .jabatan
                                                                              .maybeHandleOverflow(maxChars: 25),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: FlutterFlowTheme.of(context).lineColor,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            AutoSizeText(
                                                                          prodi3PenggunaRecord
                                                                              .displayName
                                                                              .maybeHandleOverflow(
                                                                            maxChars:
                                                                                20,
                                                                            replacement:
                                                                                '…',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: FlutterFlowTheme.of(context).lineColor,
                                                                                fontSize: 10,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        6,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Stack(
                                                                  children: [
                                                                    Container(
                                                                      width: 46,
                                                                      height:
                                                                          46,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        shape: BoxShape
                                                                            .circle,
                                                                      ),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .alarm_off_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBtnText,
                                                                        size:
                                                                            32,
                                                                      ),
                                                                    ),
                                                                    if ((prodi3PenggunaRecord
                                                                            .statusKehadiran) ==
                                                                        'Hadir')
                                                                      Container(
                                                                        width:
                                                                            46,
                                                                        height:
                                                                            46,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryColor,
                                                                          shape:
                                                                              BoxShape.circle,
                                                                        ),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .alarm_on_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                          size:
                                                                              32,
                                                                        ),
                                                                      ),
                                                                    if ((prodi3PenggunaRecord
                                                                            .statusKehadiran) ==
                                                                        'Berhalangan')
                                                                      Container(
                                                                        width:
                                                                            46,
                                                                        height:
                                                                            46,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          shape:
                                                                              BoxShape.circle,
                                                                        ),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .alarm,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                          size:
                                                                              32,
                                                                        ),
                                                                      ),
                                                                    if ((prodi3PenggunaRecord
                                                                            .statusKehadiran) ==
                                                                        'Tugas Luar')
                                                                      Container(
                                                                        width:
                                                                            46,
                                                                        height:
                                                                            46,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFF8789F3),
                                                                          shape:
                                                                              BoxShape.circle,
                                                                        ),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .airplanemode_active_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                          size:
                                                                              32,
                                                                        ),
                                                                      ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'KEPALA/ SEKRETARIS KANTOR DAN UNIT',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0x99E0E3E7),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    color: Color(0x00F0F2FA),
                                  ),
                                  child: StreamBuilder<List<PenggunaRecord>>(
                                    stream: queryPenggunaRecord(
                                      queryBuilder: (penggunaRecord) =>
                                          penggunaRecord
                                              .where('jenis_jabatan',
                                                  isEqualTo: 'Unit')
                                              .where('urutan_data',
                                                  isLessThanOrEqualTo: 6)
                                              .orderBy('urutan_data'),
                                      limit: 6,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: SpinKitSquareCircle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              size: 50,
                                            ),
                                          ),
                                        );
                                      }
                                      List<PenggunaRecord>
                                          uni1PenggunaRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount:
                                            uni1PenggunaRecordList.length,
                                        itemBuilder: (context, uni1Index) {
                                          final uni1PenggunaRecord =
                                              uni1PenggunaRecordList[uni1Index];
                                          return Wrap(
                                            spacing: 0,
                                            runSpacing: 0,
                                            alignment: WrapAlignment.start,
                                            crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                            direction: Axis.vertical,
                                            runAlignment: WrapAlignment.start,
                                            verticalDirection:
                                                VerticalDirection.down,
                                            clipBehavior: Clip.none,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(15, 15, 15, 15),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 280,
                                                      height: 60,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0x25FFFFFF),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 6,
                                                            color: Color(
                                                                0x15000000),
                                                            spreadRadius: 2,
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        border: Border.all(
                                                          color:
                                                              Color(0x27FFFFFF),
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          8),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          8),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          0),
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    uni1PenggunaRecord
                                                                        .photoUrl,
                                                                    'https://firebasestorage.googleapis.com/v0/b/hadirtersedia.appspot.com/o/user-image.JPG?alt=media&token=c9e17678-c5a6-4bab-a566-71b32435ebe1',
                                                                  ),
                                                                  width: 60,
                                                                  height: 60,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6,
                                                                          6,
                                                                          6,
                                                                          6),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Text(
                                                                          uni1PenggunaRecord
                                                                              .jabatan
                                                                              .maybeHandleOverflow(maxChars: 25),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: FlutterFlowTheme.of(context).lineColor,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            AutoSizeText(
                                                                          uni1PenggunaRecord
                                                                              .displayName
                                                                              .maybeHandleOverflow(
                                                                            maxChars:
                                                                                20,
                                                                            replacement:
                                                                                '…',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: FlutterFlowTheme.of(context).lineColor,
                                                                                fontSize: 10,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        6,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Stack(
                                                                  children: [
                                                                    Container(
                                                                      width: 46,
                                                                      height:
                                                                          46,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        shape: BoxShape
                                                                            .circle,
                                                                      ),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .alarm_off_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBtnText,
                                                                        size:
                                                                            32,
                                                                      ),
                                                                    ),
                                                                    if ((uni1PenggunaRecord
                                                                            .statusKehadiran) ==
                                                                        'Hadir')
                                                                      Container(
                                                                        width:
                                                                            46,
                                                                        height:
                                                                            46,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryColor,
                                                                          shape:
                                                                              BoxShape.circle,
                                                                        ),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .alarm_on_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                          size:
                                                                              32,
                                                                        ),
                                                                      ),
                                                                    if ((uni1PenggunaRecord
                                                                            .statusKehadiran) ==
                                                                        'Berhalangan')
                                                                      Container(
                                                                        width:
                                                                            46,
                                                                        height:
                                                                            46,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          shape:
                                                                              BoxShape.circle,
                                                                        ),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .alarm,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                          size:
                                                                              32,
                                                                        ),
                                                                      ),
                                                                    if ((uni1PenggunaRecord
                                                                            .statusKehadiran) ==
                                                                        'Tugas Luar')
                                                                      Container(
                                                                        width:
                                                                            46,
                                                                        height:
                                                                            46,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFF8789F3),
                                                                          shape:
                                                                              BoxShape.circle,
                                                                        ),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .airplanemode_active_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                          size:
                                                                              32,
                                                                        ),
                                                                      ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    color: Color(0x00F0F2FA),
                                  ),
                                  child: StreamBuilder<List<PenggunaRecord>>(
                                    stream: queryPenggunaRecord(
                                      queryBuilder: (penggunaRecord) =>
                                          penggunaRecord
                                              .where('jenis_jabatan',
                                                  isEqualTo: 'Unit')
                                              .where('urutan_data',
                                                  isGreaterThanOrEqualTo: 7)
                                              .orderBy('urutan_data'),
                                      limit: 6,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: SpinKitSquareCircle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              size: 50,
                                            ),
                                          ),
                                        );
                                      }
                                      List<PenggunaRecord>
                                          unit2PenggunaRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount:
                                            unit2PenggunaRecordList.length,
                                        itemBuilder: (context, unit2Index) {
                                          final unit2PenggunaRecord =
                                              unit2PenggunaRecordList[
                                                  unit2Index];
                                          return Wrap(
                                            spacing: 0,
                                            runSpacing: 0,
                                            alignment: WrapAlignment.start,
                                            crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                            direction: Axis.vertical,
                                            runAlignment: WrapAlignment.start,
                                            verticalDirection:
                                                VerticalDirection.down,
                                            clipBehavior: Clip.none,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(15, 15, 15, 15),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 280,
                                                      height: 60,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .customColor1,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 6,
                                                            color: Color(
                                                                0x15000000),
                                                            spreadRadius: 2,
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor1,
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          8),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          8),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          0),
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    unit2PenggunaRecord
                                                                        .photoUrl,
                                                                    'https://firebasestorage.googleapis.com/v0/b/hadirtersedia.appspot.com/o/user-image.JPG?alt=media&token=c9e17678-c5a6-4bab-a566-71b32435ebe1',
                                                                  ),
                                                                  width: 60,
                                                                  height: 60,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6,
                                                                          6,
                                                                          6,
                                                                          6),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Text(
                                                                          unit2PenggunaRecord
                                                                              .jabatan
                                                                              .maybeHandleOverflow(maxChars: 25),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: FlutterFlowTheme.of(context).lineColor,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            AutoSizeText(
                                                                          unit2PenggunaRecord
                                                                              .displayName
                                                                              .maybeHandleOverflow(
                                                                            maxChars:
                                                                                20,
                                                                            replacement:
                                                                                '…',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: FlutterFlowTheme.of(context).lineColor,
                                                                                fontSize: 10,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        6,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Stack(
                                                                  children: [
                                                                    Container(
                                                                      width: 46,
                                                                      height:
                                                                          46,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        shape: BoxShape
                                                                            .circle,
                                                                      ),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .alarm_off_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBtnText,
                                                                        size:
                                                                            32,
                                                                      ),
                                                                    ),
                                                                    if ((unit2PenggunaRecord
                                                                            .statusKehadiran) ==
                                                                        'Hadir')
                                                                      Container(
                                                                        width:
                                                                            46,
                                                                        height:
                                                                            46,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryColor,
                                                                          shape:
                                                                              BoxShape.circle,
                                                                        ),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .alarm_on_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                          size:
                                                                              32,
                                                                        ),
                                                                      ),
                                                                    if ((unit2PenggunaRecord
                                                                            .statusKehadiran) ==
                                                                        'Berhalangan')
                                                                      Container(
                                                                        width:
                                                                            46,
                                                                        height:
                                                                            46,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          shape:
                                                                              BoxShape.circle,
                                                                        ),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .alarm,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                          size:
                                                                              32,
                                                                        ),
                                                                      ),
                                                                    if ((unit2PenggunaRecord
                                                                            .statusKehadiran) ==
                                                                        'Tugas Luar')
                                                                      Container(
                                                                        width:
                                                                            46,
                                                                        height:
                                                                            46,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFF8789F3),
                                                                          shape:
                                                                              BoxShape.circle,
                                                                        ),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .airplanemode_active_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                          size:
                                                                              32,
                                                                        ),
                                                                      ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'PERPUSTAKAAN DAN LABORATORIUM',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0x99E0E3E7),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    color: Color(0x00F0F2FA),
                                  ),
                                  child: StreamBuilder<List<PenggunaRecord>>(
                                    stream: queryPenggunaRecord(
                                      queryBuilder: (penggunaRecord) =>
                                          penggunaRecord
                                              .where('jenis_pengguna',
                                                  isEqualTo: 'Lab')
                                              .where('urutan_data',
                                                  isLessThanOrEqualTo: 6)
                                              .orderBy('urutan_data'),
                                      limit: 6,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: SpinKitSquareCircle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              size: 50,
                                            ),
                                          ),
                                        );
                                      }
                                      List<PenggunaRecord>
                                          lab1PenggunaRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount:
                                            lab1PenggunaRecordList.length,
                                        itemBuilder: (context, lab1Index) {
                                          final lab1PenggunaRecord =
                                              lab1PenggunaRecordList[lab1Index];
                                          return Wrap(
                                            spacing: 0,
                                            runSpacing: 0,
                                            alignment: WrapAlignment.start,
                                            crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                            direction: Axis.vertical,
                                            runAlignment: WrapAlignment.start,
                                            verticalDirection:
                                                VerticalDirection.down,
                                            clipBehavior: Clip.none,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(15, 15, 15, 15),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 280,
                                                      height: 60,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .customColor1,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 6,
                                                            color: Color(
                                                                0x15000000),
                                                            spreadRadius: 2,
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor1,
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          8),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          8),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          0),
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    lab1PenggunaRecord
                                                                        .photoUrl,
                                                                    'https://firebasestorage.googleapis.com/v0/b/hadirtersedia.appspot.com/o/user-image.JPG?alt=media&token=c9e17678-c5a6-4bab-a566-71b32435ebe1',
                                                                  ),
                                                                  width: 60,
                                                                  height: 60,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6,
                                                                          6,
                                                                          6,
                                                                          6),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Text(
                                                                          lab1PenggunaRecord
                                                                              .jabatan
                                                                              .maybeHandleOverflow(maxChars: 25),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: FlutterFlowTheme.of(context).lineColor,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            AutoSizeText(
                                                                          lab1PenggunaRecord
                                                                              .displayName
                                                                              .maybeHandleOverflow(
                                                                            maxChars:
                                                                                20,
                                                                            replacement:
                                                                                '…',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: FlutterFlowTheme.of(context).lineColor,
                                                                                fontSize: 10,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        6,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Stack(
                                                                  children: [
                                                                    Container(
                                                                      width: 46,
                                                                      height:
                                                                          46,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        shape: BoxShape
                                                                            .circle,
                                                                      ),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .alarm_off_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBtnText,
                                                                        size:
                                                                            32,
                                                                      ),
                                                                    ),
                                                                    if ((lab1PenggunaRecord
                                                                            .statusKehadiran) ==
                                                                        'Hadir')
                                                                      Container(
                                                                        width:
                                                                            46,
                                                                        height:
                                                                            46,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryColor,
                                                                          shape:
                                                                              BoxShape.circle,
                                                                        ),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .alarm_on_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                          size:
                                                                              32,
                                                                        ),
                                                                      ),
                                                                    if ((lab1PenggunaRecord
                                                                            .statusKehadiran) ==
                                                                        'Berhalangan')
                                                                      Container(
                                                                        width:
                                                                            46,
                                                                        height:
                                                                            46,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          shape:
                                                                              BoxShape.circle,
                                                                        ),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .alarm,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                          size:
                                                                              32,
                                                                        ),
                                                                      ),
                                                                    if ((lab1PenggunaRecord
                                                                            .statusKehadiran) ==
                                                                        'Tugas Luar')
                                                                      Container(
                                                                        width:
                                                                            46,
                                                                        height:
                                                                            46,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFF8789F3),
                                                                          shape:
                                                                              BoxShape.circle,
                                                                        ),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .airplanemode_active_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                          size:
                                                                              32,
                                                                        ),
                                                                      ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    color: Color(0x00F0F2FA),
                                  ),
                                  child: StreamBuilder<List<PenggunaRecord>>(
                                    stream: queryPenggunaRecord(
                                      queryBuilder: (penggunaRecord) =>
                                          penggunaRecord
                                              .where('jenis_pengguna',
                                                  isEqualTo: 'Lab')
                                              .where('urutan_data',
                                                  isGreaterThanOrEqualTo: 7)
                                              .orderBy('urutan_data'),
                                      limit: 6,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: SpinKitSquareCircle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              size: 50,
                                            ),
                                          ),
                                        );
                                      }
                                      List<PenggunaRecord>
                                          lab2PenggunaRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount:
                                            lab2PenggunaRecordList.length,
                                        itemBuilder: (context, lab2Index) {
                                          final lab2PenggunaRecord =
                                              lab2PenggunaRecordList[lab2Index];
                                          return Wrap(
                                            spacing: 0,
                                            runSpacing: 0,
                                            alignment: WrapAlignment.start,
                                            crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                            direction: Axis.vertical,
                                            runAlignment: WrapAlignment.start,
                                            verticalDirection:
                                                VerticalDirection.down,
                                            clipBehavior: Clip.none,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(15, 15, 15, 15),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 280,
                                                      height: 60,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .customColor1,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 6,
                                                            color: Color(
                                                                0x15000000),
                                                            spreadRadius: 2,
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor1,
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          8),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          8),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          0),
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    lab2PenggunaRecord
                                                                        .photoUrl,
                                                                    'https://firebasestorage.googleapis.com/v0/b/hadirtersedia.appspot.com/o/user-image.JPG?alt=media&token=c9e17678-c5a6-4bab-a566-71b32435ebe1',
                                                                  ),
                                                                  width: 60,
                                                                  height: 60,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6,
                                                                          6,
                                                                          6,
                                                                          6),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Text(
                                                                          lab2PenggunaRecord
                                                                              .jabatan
                                                                              .maybeHandleOverflow(maxChars: 25),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: FlutterFlowTheme.of(context).lineColor,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            AutoSizeText(
                                                                          lab2PenggunaRecord
                                                                              .displayName,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: FlutterFlowTheme.of(context).lineColor,
                                                                                fontSize: 10,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        6,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Stack(
                                                                  children: [
                                                                    Container(
                                                                      width: 46,
                                                                      height:
                                                                          46,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        shape: BoxShape
                                                                            .circle,
                                                                      ),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .alarm_off_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBtnText,
                                                                        size:
                                                                            32,
                                                                      ),
                                                                    ),
                                                                    if ((lab2PenggunaRecord
                                                                            .statusKehadiran) ==
                                                                        'Hadir')
                                                                      Container(
                                                                        width:
                                                                            46,
                                                                        height:
                                                                            46,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryColor,
                                                                          shape:
                                                                              BoxShape.circle,
                                                                        ),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .alarm_on_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                          size:
                                                                              32,
                                                                        ),
                                                                      ),
                                                                    if ((lab2PenggunaRecord
                                                                            .statusKehadiran) ==
                                                                        'Berhalangan')
                                                                      Container(
                                                                        width:
                                                                            46,
                                                                        height:
                                                                            46,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          shape:
                                                                              BoxShape.circle,
                                                                        ),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .alarm,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                          size:
                                                                              32,
                                                                        ),
                                                                      ),
                                                                    if ((lab2PenggunaRecord
                                                                            .statusKehadiran) ==
                                                                        'Tugas Luar')
                                                                      Container(
                                                                        width:
                                                                            46,
                                                                        height:
                                                                            46,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFF8789F3),
                                                                          shape:
                                                                              BoxShape.circle,
                                                                        ),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .airplanemode_active_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                          size:
                                                                              32,
                                                                        ),
                                                                      ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
