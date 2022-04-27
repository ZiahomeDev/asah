import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/lanjutbaca_widget.dart';
import '../components/maxyt_widget.dart';
import '../components/menu_atta_chat_widget.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_pdf_viewer.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_youtube_player.dart';
import '../main.dart';
import '../maximum_p_d_f/maximum_p_d_f_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class PesanWidget extends StatefulWidget {
  const PesanWidget({Key key}) : super(key: key);

  @override
  _PesanWidgetState createState() => _PesanWidgetState();
}

class _PesanWidgetState extends State<PesanWidget> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(30, 10, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  InkWell(
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              NavBarPage(initialPage: 'utama'),
                                        ),
                                      );
                                    },
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 24,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/logo-fkip-mobile.png',
                                        height: 40,
                                        fit: BoxFit.cover,
                                      ),
                                      Text(
                                        'CHAT',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 24,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      decoration: BoxDecoration(
                        color: Color(0xA08EC4F8),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SingleChildScrollView(
                                  primary: false,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        constraints: BoxConstraints(
                                          maxWidth: 600,
                                        ),
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15, 15, 15, 15),
                                          child:
                                              StreamBuilder<List<ChatRecord>>(
                                            stream: queryChatRecord(
                                              queryBuilder: (chatRecord) =>
                                                  chatRecord
                                                      .orderBy('tanggalPesan'),
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
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      size: 50,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<ChatRecord>
                                                  listViewChatRecordList =
                                                  snapshot.data;
                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    listViewChatRecordList
                                                        .length,
                                                itemBuilder:
                                                    (context, listViewIndex) {
                                                  final listViewChatRecord =
                                                      listViewChatRecordList[
                                                          listViewIndex];
                                                  return SingleChildScrollView(
                                                    primary: false,
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Stack(
                                                          children: [
                                                            if ((listViewChatRecord
                                                                    .refUser) ==
                                                                (currentUserReference))
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            10),
                                                                child: StreamBuilder<
                                                                    PenggunaRecord>(
                                                                  stream: PenggunaRecord
                                                                      .getDocument(
                                                                          listViewChatRecord
                                                                              .refUser),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              50,
                                                                          height:
                                                                              50,
                                                                          child:
                                                                              SpinKitSquareCircle(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryColor,
                                                                            size:
                                                                                50,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    final sayaPenggunaRecord =
                                                                        snapshot
                                                                            .data;
                                                                    return Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Stack(
                                                                          children: [
                                                                            if ((listViewChatRecord.msg) ==
                                                                                true)
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                                                children: [
                                                                                  Container(
                                                                                    width: MediaQuery.of(context).size.width * 0.7,
                                                                                    decoration: BoxDecoration(
                                                                                      color: Color(0xFFCDE4FC),
                                                                                      borderRadius: BorderRadius.circular(6),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(6, 6, 6, 6),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Expanded(
                                                                                                child: Text(
                                                                                                  sayaPenggunaRecord.displayName.maybeHandleOverflow(
                                                                                                    maxChars: 30,
                                                                                                    replacement: '…',
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: 'Poppins',
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        fontSize: 9,
                                                                                                        fontWeight: FontWeight.normal,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Expanded(
                                                                                                child: Text(
                                                                                                  listViewChatRecord.pesan.maybeHandleOverflow(
                                                                                                    maxChars: 200,
                                                                                                    replacement: '…',
                                                                                                  ),
                                                                                                  textAlign: TextAlign.start,
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: 'Poppins',
                                                                                                        fontSize: 12,
                                                                                                        fontWeight: FontWeight.normal,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          if ((functions.hitunghuruf(listViewChatRecord.pesan)) >= 200)
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 4),
                                                                                                  child: InkWell(
                                                                                                    onTap: () async {
                                                                                                      await showModalBottomSheet(
                                                                                                        isScrollControlled: true,
                                                                                                        backgroundColor: Colors.transparent,
                                                                                                        barrierColor: Color(0x33070830),
                                                                                                        context: context,
                                                                                                        builder: (context) {
                                                                                                          return Padding(
                                                                                                            padding: MediaQuery.of(context).viewInsets,
                                                                                                            child: Container(
                                                                                                              height: MediaQuery.of(context).size.height * 0.5,
                                                                                                              child: LanjutbacaWidget(
                                                                                                                chatRef: listViewChatRecord.reference,
                                                                                                              ),
                                                                                                            ),
                                                                                                          );
                                                                                                        },
                                                                                                      );
                                                                                                    },
                                                                                                    child: Text(
                                                                                                      'Lanjut baca ...',
                                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                            fontFamily: 'Poppins',
                                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                            fontSize: 10,
                                                                                                            fontWeight: FontWeight.normal,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                                                                                                child: Text(
                                                                                                  functions.namaTanggalFunc(listViewChatRecord.tanggalPesan),
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: 'Poppins',
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        fontSize: 9,
                                                                                                        fontWeight: FontWeight.w300,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                                                                                                child: Text(
                                                                                                  dateTimeFormat('Hm', listViewChatRecord.tanggalPesan),
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: 'Poppins',
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        fontSize: 9,
                                                                                                        fontWeight: FontWeight.w300,
                                                                                                      ),
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
                                                                            if ((listViewChatRecord.img) ==
                                                                                true)
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Container(
                                                                                    width: MediaQuery.of(context).size.width * 0.7,
                                                                                    decoration: BoxDecoration(
                                                                                      color: Color(0xFFCDE4FC),
                                                                                      borderRadius: BorderRadius.circular(6),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(6, 6, 6, 6),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Expanded(
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
                                                                                                  child: Text(
                                                                                                    sayaPenggunaRecord.displayName.maybeHandleOverflow(
                                                                                                      maxChars: 30,
                                                                                                      replacement: '…',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                          fontFamily: 'Poppins',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          fontSize: 9,
                                                                                                          fontWeight: FontWeight.normal,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Expanded(
                                                                                                child: Container(
                                                                                                  width: 100,
                                                                                                  constraints: BoxConstraints(
                                                                                                    maxHeight: 120,
                                                                                                  ),
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: Colors.transparent,
                                                                                                  ),
                                                                                                  child: InkWell(
                                                                                                    onTap: () async {
                                                                                                      await Navigator.push(
                                                                                                        context,
                                                                                                        PageTransition(
                                                                                                          type: PageTransitionType.fade,
                                                                                                          child: FlutterFlowExpandedImageView(
                                                                                                            image: Image.network(
                                                                                                              listViewChatRecord.gambar,
                                                                                                              fit: BoxFit.contain,
                                                                                                            ),
                                                                                                            allowRotation: false,
                                                                                                            tag: listViewChatRecord.gambar,
                                                                                                            useHeroAnimation: true,
                                                                                                          ),
                                                                                                        ),
                                                                                                      );
                                                                                                    },
                                                                                                    child: Hero(
                                                                                                      tag: listViewChatRecord.gambar,
                                                                                                      transitionOnUserGestures: true,
                                                                                                      child: ClipRRect(
                                                                                                        borderRadius: BorderRadius.circular(6),
                                                                                                        child: Image.network(
                                                                                                          listViewChatRecord.gambar,
                                                                                                          fit: BoxFit.cover,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          if ((listViewChatRecord.pesanImg != null) && (listViewChatRecord.pesanImg != ''))
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                children: [
                                                                                                  Expanded(
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 2, 4, 4),
                                                                                                      child: Text(
                                                                                                        listViewChatRecord.pesanImg.maybeHandleOverflow(
                                                                                                          maxChars: 100,
                                                                                                          replacement: '…',
                                                                                                        ),
                                                                                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                              fontFamily: 'Poppins',
                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                              fontSize: 11,
                                                                                                              fontWeight: FontWeight.normal,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                                                                                                child: Text(
                                                                                                  functions.namaTanggalFunc(listViewChatRecord.tanggalPesan),
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: 'Poppins',
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        fontSize: 9,
                                                                                                        fontWeight: FontWeight.w300,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                                                                                                child: Text(
                                                                                                  dateTimeFormat('Hm', listViewChatRecord.tanggalPesan),
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: 'Poppins',
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        fontSize: 9,
                                                                                                        fontWeight: FontWeight.w300,
                                                                                                      ),
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
                                                                            if ((listViewChatRecord.yt) ==
                                                                                true)
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Container(
                                                                                    width: MediaQuery.of(context).size.width * 0.7,
                                                                                    decoration: BoxDecoration(
                                                                                      color: Color(0xFFCDE4FC),
                                                                                      borderRadius: BorderRadius.circular(6),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(6, 6, 6, 6),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Expanded(
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
                                                                                                  child: Text(
                                                                                                    sayaPenggunaRecord.displayName.maybeHandleOverflow(
                                                                                                      maxChars: 30,
                                                                                                      replacement: '…',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                          fontFamily: 'Poppins',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          fontSize: 9,
                                                                                                          fontWeight: FontWeight.normal,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                                                                                                child: InkWell(
                                                                                                  onTap: () async {
                                                                                                    await showModalBottomSheet(
                                                                                                      isScrollControlled: true,
                                                                                                      backgroundColor: Colors.transparent,
                                                                                                      barrierColor: Color(0x3F000000),
                                                                                                      context: context,
                                                                                                      builder: (context) {
                                                                                                        return Padding(
                                                                                                          padding: MediaQuery.of(context).viewInsets,
                                                                                                          child: MaxytWidget(
                                                                                                            chatRef: listViewChatRecord.reference,
                                                                                                          ),
                                                                                                        );
                                                                                                      },
                                                                                                    );
                                                                                                  },
                                                                                                  child: Icon(
                                                                                                    Icons.play_circle_outline_outlined,
                                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                    size: 24,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Expanded(
                                                                                                child: Container(
                                                                                                  constraints: BoxConstraints(
                                                                                                    maxHeight: 180,
                                                                                                  ),
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: Colors.transparent,
                                                                                                  ),
                                                                                                  child: FlutterFlowYoutubePlayer(
                                                                                                    url: listViewChatRecord.linkYoutube,
                                                                                                    height: 180,
                                                                                                    autoPlay: false,
                                                                                                    looping: true,
                                                                                                    mute: false,
                                                                                                    showControls: true,
                                                                                                    showFullScreen: true,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          if ((listViewChatRecord.pesanYt != null) && (listViewChatRecord.pesanYt != ''))
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                children: [
                                                                                                  Expanded(
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 2, 4, 4),
                                                                                                      child: Text(
                                                                                                        listViewChatRecord.pesanYt.maybeHandleOverflow(
                                                                                                          maxChars: 100,
                                                                                                          replacement: '…',
                                                                                                        ),
                                                                                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                              fontFamily: 'Poppins',
                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                              fontSize: 11,
                                                                                                              fontWeight: FontWeight.normal,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                                                                                                child: Text(
                                                                                                  functions.namaTanggalFunc(listViewChatRecord.tanggalPesan),
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: 'Poppins',
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        fontSize: 9,
                                                                                                        fontWeight: FontWeight.w300,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                                                                                                child: Text(
                                                                                                  dateTimeFormat('Hm', listViewChatRecord.tanggalPesan),
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: 'Poppins',
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        fontSize: 9,
                                                                                                        fontWeight: FontWeight.w300,
                                                                                                      ),
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
                                                                            if ((listViewChatRecord.pdf) ==
                                                                                true)
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Container(
                                                                                    width: MediaQuery.of(context).size.width * 0.7,
                                                                                    decoration: BoxDecoration(
                                                                                      color: Color(0xFFCDE4FC),
                                                                                      borderRadius: BorderRadius.circular(6),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(6, 6, 6, 6),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Expanded(
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
                                                                                                  child: Text(
                                                                                                    sayaPenggunaRecord.displayName.maybeHandleOverflow(
                                                                                                      maxChars: 30,
                                                                                                      replacement: '…',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                          fontFamily: 'Poppins',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          fontSize: 9,
                                                                                                          fontWeight: FontWeight.normal,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Expanded(
                                                                                                child: Container(
                                                                                                  constraints: BoxConstraints(
                                                                                                    maxHeight: 180,
                                                                                                  ),
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: Colors.transparent,
                                                                                                  ),
                                                                                                  child: Stack(
                                                                                                    children: [
                                                                                                      FlutterFlowPdfViewer(
                                                                                                        networkPath: listViewChatRecord.linkFile,
                                                                                                        height: 300,
                                                                                                        horizontalScroll: false,
                                                                                                      ),
                                                                                                      FlutterFlowIconButton(
                                                                                                        borderColor: Colors.transparent,
                                                                                                        borderRadius: 20,
                                                                                                        borderWidth: 1,
                                                                                                        buttonSize: 40,
                                                                                                        fillColor: Color(0x4D000000),
                                                                                                        icon: Icon(
                                                                                                          Icons.zoom_in_outlined,
                                                                                                          color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                          size: 20,
                                                                                                        ),
                                                                                                        onPressed: () async {
                                                                                                          await Navigator.push(
                                                                                                            context,
                                                                                                            MaterialPageRoute(
                                                                                                              builder: (context) => MaximumPDFWidget(
                                                                                                                chatRef: listViewChatRecord.reference,
                                                                                                              ),
                                                                                                            ),
                                                                                                          );
                                                                                                        },
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          if ((listViewChatRecord.pesanPdf != null) && (listViewChatRecord.pesanPdf != ''))
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                children: [
                                                                                                  Expanded(
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 2, 4, 4),
                                                                                                      child: Text(
                                                                                                        listViewChatRecord.pesanPdf.maybeHandleOverflow(
                                                                                                          maxChars: 100,
                                                                                                          replacement: '…',
                                                                                                        ),
                                                                                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                              fontFamily: 'Poppins',
                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                              fontSize: 11,
                                                                                                              fontWeight: FontWeight.normal,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                                                                                                child: Text(
                                                                                                  functions.namaTanggalFunc(listViewChatRecord.tanggalPesan),
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: 'Poppins',
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        fontSize: 9,
                                                                                                        fontWeight: FontWeight.w300,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                                                                                                child: Text(
                                                                                                  dateTimeFormat('Hm', listViewChatRecord.tanggalPesan),
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: 'Poppins',
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        fontSize: 9,
                                                                                                        fontWeight: FontWeight.w300,
                                                                                                      ),
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
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(20),
                                                                          child:
                                                                              Image.network(
                                                                            sayaPenggunaRecord.photoUrl,
                                                                            width:
                                                                                40,
                                                                            height:
                                                                                40,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            if ((listViewChatRecord
                                                                    .refUser) !=
                                                                (currentUserReference))
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            10),
                                                                child: StreamBuilder<
                                                                    PenggunaRecord>(
                                                                  stream: PenggunaRecord
                                                                      .getDocument(
                                                                          listViewChatRecord
                                                                              .refUser),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              50,
                                                                          height:
                                                                              50,
                                                                          child:
                                                                              SpinKitSquareCircle(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryColor,
                                                                            size:
                                                                                50,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    final orangLainPenggunaRecord =
                                                                        snapshot
                                                                            .data;
                                                                    return Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(20),
                                                                          child:
                                                                              Image.network(
                                                                            orangLainPenggunaRecord.photoUrl,
                                                                            width:
                                                                                40,
                                                                            height:
                                                                                40,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        Stack(
                                                                          children: [
                                                                            if ((listViewChatRecord.msg) ==
                                                                                true)
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Container(
                                                                                    width: MediaQuery.of(context).size.width * 0.7,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                      borderRadius: BorderRadius.circular(6),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(6, 6, 6, 6),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Expanded(
                                                                                                child: Text(
                                                                                                  orangLainPenggunaRecord.displayName.maybeHandleOverflow(
                                                                                                    maxChars: 30,
                                                                                                    replacement: '…',
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: 'Poppins',
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        fontSize: 9,
                                                                                                        fontWeight: FontWeight.normal,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Expanded(
                                                                                                child: Text(
                                                                                                  listViewChatRecord.pesan.maybeHandleOverflow(
                                                                                                    maxChars: 200,
                                                                                                    replacement: '…',
                                                                                                  ),
                                                                                                  textAlign: TextAlign.start,
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: 'Poppins',
                                                                                                        fontSize: 12,
                                                                                                        fontWeight: FontWeight.normal,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          if ((functions.hitunghuruf(listViewChatRecord.pesan)) >= 200)
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 4),
                                                                                                  child: InkWell(
                                                                                                    onTap: () async {
                                                                                                      await showModalBottomSheet(
                                                                                                        isScrollControlled: true,
                                                                                                        backgroundColor: Colors.transparent,
                                                                                                        barrierColor: Color(0x33070830),
                                                                                                        context: context,
                                                                                                        builder: (context) {
                                                                                                          return Padding(
                                                                                                            padding: MediaQuery.of(context).viewInsets,
                                                                                                            child: Container(
                                                                                                              height: MediaQuery.of(context).size.height * 0.5,
                                                                                                              child: LanjutbacaWidget(
                                                                                                                chatRef: listViewChatRecord.reference,
                                                                                                              ),
                                                                                                            ),
                                                                                                          );
                                                                                                        },
                                                                                                      );
                                                                                                    },
                                                                                                    child: Text(
                                                                                                      'Lanjut baca ...',
                                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                            fontFamily: 'Poppins',
                                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                            fontSize: 10,
                                                                                                            fontWeight: FontWeight.normal,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                                                                                                child: Text(
                                                                                                  dateTimeFormat('yMMMd', listViewChatRecord.tanggalPesan),
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: 'Poppins',
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        fontSize: 9,
                                                                                                        fontWeight: FontWeight.w300,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                                                                                                child: Text(
                                                                                                  dateTimeFormat('Hm', listViewChatRecord.tanggalPesan),
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: 'Poppins',
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        fontSize: 9,
                                                                                                        fontWeight: FontWeight.w300,
                                                                                                      ),
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
                                                                            if ((listViewChatRecord.img) ==
                                                                                true)
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Container(
                                                                                    width: MediaQuery.of(context).size.width * 0.7,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                      borderRadius: BorderRadius.circular(6),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(6, 6, 6, 6),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Expanded(
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
                                                                                                  child: Text(
                                                                                                    orangLainPenggunaRecord.displayName.maybeHandleOverflow(
                                                                                                      maxChars: 30,
                                                                                                      replacement: '…',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                          fontFamily: 'Poppins',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          fontSize: 9,
                                                                                                          fontWeight: FontWeight.normal,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Expanded(
                                                                                                child: Container(
                                                                                                  width: 100,
                                                                                                  constraints: BoxConstraints(
                                                                                                    maxHeight: 120,
                                                                                                  ),
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: Colors.transparent,
                                                                                                  ),
                                                                                                  child: InkWell(
                                                                                                    onTap: () async {
                                                                                                      await Navigator.push(
                                                                                                        context,
                                                                                                        PageTransition(
                                                                                                          type: PageTransitionType.fade,
                                                                                                          child: FlutterFlowExpandedImageView(
                                                                                                            image: Image.network(
                                                                                                              listViewChatRecord.gambar,
                                                                                                              fit: BoxFit.contain,
                                                                                                            ),
                                                                                                            allowRotation: false,
                                                                                                            tag: listViewChatRecord.gambar,
                                                                                                            useHeroAnimation: true,
                                                                                                          ),
                                                                                                        ),
                                                                                                      );
                                                                                                    },
                                                                                                    child: Hero(
                                                                                                      tag: listViewChatRecord.gambar,
                                                                                                      transitionOnUserGestures: true,
                                                                                                      child: ClipRRect(
                                                                                                        borderRadius: BorderRadius.circular(6),
                                                                                                        child: Image.network(
                                                                                                          listViewChatRecord.gambar,
                                                                                                          fit: BoxFit.cover,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          if ((listViewChatRecord.pesanImg != null) && (listViewChatRecord.pesanImg != ''))
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                              children: [
                                                                                                Expanded(
                                                                                                  child: Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0, 2, 4, 4),
                                                                                                    child: Text(
                                                                                                      listViewChatRecord.pesanImg.maybeHandleOverflow(
                                                                                                        maxChars: 100,
                                                                                                        replacement: '…',
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                            fontFamily: 'Poppins',
                                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                            fontSize: 11,
                                                                                                            fontWeight: FontWeight.normal,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                                                                                                child: Text(
                                                                                                  functions.namaTanggalFunc(listViewChatRecord.tanggalPesan),
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: 'Poppins',
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        fontSize: 9,
                                                                                                        fontWeight: FontWeight.w300,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                                                                                                child: Text(
                                                                                                  dateTimeFormat('Hm', listViewChatRecord.tanggalPesan),
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: 'Poppins',
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        fontSize: 9,
                                                                                                        fontWeight: FontWeight.w300,
                                                                                                      ),
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
                                                                            if ((listViewChatRecord.yt) ==
                                                                                true)
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Container(
                                                                                    width: MediaQuery.of(context).size.width * 0.7,
                                                                                    decoration: BoxDecoration(
                                                                                      color: Color(0xFFCDE4FC),
                                                                                      borderRadius: BorderRadius.circular(6),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(6, 6, 6, 6),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Expanded(
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
                                                                                                  child: Text(
                                                                                                    orangLainPenggunaRecord.displayName.maybeHandleOverflow(
                                                                                                      maxChars: 30,
                                                                                                      replacement: '…',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                          fontFamily: 'Poppins',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          fontSize: 9,
                                                                                                          fontWeight: FontWeight.normal,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                                                                                                child: InkWell(
                                                                                                  onTap: () async {
                                                                                                    await showModalBottomSheet(
                                                                                                      isScrollControlled: true,
                                                                                                      backgroundColor: Colors.transparent,
                                                                                                      barrierColor: Color(0x3F000000),
                                                                                                      context: context,
                                                                                                      builder: (context) {
                                                                                                        return Padding(
                                                                                                          padding: MediaQuery.of(context).viewInsets,
                                                                                                          child: MaxytWidget(
                                                                                                            chatRef: listViewChatRecord.reference,
                                                                                                          ),
                                                                                                        );
                                                                                                      },
                                                                                                    );
                                                                                                  },
                                                                                                  child: Icon(
                                                                                                    Icons.play_circle_outline_outlined,
                                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                    size: 24,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Expanded(
                                                                                                child: Container(
                                                                                                  constraints: BoxConstraints(
                                                                                                    maxHeight: 180,
                                                                                                  ),
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: Colors.transparent,
                                                                                                  ),
                                                                                                  child: FlutterFlowYoutubePlayer(
                                                                                                    url: listViewChatRecord.linkYoutube,
                                                                                                    height: 180,
                                                                                                    autoPlay: false,
                                                                                                    looping: true,
                                                                                                    mute: false,
                                                                                                    showControls: true,
                                                                                                    showFullScreen: true,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          if ((listViewChatRecord.pesanYt != null) && (listViewChatRecord.pesanYt != ''))
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                children: [
                                                                                                  Expanded(
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 2, 4, 4),
                                                                                                      child: Text(
                                                                                                        listViewChatRecord.pesanYt.maybeHandleOverflow(
                                                                                                          maxChars: 100,
                                                                                                          replacement: '…',
                                                                                                        ),
                                                                                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                              fontFamily: 'Poppins',
                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                              fontSize: 11,
                                                                                                              fontWeight: FontWeight.normal,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                                                                                                child: Text(
                                                                                                  functions.namaTanggalFunc(listViewChatRecord.tanggalPesan),
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: 'Poppins',
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        fontSize: 9,
                                                                                                        fontWeight: FontWeight.w300,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                                                                                                child: Text(
                                                                                                  dateTimeFormat('Hm', listViewChatRecord.tanggalPesan),
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: 'Poppins',
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        fontSize: 9,
                                                                                                        fontWeight: FontWeight.w300,
                                                                                                      ),
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
                                                                            if ((listViewChatRecord.pdf) ==
                                                                                true)
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Container(
                                                                                    width: MediaQuery.of(context).size.width * 0.7,
                                                                                    decoration: BoxDecoration(
                                                                                      color: Colors.white,
                                                                                      borderRadius: BorderRadius.circular(6),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(6, 6, 6, 6),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Expanded(
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
                                                                                                  child: Text(
                                                                                                    orangLainPenggunaRecord.displayName.maybeHandleOverflow(
                                                                                                      maxChars: 30,
                                                                                                      replacement: '…',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                          fontFamily: 'Poppins',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          fontSize: 9,
                                                                                                          fontWeight: FontWeight.normal,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Expanded(
                                                                                                child: Container(
                                                                                                  constraints: BoxConstraints(
                                                                                                    maxHeight: 180,
                                                                                                  ),
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: Colors.transparent,
                                                                                                  ),
                                                                                                  child: Stack(
                                                                                                    children: [
                                                                                                      FlutterFlowPdfViewer(
                                                                                                        networkPath: listViewChatRecord.linkFile,
                                                                                                        height: 200,
                                                                                                        horizontalScroll: false,
                                                                                                      ),
                                                                                                      FlutterFlowIconButton(
                                                                                                        borderColor: Colors.transparent,
                                                                                                        borderRadius: 20,
                                                                                                        borderWidth: 1,
                                                                                                        buttonSize: 40,
                                                                                                        fillColor: Color(0x4D000000),
                                                                                                        icon: Icon(
                                                                                                          Icons.zoom_in_sharp,
                                                                                                          color: FlutterFlowTheme.of(context).lineColor,
                                                                                                          size: 20,
                                                                                                        ),
                                                                                                        onPressed: () async {
                                                                                                          await Navigator.push(
                                                                                                            context,
                                                                                                            MaterialPageRoute(
                                                                                                              builder: (context) => MaximumPDFWidget(
                                                                                                                chatRef: listViewChatRecord.reference,
                                                                                                              ),
                                                                                                            ),
                                                                                                          );
                                                                                                        },
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          if ((listViewChatRecord.pesanPdf != null) && (listViewChatRecord.pesanPdf != ''))
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                children: [
                                                                                                  Expanded(
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 2, 4, 4),
                                                                                                      child: Text(
                                                                                                        listViewChatRecord.pesanPdf.maybeHandleOverflow(
                                                                                                          maxChars: 100,
                                                                                                          replacement: '…',
                                                                                                        ),
                                                                                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                              fontFamily: 'Poppins',
                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                              fontSize: 11,
                                                                                                              fontWeight: FontWeight.normal,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                                                                                                child: Text(
                                                                                                  functions.namaTanggalFunc(listViewChatRecord.tanggalPesan),
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: 'Poppins',
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        fontSize: 9,
                                                                                                        fontWeight: FontWeight.w300,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                                                                                                child: Text(
                                                                                                  dateTimeFormat('Hm', listViewChatRecord.tanggalPesan),
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: 'Poppins',
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        fontSize: 9,
                                                                                                        fontWeight: FontWeight.w300,
                                                                                                      ),
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
                                                                      ],
                                                                    );
                                                                  },
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
                                        ),
                                      ),
                                    ],
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
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryColor,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 6, 6, 15),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  height: 46,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEEEEEE),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: TextFormField(
                                                controller: textController,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  hintText:
                                                      'Tulisakan sesuatu ...',
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBtnText,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(6, 6, 6, 6),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                textAlign: TextAlign.start,
                                                maxLines: 6,
                                                keyboardType:
                                                    TextInputType.multiline,
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
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 10),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xFF062A75),
                                  shape: BoxShape.circle,
                                ),
                                child: InkWell(
                                  onTap: () async {
                                    if (functions
                                        .pesanKosong(textController.text)) {
                                      final chatCreateData =
                                          createChatRecordData(
                                        refUser: currentUserReference,
                                        pesan: textController.text,
                                        tanggalPesan: getCurrentTimestamp,
                                        msg: true,
                                        img: false,
                                        yt: false,
                                        pdf: false,
                                      );
                                      await ChatRecord.collection
                                          .doc()
                                          .set(chatCreateData);
                                      await Navigator.pushAndRemoveUntil(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                          reverseDuration:
                                              Duration(milliseconds: 0),
                                          child:
                                              NavBarPage(initialPage: 'pesan'),
                                        ),
                                        (r) => false,
                                      );
                                    } else {
                                      return;
                                    }
                                  },
                                  child: Icon(
                                    Icons.send,
                                    color: Color(0xFFA3B5F5),
                                    size: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 6, 8, 10),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xFF142A84),
                                  shape: BoxShape.circle,
                                ),
                                child: InkWell(
                                  onTap: () async {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      barrierColor: Colors.transparent,
                                      context: context,
                                      builder: (context) {
                                        return Padding(
                                          padding:
                                              MediaQuery.of(context).viewInsets,
                                          child: Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.4,
                                            child: MenuAttaChatWidget(),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  child: Icon(
                                    Icons.attachment_sharp,
                                    color: Color(0xFFA3B5F5),
                                    size: 20,
                                  ),
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
            ],
          ),
        ),
      ),
    );
  }
}
