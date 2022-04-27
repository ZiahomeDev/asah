import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../histori_umum/histori_umum_widget.dart';
import '../main.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class StatusPersonilWidget extends StatefulWidget {
  const StatusPersonilWidget({Key key}) : super(key: key);

  @override
  _StatusPersonilWidgetState createState() => _StatusPersonilWidgetState();
}

class _StatusPersonilWidgetState extends State<StatusPersonilWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            await Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => NavBarPage(initialPage: 'utama'),
              ),
              (r) => false,
            );
          },
        ),
        title: Text(
          'Status Fakultas',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Pimpinan Fakultas',
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          primary: false,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: StreamBuilder<List<PenggunaRecord>>(
                                      stream: queryPenggunaRecord(
                                        queryBuilder: (penggunaRecord) =>
                                            penggunaRecord
                                                .where('jenis_jabatan',
                                                    isEqualTo: 'Dekanat')
                                                .orderBy('urutan_data'),
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
                                            dekanantPenggunaRecordList =
                                            snapshot.data;
                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              dekanantPenggunaRecordList.length,
                                          itemBuilder:
                                              (context, dekanantIndex) {
                                            final dekanantPenggunaRecord =
                                                dekanantPenggunaRecordList[
                                                    dekanantIndex];
                                            return SingleChildScrollView(
                                              primary: false,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 10),
                                                    child: Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      constraints:
                                                          BoxConstraints(
                                                        maxWidth: 600,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 6,
                                                            color: Color(
                                                                0x14000000),
                                                            spreadRadius: 2,
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8, 8, 8, 8),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              30),
                                                                  child:
                                                                      CachedNetworkImage(
                                                                    imageUrl:
                                                                        valueOrDefault<
                                                                            String>(
                                                                      dekanantPenggunaRecord
                                                                          .photoUrl,
                                                                      'https://firebasestorage.googleapis.com/v0/b/hadirtersedia.appspot.com/o/user-image.JPG?alt=media&token=c9e17678-c5a6-4bab-a566-71b32435ebe1',
                                                                    ),
                                                                    width: 50,
                                                                    height: 50,
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
                                                                            0,
                                                                            0,
                                                                            0),
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
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0,
                                                                                0,
                                                                                4,
                                                                                0),
                                                                            child:
                                                                                Text(
                                                                              dekanantPenggunaRecord.jabatan,
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    fontSize: 12,
                                                                                  ),
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
                                                                        Text(
                                                                          dekanantPenggunaRecord
                                                                              .displayName,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                fontSize: 12,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              6,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            'Pesan',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 10,
                                                                                  fontWeight: FontWeight.w600,
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
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              dekanantPenggunaRecord.pesan,
                                                                              'Tidak ada pesan',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  fontSize: 11,
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
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Stack(
                                                                    children: [
                                                                      InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          await Navigator
                                                                              .push(
                                                                            context,
                                                                            MaterialPageRoute(
                                                                              builder: (context) => HistoriUmumWidget(
                                                                                userRef: dekanantPenggunaRecord.reference,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              40,
                                                                          height:
                                                                              40,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryColor,
                                                                            shape:
                                                                                BoxShape.circle,
                                                                          ),
                                                                          child:
                                                                              InkWell(
                                                                            onTap:
                                                                                () async {
                                                                              await Navigator.push(
                                                                                context,
                                                                                MaterialPageRoute(
                                                                                  builder: (context) => HistoriUmumWidget(
                                                                                    userRef: dekanantPenggunaRecord.reference,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.alarm_on_outlined,
                                                                              color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                              size: 24,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      if ((dekanantPenggunaRecord
                                                                              .statusKehadiran) ==
                                                                          'Tugas Luar')
                                                                        InkWell(
                                                                          onTap:
                                                                              () async {
                                                                            await Navigator.push(
                                                                              context,
                                                                              MaterialPageRoute(
                                                                                builder: (context) => HistoriUmumWidget(
                                                                                  userRef: dekanantPenggunaRecord.reference,
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                40,
                                                                            height:
                                                                                40,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Color(0xFF8789F3),
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                            child:
                                                                                InkWell(
                                                                              onTap: () async {
                                                                                await Navigator.push(
                                                                                  context,
                                                                                  MaterialPageRoute(
                                                                                    builder: (context) => HistoriUmumWidget(
                                                                                      userRef: dekanantPenggunaRecord.reference,
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                              child: Icon(
                                                                                Icons.airplanemode_active_rounded,
                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                size: 24,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      if ((dekanantPenggunaRecord
                                                                              .statusKehadiran) ==
                                                                          'Berhalangan')
                                                                        InkWell(
                                                                          onTap:
                                                                              () async {
                                                                            await Navigator.push(
                                                                              context,
                                                                              MaterialPageRoute(
                                                                                builder: (context) => HistoriUmumWidget(
                                                                                  userRef: dekanantPenggunaRecord.reference,
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                40,
                                                                            height:
                                                                                40,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                            child:
                                                                                InkWell(
                                                                              onTap: () async {
                                                                                await Navigator.push(
                                                                                  context,
                                                                                  MaterialPageRoute(
                                                                                    builder: (context) => HistoriUmumWidget(
                                                                                      userRef: dekanantPenggunaRecord.reference,
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                              child: Icon(
                                                                                Icons.access_alarm_rounded,
                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                size: 24,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      if ((dekanantPenggunaRecord
                                                                              .statusKehadiran) ==
                                                                          'Tidak Hadir')
                                                                        InkWell(
                                                                          onTap:
                                                                              () async {
                                                                            await Navigator.push(
                                                                              context,
                                                                              MaterialPageRoute(
                                                                                builder: (context) => HistoriUmumWidget(
                                                                                  userRef: dekanantPenggunaRecord.reference,
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                40,
                                                                            height:
                                                                                40,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                            child:
                                                                                InkWell(
                                                                              onTap: () async {
                                                                                await Navigator.push(
                                                                                  context,
                                                                                  MaterialPageRoute(
                                                                                    builder: (context) => HistoriUmumWidget(
                                                                                      userRef: dekanantPenggunaRecord.reference,
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                              child: Icon(
                                                                                Icons.alarm_off_rounded,
                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                size: 24,
                                                                              ),
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
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Pimpinan Prodi',
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          primary: false,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: StreamBuilder<List<PenggunaRecord>>(
                                      stream: queryPenggunaRecord(
                                        queryBuilder: (penggunaRecord) =>
                                            penggunaRecord
                                                .where('jenis_jabatan',
                                                    isEqualTo: 'Prodi')
                                                .orderBy('urutan_data'),
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
                                            prodiPenggunaRecordList =
                                            snapshot.data;
                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              prodiPenggunaRecordList.length,
                                          itemBuilder: (context, prodiIndex) {
                                            final prodiPenggunaRecord =
                                                prodiPenggunaRecordList[
                                                    prodiIndex];
                                            return SingleChildScrollView(
                                              primary: false,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 10),
                                                    child: Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      constraints:
                                                          BoxConstraints(
                                                        maxWidth: 600,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 6,
                                                            color: Color(
                                                                0x14000000),
                                                            spreadRadius: 2,
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8, 8, 8, 8),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              30),
                                                                  child:
                                                                      CachedNetworkImage(
                                                                    imageUrl:
                                                                        valueOrDefault<
                                                                            String>(
                                                                      prodiPenggunaRecord
                                                                          .photoUrl,
                                                                      'https://firebasestorage.googleapis.com/v0/b/hadirtersedia.appspot.com/o/user-image.JPG?alt=media&token=c9e17678-c5a6-4bab-a566-71b32435ebe1',
                                                                    ),
                                                                    width: 50,
                                                                    height: 50,
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
                                                                            0,
                                                                            0,
                                                                            0),
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
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0,
                                                                                0,
                                                                                4,
                                                                                0),
                                                                            child:
                                                                                Text(
                                                                              prodiPenggunaRecord.jabatan,
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    fontSize: 12,
                                                                                  ),
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
                                                                        Text(
                                                                          prodiPenggunaRecord
                                                                              .displayName,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                fontSize: 12,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              6,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            'Pesan',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 10,
                                                                                  fontWeight: FontWeight.w600,
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
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              prodiPenggunaRecord.pesan,
                                                                              'Tidak ada pesan',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  fontSize: 11,
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
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Stack(
                                                                    children: [
                                                                      InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          await Navigator
                                                                              .push(
                                                                            context,
                                                                            MaterialPageRoute(
                                                                              builder: (context) => HistoriUmumWidget(
                                                                                userRef: prodiPenggunaRecord.reference,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              40,
                                                                          height:
                                                                              40,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                            shape:
                                                                                BoxShape.circle,
                                                                          ),
                                                                          child:
                                                                              InkWell(
                                                                            onTap:
                                                                                () async {
                                                                              await Navigator.push(
                                                                                context,
                                                                                MaterialPageRoute(
                                                                                  builder: (context) => HistoriUmumWidget(
                                                                                    userRef: prodiPenggunaRecord.reference,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.alarm_off_rounded,
                                                                              color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                              size: 24,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      if ((prodiPenggunaRecord
                                                                              .statusKehadiran) ==
                                                                          'Hadir')
                                                                        InkWell(
                                                                          onTap:
                                                                              () async {
                                                                            await Navigator.push(
                                                                              context,
                                                                              MaterialPageRoute(
                                                                                builder: (context) => HistoriUmumWidget(
                                                                                  userRef: prodiPenggunaRecord.reference,
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                40,
                                                                            height:
                                                                                40,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryColor,
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                            child:
                                                                                InkWell(
                                                                              onTap: () async {
                                                                                await Navigator.push(
                                                                                  context,
                                                                                  MaterialPageRoute(
                                                                                    builder: (context) => HistoriUmumWidget(
                                                                                      userRef: prodiPenggunaRecord.reference,
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                              child: Icon(
                                                                                Icons.alarm_on_outlined,
                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                size: 24,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      if ((prodiPenggunaRecord
                                                                              .statusKehadiran) ==
                                                                          'Tugas Luar')
                                                                        InkWell(
                                                                          onTap:
                                                                              () async {
                                                                            await Navigator.push(
                                                                              context,
                                                                              MaterialPageRoute(
                                                                                builder: (context) => HistoriUmumWidget(
                                                                                  userRef: prodiPenggunaRecord.reference,
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                40,
                                                                            height:
                                                                                40,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Color(0xFF8789F3),
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                            child:
                                                                                InkWell(
                                                                              onTap: () async {
                                                                                await Navigator.push(
                                                                                  context,
                                                                                  MaterialPageRoute(
                                                                                    builder: (context) => HistoriUmumWidget(
                                                                                      userRef: prodiPenggunaRecord.reference,
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                              child: Icon(
                                                                                Icons.airplanemode_active_rounded,
                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                size: 24,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      if ((prodiPenggunaRecord
                                                                              .statusKehadiran) ==
                                                                          'Berhalangan')
                                                                        InkWell(
                                                                          onTap:
                                                                              () async {
                                                                            await Navigator.push(
                                                                              context,
                                                                              MaterialPageRoute(
                                                                                builder: (context) => HistoriUmumWidget(
                                                                                  userRef: prodiPenggunaRecord.reference,
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                40,
                                                                            height:
                                                                                40,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                            child:
                                                                                InkWell(
                                                                              onTap: () async {
                                                                                await Navigator.push(
                                                                                  context,
                                                                                  MaterialPageRoute(
                                                                                    builder: (context) => HistoriUmumWidget(
                                                                                      userRef: prodiPenggunaRecord.reference,
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                              child: Icon(
                                                                                Icons.access_alarm_rounded,
                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                size: 24,
                                                                              ),
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
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Kepala/ Sekretaris Unit',
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          primary: false,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: StreamBuilder<List<PenggunaRecord>>(
                                      stream: queryPenggunaRecord(
                                        queryBuilder: (penggunaRecord) =>
                                            penggunaRecord
                                                .where('jenis_jabatan',
                                                    isEqualTo: 'Unit')
                                                .orderBy('urutan_data'),
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
                                            unitPenggunaRecordList =
                                            snapshot.data;
                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              unitPenggunaRecordList.length,
                                          itemBuilder: (context, unitIndex) {
                                            final unitPenggunaRecord =
                                                unitPenggunaRecordList[
                                                    unitIndex];
                                            return SingleChildScrollView(
                                              primary: false,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 10),
                                                    child: Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      constraints:
                                                          BoxConstraints(
                                                        maxWidth: 600,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 6,
                                                            color: Color(
                                                                0x14000000),
                                                            spreadRadius: 2,
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8, 8, 8, 8),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              30),
                                                                  child:
                                                                      CachedNetworkImage(
                                                                    imageUrl:
                                                                        valueOrDefault<
                                                                            String>(
                                                                      unitPenggunaRecord
                                                                          .photoUrl,
                                                                      'https://firebasestorage.googleapis.com/v0/b/hadirtersedia.appspot.com/o/user-image.JPG?alt=media&token=c9e17678-c5a6-4bab-a566-71b32435ebe1',
                                                                    ),
                                                                    width: 50,
                                                                    height: 50,
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
                                                                            0,
                                                                            0,
                                                                            0),
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
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0,
                                                                                0,
                                                                                4,
                                                                                0),
                                                                            child:
                                                                                Text(
                                                                              unitPenggunaRecord.jabatan,
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    fontSize: 12,
                                                                                  ),
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
                                                                        Text(
                                                                          unitPenggunaRecord
                                                                              .displayName,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                fontSize: 12,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              6,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            'Pesan',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 10,
                                                                                  fontWeight: FontWeight.w600,
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
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              unitPenggunaRecord.pesan,
                                                                              'Tidak ada pesan',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  fontSize: 11,
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
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Stack(
                                                                    children: [
                                                                      InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          await Navigator
                                                                              .push(
                                                                            context,
                                                                            MaterialPageRoute(
                                                                              builder: (context) => HistoriUmumWidget(
                                                                                userRef: unitPenggunaRecord.reference,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              40,
                                                                          height:
                                                                              40,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                            shape:
                                                                                BoxShape.circle,
                                                                          ),
                                                                          child:
                                                                              InkWell(
                                                                            onTap:
                                                                                () async {
                                                                              await Navigator.push(
                                                                                context,
                                                                                MaterialPageRoute(
                                                                                  builder: (context) => HistoriUmumWidget(
                                                                                    userRef: unitPenggunaRecord.reference,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.alarm_off_rounded,
                                                                              color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                              size: 24,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      if ((unitPenggunaRecord
                                                                              .statusKehadiran) ==
                                                                          'Hadir')
                                                                        InkWell(
                                                                          onTap:
                                                                              () async {
                                                                            await Navigator.push(
                                                                              context,
                                                                              MaterialPageRoute(
                                                                                builder: (context) => HistoriUmumWidget(
                                                                                  userRef: unitPenggunaRecord.reference,
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                40,
                                                                            height:
                                                                                40,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryColor,
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                            child:
                                                                                InkWell(
                                                                              onTap: () async {
                                                                                await Navigator.push(
                                                                                  context,
                                                                                  MaterialPageRoute(
                                                                                    builder: (context) => HistoriUmumWidget(
                                                                                      userRef: unitPenggunaRecord.reference,
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                              child: Icon(
                                                                                Icons.alarm_on_outlined,
                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                size: 24,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      if ((unitPenggunaRecord
                                                                              .statusKehadiran) ==
                                                                          'Tugas Luar')
                                                                        InkWell(
                                                                          onTap:
                                                                              () async {
                                                                            await Navigator.push(
                                                                              context,
                                                                              MaterialPageRoute(
                                                                                builder: (context) => HistoriUmumWidget(
                                                                                  userRef: unitPenggunaRecord.reference,
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                40,
                                                                            height:
                                                                                40,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Color(0xFF8789F3),
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                            child:
                                                                                InkWell(
                                                                              onTap: () async {
                                                                                await Navigator.push(
                                                                                  context,
                                                                                  MaterialPageRoute(
                                                                                    builder: (context) => HistoriUmumWidget(
                                                                                      userRef: unitPenggunaRecord.reference,
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                              child: Icon(
                                                                                Icons.airplanemode_active_rounded,
                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                size: 24,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      if ((unitPenggunaRecord
                                                                              .statusKehadiran) ==
                                                                          'Berhalangan')
                                                                        InkWell(
                                                                          onTap:
                                                                              () async {
                                                                            await Navigator.push(
                                                                              context,
                                                                              MaterialPageRoute(
                                                                                builder: (context) => HistoriUmumWidget(
                                                                                  userRef: unitPenggunaRecord.reference,
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                40,
                                                                            height:
                                                                                40,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                            child:
                                                                                InkWell(
                                                                              onTap: () async {
                                                                                await Navigator.push(
                                                                                  context,
                                                                                  MaterialPageRoute(
                                                                                    builder: (context) => HistoriUmumWidget(
                                                                                      userRef: unitPenggunaRecord.reference,
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                              child: Icon(
                                                                                Icons.access_alarm_rounded,
                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                size: 24,
                                                                              ),
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
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Perpus/ Laboratorium',
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          primary: false,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: StreamBuilder<List<PenggunaRecord>>(
                                      stream: queryPenggunaRecord(
                                        queryBuilder: (penggunaRecord) =>
                                            penggunaRecord
                                                .where('jenis_jabatan',
                                                    isEqualTo: 'Lab')
                                                .orderBy('urutan_data'),
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
                                            labPenggunaRecordList =
                                            snapshot.data;
                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              labPenggunaRecordList.length,
                                          itemBuilder: (context, labIndex) {
                                            final labPenggunaRecord =
                                                labPenggunaRecordList[labIndex];
                                            return SingleChildScrollView(
                                              primary: false,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 10),
                                                    child: Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      constraints:
                                                          BoxConstraints(
                                                        maxWidth: 600,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 6,
                                                            color: Color(
                                                                0x14000000),
                                                            spreadRadius: 2,
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8, 8, 8, 8),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              30),
                                                                  child:
                                                                      CachedNetworkImage(
                                                                    imageUrl:
                                                                        valueOrDefault<
                                                                            String>(
                                                                      labPenggunaRecord
                                                                          .photoUrl,
                                                                      'https://firebasestorage.googleapis.com/v0/b/hadirtersedia.appspot.com/o/user-image.JPG?alt=media&token=c9e17678-c5a6-4bab-a566-71b32435ebe1',
                                                                    ),
                                                                    width: 50,
                                                                    height: 50,
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
                                                                            0,
                                                                            0,
                                                                            0),
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
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0,
                                                                                0,
                                                                                4,
                                                                                0),
                                                                            child:
                                                                                Text(
                                                                              labPenggunaRecord.jabatan,
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    fontSize: 12,
                                                                                  ),
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
                                                                        Text(
                                                                          labPenggunaRecord
                                                                              .displayName,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                fontSize: 12,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              6,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            'Pesan',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 10,
                                                                                  fontWeight: FontWeight.w600,
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
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              labPenggunaRecord.pesan,
                                                                              'Tidak ada pesan',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  fontSize: 11,
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
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Stack(
                                                                    children: [
                                                                      InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          await Navigator
                                                                              .push(
                                                                            context,
                                                                            MaterialPageRoute(
                                                                              builder: (context) => HistoriUmumWidget(
                                                                                userRef: labPenggunaRecord.reference,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              40,
                                                                          height:
                                                                              40,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                            shape:
                                                                                BoxShape.circle,
                                                                          ),
                                                                          child:
                                                                              InkWell(
                                                                            onTap:
                                                                                () async {
                                                                              await Navigator.push(
                                                                                context,
                                                                                MaterialPageRoute(
                                                                                  builder: (context) => HistoriUmumWidget(
                                                                                    userRef: labPenggunaRecord.reference,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.alarm_off_rounded,
                                                                              color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                              size: 24,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      if ((labPenggunaRecord
                                                                              .statusKehadiran) ==
                                                                          'Hadir')
                                                                        InkWell(
                                                                          onTap:
                                                                              () async {
                                                                            await Navigator.push(
                                                                              context,
                                                                              MaterialPageRoute(
                                                                                builder: (context) => HistoriUmumWidget(
                                                                                  userRef: labPenggunaRecord.reference,
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                40,
                                                                            height:
                                                                                40,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryColor,
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                            child:
                                                                                InkWell(
                                                                              onTap: () async {
                                                                                await Navigator.push(
                                                                                  context,
                                                                                  MaterialPageRoute(
                                                                                    builder: (context) => HistoriUmumWidget(
                                                                                      userRef: labPenggunaRecord.reference,
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                              child: Icon(
                                                                                Icons.alarm_on_outlined,
                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                size: 24,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      if ((labPenggunaRecord
                                                                              .statusKehadiran) ==
                                                                          'Tugas Luar')
                                                                        InkWell(
                                                                          onTap:
                                                                              () async {
                                                                            await Navigator.push(
                                                                              context,
                                                                              MaterialPageRoute(
                                                                                builder: (context) => HistoriUmumWidget(
                                                                                  userRef: labPenggunaRecord.reference,
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                40,
                                                                            height:
                                                                                40,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Color(0xFF8789F3),
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                            child:
                                                                                InkWell(
                                                                              onTap: () async {
                                                                                await Navigator.push(
                                                                                  context,
                                                                                  MaterialPageRoute(
                                                                                    builder: (context) => HistoriUmumWidget(
                                                                                      userRef: labPenggunaRecord.reference,
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                              child: Icon(
                                                                                Icons.airplanemode_active_rounded,
                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                size: 24,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      if ((labPenggunaRecord
                                                                              .statusKehadiran) ==
                                                                          'Berhalangan')
                                                                        InkWell(
                                                                          onTap:
                                                                              () async {
                                                                            await Navigator.push(
                                                                              context,
                                                                              MaterialPageRoute(
                                                                                builder: (context) => HistoriUmumWidget(
                                                                                  userRef: labPenggunaRecord.reference,
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                40,
                                                                            height:
                                                                                40,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                            child:
                                                                                InkWell(
                                                                              onTap: () async {
                                                                                await Navigator.push(
                                                                                  context,
                                                                                  MaterialPageRoute(
                                                                                    builder: (context) => HistoriUmumWidget(
                                                                                      userRef: labPenggunaRecord.reference,
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                              child: Icon(
                                                                                Icons.access_alarm_rounded,
                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                size: 24,
                                                                              ),
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
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
