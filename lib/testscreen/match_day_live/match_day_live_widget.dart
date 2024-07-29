import '/components/app_bar2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import '/navbar/nav_barr/nav_barr_widget.dart';
import 'package:flutter/material.dart';
import 'match_day_live_model.dart';
export 'match_day_live_model.dart';

class MatchDayLiveWidget extends StatefulWidget {
  const MatchDayLiveWidget({
    super.key,
    required this.link,
    required this.youtubeLink,
  });

  final String? link;
  final String? youtubeLink;

  @override
  State<MatchDayLiveWidget> createState() => _MatchDayLiveWidgetState();
}

class _MatchDayLiveWidgetState extends State<MatchDayLiveWidget> {
  late MatchDayLiveModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MatchDayLiveModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubeFullScreenWrapper(
      child: Title(
          title: 'matchDayLive',
          color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
          child: GestureDetector(
            onTap: () => _model.unfocusNode.canRequestFocus
                ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                : FocusScope.of(context).unfocus(),
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              body: SafeArea(
                top: true,
                child: Stack(
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 90.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                FlutterFlowTheme.of(context).primaryBackground,
                                FlutterFlowTheme.of(context).secondaryBackground
                              ],
                              stops: const [0.0, 1.0],
                              begin: const AlignmentDirectional(0.0, -1.0),
                              end: const AlignmentDirectional(0, 1.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 90.0),
                            child: FlutterFlowYoutubePlayer(
                              url: widget.youtubeLink!,
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: MediaQuery.sizeOf(context).height * 0.725,
                              autoPlay: false,
                              looping: true,
                              mute: false,
                              showControls: true,
                              showFullScreen: true,
                              strictRelatedVideos: false,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      child: wrapWithModel(
                        model: _model.navBarrModel,
                        updateCallback: () => setState(() {}),
                        child: NavBarrWidget(
                          colorMatchdayIcon:
                              FlutterFlowTheme.of(context).secondaryText,
                          colorMatchdayText:
                              FlutterFlowTheme.of(context).secondaryText,
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.appBar2Model,
                      updateCallback: () => setState(() {}),
                      child: AppBar2Widget(
                        title: FFLocalizations.of(context).getText(
                          'sdq2mob9' /* MATCH DAY */,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
