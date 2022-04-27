import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_pdf_viewer.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class MaxPDFWidget extends StatefulWidget {
  const MaxPDFWidget({
    Key key,
    this.refChat,
  }) : super(key: key);

  final DocumentReference refChat;

  @override
  _MaxPDFWidgetState createState() => _MaxPDFWidgetState();
}

class _MaxPDFWidgetState extends State<MaxPDFWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.topToBottom,
                        duration: Duration(milliseconds: 100),
                        reverseDuration: Duration(milliseconds: 100),
                        child: NavBarPage(initialPage: 'pesan'),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.close_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 26,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: FutureBuilder<ChatRecord>(
                    future: ChatRecord.getDocumentOnce(widget.refChat),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: SpinKitSquareCircle(
                              color: FlutterFlowTheme.of(context).primaryColor,
                              size: 50,
                            ),
                          ),
                        );
                      }
                      final columnChatRecord = snapshot.data;
                      return SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FlutterFlowPdfViewer(
                              networkPath: columnChatRecord.linkFile,
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 1,
                              horizontalScroll: false,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
