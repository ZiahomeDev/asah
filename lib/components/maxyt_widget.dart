import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_youtube_player.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class MaxytWidget extends StatefulWidget {
  const MaxytWidget({
    Key key,
    this.chatRef,
  }) : super(key: key);

  final DocumentReference chatRef;

  @override
  _MaxytWidgetState createState() => _MaxytWidgetState();
}

class _MaxytWidgetState extends State<MaxytWidget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ChatRecord>(
      future: ChatRecord.getDocumentOnce(widget.chatRef),
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
        final containerChatRecord = snapshot.data;
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBtnText,
          ),
          child: FlutterFlowYoutubePlayer(
            url: containerChatRecord.linkYoutube,
            autoPlay: false,
            looping: true,
            mute: false,
            showControls: true,
            showFullScreen: true,
          ),
        );
      },
    );
  }
}
