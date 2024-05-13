import '/components/app_bar2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/navbar/nav_barr/nav_barr_widget.dart';
import 'package:flutter/material.dart';
import 'langue_model.dart';
export 'langue_model.dart';

class LangueWidget extends StatefulWidget {
  const LangueWidget({super.key});

  @override
  State<LangueWidget> createState() => _LangueWidgetState();
}

class _LangueWidgetState extends State<LangueWidget> {
  late LangueModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LangueModel());

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
        title: 'langue',
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
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 90.0, 0.0, 0.0),
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
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 0.05,
                            decoration: const BoxDecoration(
                              color: Color(0x99265631),
                            ),
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'd0p2jn8h' /* LANGUE */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Bebas Neue',
                                      fontSize: 16.0,
                                      letterSpacing: 1.0,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 0.06,
                          decoration: const BoxDecoration(
                            color: Color(0x3FFFFFFF),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        '6vn47z69' /* FRANÇAIS  */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            letterSpacing: 1.0,
                                          ),
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'wqxdnf2g' /* LANGUE PAR DÉFAUT */,
                                      ),
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: const Color(0x57000000),
                                            fontSize: 10.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w200,
                                          ),
                                    ),
                                  ],
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    setAppLanguage(context, 'fr');
                                  },
                                  child: Container(
                                    width: 22.0,
                                    height: 22.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: const Color(0x51000000),
                                      ),
                                    ),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        setAppLanguage(context, 'fr');
                                      },
                                      child: Stack(
                                        children: [
                                          if (FFLocalizations.of(context)
                                                  .languageCode ==
                                              'fr')
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Container(
                                                width: 13.0,
                                                height: 13.0,
                                                decoration: const BoxDecoration(
                                                  color: Color(0xEA4BA154),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 0.06,
                          decoration: const BoxDecoration(
                            color: Color(0x40FFFFFF),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        '37ay51e5' /* ANGLAIS */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            letterSpacing: 1.0,
                                          ),
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        '3cvq2zm4' /* ENGLISH */,
                                      ),
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: const Color(0x57000000),
                                            fontSize: 10.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w300,
                                          ),
                                    ),
                                  ],
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    setAppLanguage(context, 'en');
                                  },
                                  child: Container(
                                    width: 22.0,
                                    height: 22.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: const Color(0x51000000),
                                      ),
                                    ),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        setAppLanguage(context, 'en');
                                      },
                                      child: Stack(
                                        children: [
                                          if (FFLocalizations.of(context)
                                                  .languageCode ==
                                              'en')
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Container(
                                                width: 13.0,
                                                height: 13.0,
                                                decoration: const BoxDecoration(
                                                  color: Color(0xEA4BA154),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 0.06,
                          decoration: const BoxDecoration(
                            color: Color(0x3FFFFFFF),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        '02l76jjk' /* ARABE */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            letterSpacing: 1.0,
                                          ),
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'ez4xd2ij' /* العربية */,
                                      ),
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: const Color(0x57000000),
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w300,
                                          ),
                                    ),
                                  ],
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    setAppLanguage(context, 'ar');
                                  },
                                  child: Container(
                                    width: 22.0,
                                    height: 22.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: const Color(0x51000000),
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        if (FFLocalizations.of(context)
                                                .languageCode ==
                                            'ar')
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Container(
                                              width: 13.0,
                                              height: 13.0,
                                              decoration: const BoxDecoration(
                                                color: Color(0xEA4BA154),
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ].divide(const SizedBox(height: 1.0)),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: wrapWithModel(
                    model: _model.navBarrModel,
                    updateCallback: () => setState(() {}),
                    child: NavBarrWidget(
                      colorSettingsIcon:
                          FlutterFlowTheme.of(context).secondaryText,
                      colorSettingsText:
                          FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ),
                ),
                wrapWithModel(
                  model: _model.appBar2Model,
                  updateCallback: () => setState(() {}),
                  child: AppBar2Widget(
                    title: FFLocalizations.of(context).getText(
                      'x445kkm6' /* PARAMETRES */,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
