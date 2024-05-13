import '/backend/backend.dart';
import '/components/app_bar2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/navbar/nav_barr/nav_barr_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'articles_model.dart';
export 'articles_model.dart';

class ArticlesWidget extends StatefulWidget {
  const ArticlesWidget({
    super.key,
    required this.article,
  });

  final DocumentReference? article;

  @override
  State<ArticlesWidget> createState() => _ArticlesWidgetState();
}

class _ArticlesWidgetState extends State<ArticlesWidget> {
  late ArticlesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ArticlesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'articles',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Stack(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 90.0, 0.0, 90.0),
                  child: StreamBuilder<ArticlesRecord>(
                    stream: ArticlesRecord.getDocument(widget.article!),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return const Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Color(0xFF265631),
                              ),
                            ),
                          ),
                        );
                      }
                      final articleContainerArticlesRecord = snapshot.data!;
                      return Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              FlutterFlowTheme.of(context).primaryBackground,
                              const Color(0xFFF6EB82)
                            ],
                            stops: const [0.0, 1.0],
                            begin: const AlignmentDirectional(0.0, -1.0),
                            end: const AlignmentDirectional(0, 1.0),
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  articleContainerArticlesRecord.image.path,
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.85,
                                  height: 120.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: AutoSizeText(
                                  FFLocalizations.of(context).getVariableText(
                                    frText: articleContainerArticlesRecord
                                        .articleTitle,
                                    enText: articleContainerArticlesRecord
                                        .articleTitleEnglish,
                                    arText: articleContainerArticlesRecord
                                        .articleContentArabic,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Bebas Neue',
                                        color: const Color(0xF2000000),
                                        fontSize: 18.0,
                                        letterSpacing: 1.0,
                                        decoration: TextDecoration.underline,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-1.0, -1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 0.0, 15.0, 0.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: const BoxDecoration(),
                                    child: Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context)
                                            .getVariableText(
                                          frText: articleContainerArticlesRecord
                                              .articleContent,
                                          enText: articleContainerArticlesRecord
                                              .articleContentEnglish,
                                          arText: articleContainerArticlesRecord
                                              .articleContentArabic,
                                        ),
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Bebas Neue',
                                              color: Colors.black,
                                              letterSpacing: 1.0,
                                              lineHeight: 1.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              if (articleContainerArticlesRecord.video != '')
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 0.0, 15.0, 0.0),
                                  child: FlutterFlowVideoPlayer(
                                    path: articleContainerArticlesRecord.video,
                                    videoType: VideoType.network,
                                    autoPlay: false,
                                    looping: true,
                                    showControls: false,
                                    allowFullScreen: true,
                                    allowPlaybackSpeedMenu: false,
                                  ),
                                ),
                              Align(
                                alignment: const AlignmentDirectional(1.0, 1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 15.0, 0.0),
                                  child: Text(
                                    dateTimeFormat(
                                      'd/M/y',
                                      articleContainerArticlesRecord
                                          .createdDate!,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Bebas Neue',
                                          color: Colors.black,
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                            ]
                                .divide(const SizedBox(height: 15.0))
                                .addToStart(const SizedBox(height: 15.0)),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: wrapWithModel(
                    model: _model.navBarrModel,
                    updateCallback: () => setState(() {}),
                    child: NavBarrWidget(
                      colorLigueIccon: FlutterFlowTheme.of(context).primaryText,
                      colorLigueText: FlutterFlowTheme.of(context).primaryText,
                      colorChampionnatIcon:
                          FlutterFlowTheme.of(context).primaryText,
                      colorChampionnatText:
                          FlutterFlowTheme.of(context).primaryText,
                      colorHomeIcon: const Color(0xFFDBD991),
                      colorHomeText: const Color(0xFFDBD991),
                      colorMatchdayIcon:
                          FlutterFlowTheme.of(context).primaryText,
                      colorMatchdayText:
                          FlutterFlowTheme.of(context).primaryText,
                      colorSettingsIcon:
                          FlutterFlowTheme.of(context).primaryText,
                      colorSettingsText:
                          FlutterFlowTheme.of(context).primaryText,
                    ),
                  ),
                ),
                wrapWithModel(
                  model: _model.appBar2Model,
                  updateCallback: () => setState(() {}),
                  child: AppBar2Widget(
                    title: FFLocalizations.of(context).getText(
                      'xd3cbkk9' /* ARTICLES  */,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
