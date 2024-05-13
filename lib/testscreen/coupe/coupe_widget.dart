import '/components/app_bar2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/navbar/nav_barr/nav_barr_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'coupe_model.dart';
export 'coupe_model.dart';

class CoupeWidget extends StatefulWidget {
  const CoupeWidget({super.key});

  @override
  State<CoupeWidget> createState() => _CoupeWidgetState();
}

class _CoupeWidgetState extends State<CoupeWidget> {
  late CoupeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CoupeModel());

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
        title: 'coupe',
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
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Material(
                                      color: Colors.transparent,
                                      elevation: 10.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.23,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.08,
                                        decoration: BoxDecoration(
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    '',
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    '',
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'buqnelnd' /* equipe a */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Bebas Neue',
                                                        color: Colors.black,
                                                        fontSize: 8.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'qk3iib25' /* equipe a */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Bebas Neue',
                                                        color: Colors.black,
                                                        fontSize: 8.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '322cjbwr' /* 2:1 */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: Colors.black,
                                                    fontSize: 9.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'jomzc2nz' /* 01/05/2024 */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Bebas Neue',
                                                        color:
                                                            const Color(0x97000000),
                                                        fontSize: 8.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                const SizedBox(
                                                  height: 10.0,
                                                  child: VerticalDivider(
                                                    thickness: 1.0,
                                                    color: Color(0x3A000000),
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    const FaIcon(
                                                      FontAwesomeIcons.clock,
                                                      color: Color(0x97000000),
                                                      size: 8.0,
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'cresjh43' /* 16h:00 */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Bebas Neue',
                                                            color: const Color(
                                                                0x97000000),
                                                            fontSize: 8.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ].divide(
                                                      const SizedBox(width: 1.0)),
                                                ),
                                              ],
                                            ),
                                          ].divide(const SizedBox(height: 0.5)),
                                        ),
                                      ),
                                    ),
                                    Material(
                                      color: Colors.transparent,
                                      elevation: 10.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.23,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.08,
                                        decoration: BoxDecoration(
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    '',
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    '',
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    't9jf7etp' /* equipe a */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Bebas Neue',
                                                        color: Colors.black,
                                                        fontSize: 8.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'yah6ye7v' /* equipe a */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Bebas Neue',
                                                        color: Colors.black,
                                                        fontSize: 8.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'hcwtr34z' /* 2:1 */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: Colors.black,
                                                    fontSize: 9.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '2ec9znmf' /* 01/05/2024 */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Bebas Neue',
                                                        color:
                                                            const Color(0x97000000),
                                                        fontSize: 8.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                const SizedBox(
                                                  height: 10.0,
                                                  child: VerticalDivider(
                                                    thickness: 1.0,
                                                    color: Color(0x3A000000),
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    const FaIcon(
                                                      FontAwesomeIcons.clock,
                                                      color: Color(0x97000000),
                                                      size: 8.0,
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'af57sqyv' /* 16h:00 */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Bebas Neue',
                                                            color: const Color(
                                                                0x97000000),
                                                            fontSize: 8.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ].divide(
                                                      const SizedBox(width: 1.0)),
                                                ),
                                              ],
                                            ),
                                          ].divide(const SizedBox(height: 0.5)),
                                        ),
                                      ),
                                    ),
                                    Material(
                                      color: Colors.transparent,
                                      elevation: 10.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.23,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.08,
                                        decoration: BoxDecoration(
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    '',
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    '',
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'we8d53js' /* equipe a */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Bebas Neue',
                                                        color: Colors.black,
                                                        fontSize: 8.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '6ek0j0jr' /* equipe a */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Bebas Neue',
                                                        color: Colors.black,
                                                        fontSize: 8.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'l21vka2o' /* 2:1 */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: Colors.black,
                                                    fontSize: 9.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'e2lelcg6' /* 01/05/2024 */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Bebas Neue',
                                                        color:
                                                            const Color(0x97000000),
                                                        fontSize: 8.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                const SizedBox(
                                                  height: 10.0,
                                                  child: VerticalDivider(
                                                    thickness: 1.0,
                                                    color: Color(0x3A000000),
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    const FaIcon(
                                                      FontAwesomeIcons.clock,
                                                      color: Color(0x97000000),
                                                      size: 8.0,
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'cfp2motb' /* 16h:00 */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Bebas Neue',
                                                            color: const Color(
                                                                0x97000000),
                                                            fontSize: 8.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ].divide(
                                                      const SizedBox(width: 1.0)),
                                                ),
                                              ],
                                            ),
                                          ].divide(const SizedBox(height: 0.5)),
                                        ),
                                      ),
                                    ),
                                    Material(
                                      color: Colors.transparent,
                                      elevation: 10.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.23,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.08,
                                        decoration: BoxDecoration(
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    '',
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    '',
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'w1ykm99l' /* equipe a */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Bebas Neue',
                                                        color: Colors.black,
                                                        fontSize: 8.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'vy79pivw' /* equipe a */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Bebas Neue',
                                                        color: Colors.black,
                                                        fontSize: 8.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'wcsdmci9' /* 2:1 */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: Colors.black,
                                                    fontSize: 9.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'h265nkbl' /* 01/05/2024 */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Bebas Neue',
                                                        color:
                                                            const Color(0x97000000),
                                                        fontSize: 8.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                const SizedBox(
                                                  height: 10.0,
                                                  child: VerticalDivider(
                                                    thickness: 1.0,
                                                    color: Color(0x3A000000),
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    const FaIcon(
                                                      FontAwesomeIcons.clock,
                                                      color: Color(0x97000000),
                                                      size: 8.0,
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '54knq6se' /* 16h:00 */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Bebas Neue',
                                                            color: const Color(
                                                                0x97000000),
                                                            fontSize: 8.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ].divide(
                                                      const SizedBox(width: 1.0)),
                                                ),
                                              ],
                                            ),
                                          ].divide(const SizedBox(height: 0.5)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: MediaQuery.sizeOf(context).height * 0.02,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(0.28, -0.86),
                                    child: Container(
                                      width: 5.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.01,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(0.64, -0.01),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.23,
                                      height: 5.0,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(-0.73, -0.86),
                                    child: Container(
                                      width: 5.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.01,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(-0.65, 0.01),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.23,
                                      height: 5.0,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-0.5, 1.0),
                                    child: Container(
                                      width: 5.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.01,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(0.72, -0.86),
                                    child: Container(
                                      width: 5.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.01,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(-0.29, -0.86),
                                    child: Container(
                                      width: 5.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.01,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.5, 1.0),
                                    child: Container(
                                      width: 5.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.01,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Material(
                                  color: Colors.transparent,
                                  elevation: 10.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.23,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.08,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).info,
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.07,
                                              height: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.07,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                '',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.07,
                                              height: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.07,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                '',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'c9omrxn2' /* equipe a */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: Colors.black,
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'vhmoqz70' /* equipe a */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: Colors.black,
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '6vhmllog' /* 2:1 */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Bebas Neue',
                                                color: Colors.black,
                                                fontSize: 9.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'mmj3gh0v' /* 01/05/2024 */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: const Color(0x97000000),
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                            const SizedBox(
                                              height: 10.0,
                                              child: VerticalDivider(
                                                thickness: 1.0,
                                                color: Color(0x3A000000),
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                const FaIcon(
                                                  FontAwesomeIcons.clock,
                                                  color: Color(0x97000000),
                                                  size: 8.0,
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'x2pssqj7' /* 16h:00 */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Bebas Neue',
                                                        color:
                                                            const Color(0x97000000),
                                                        fontSize: 8.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ].divide(const SizedBox(width: 1.0)),
                                            ),
                                          ],
                                        ),
                                      ].divide(const SizedBox(height: 0.5)),
                                    ),
                                  ),
                                ),
                                Material(
                                  color: Colors.transparent,
                                  elevation: 10.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.23,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.08,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).info,
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.07,
                                              height: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.07,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                '',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.07,
                                              height: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.07,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                '',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'dga2y6bs' /* equipe a */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: Colors.black,
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '5hkv93o8' /* equipe a */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: Colors.black,
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'k49q8we7' /* 2:1 */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Bebas Neue',
                                                color: Colors.black,
                                                fontSize: 9.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'gwjmex3i' /* 01/05/2024 */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: const Color(0x97000000),
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                            const SizedBox(
                                              height: 10.0,
                                              child: VerticalDivider(
                                                thickness: 1.0,
                                                color: Color(0x3A000000),
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                const FaIcon(
                                                  FontAwesomeIcons.clock,
                                                  color: Color(0x97000000),
                                                  size: 8.0,
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'btb9y4om' /* 16h:00 */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Bebas Neue',
                                                        color:
                                                            const Color(0x97000000),
                                                        fontSize: 8.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ].divide(const SizedBox(width: 1.0)),
                                            ),
                                          ],
                                        ),
                                      ].divide(const SizedBox(height: 0.5)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: MediaQuery.sizeOf(context).height * 0.02,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.5, -0.86),
                                    child: Container(
                                      width: 5.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.01,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.505,
                                      height: 5.0,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(-0.5, -0.86),
                                    child: Container(
                                      width: 5.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.01,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                    child: Container(
                                      width: 5.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.01,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Material(
                              color: Colors.transparent,
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.23,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.08,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).info,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.07,
                                          height:
                                              MediaQuery.sizeOf(context).width *
                                                  0.07,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            '',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.07,
                                          height:
                                              MediaQuery.sizeOf(context).width *
                                                  0.07,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            '',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            't3ts7vpw' /* equipe a */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Bebas Neue',
                                                color: Colors.black,
                                                fontSize: 8.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'jnhkxjqq' /* equipe a */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Bebas Neue',
                                                color: Colors.black,
                                                fontSize: 8.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'hv6xhx3s' /* 2:1 */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: Colors.black,
                                            fontSize: 9.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'f2j7979j' /* 01/05/2024 */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Bebas Neue',
                                                color: const Color(0x97000000),
                                                fontSize: 8.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                          child: VerticalDivider(
                                            thickness: 1.0,
                                            color: Color(0x3A000000),
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const FaIcon(
                                              FontAwesomeIcons.clock,
                                              color: Color(0x97000000),
                                              size: 8.0,
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'uujsvkir' /* 16h:00 */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: const Color(0x97000000),
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                          ].divide(const SizedBox(width: 1.0)),
                                        ),
                                      ],
                                    ),
                                  ].divide(const SizedBox(height: 0.5)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: MediaQuery.sizeOf(context).height * 0.02,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                    child: Container(
                                      width: 5.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.02,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Material(
                              color: Colors.transparent,
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.23,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.08,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).info,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.07,
                                          height:
                                              MediaQuery.sizeOf(context).width *
                                                  0.07,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            '',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.07,
                                          height:
                                              MediaQuery.sizeOf(context).width *
                                                  0.07,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            '',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '8liw1mn9' /* equipe a */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Bebas Neue',
                                                color: Colors.black,
                                                fontSize: 8.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'opxtq0g5' /* equipe a */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Bebas Neue',
                                                color: Colors.black,
                                                fontSize: 8.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'f6nkitla' /* 2:1 */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: Colors.black,
                                            fontSize: 9.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '541056n9' /* 01/05/2024 */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Bebas Neue',
                                                color: const Color(0x97000000),
                                                fontSize: 8.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                          child: VerticalDivider(
                                            thickness: 1.0,
                                            color: Color(0x3A000000),
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const FaIcon(
                                              FontAwesomeIcons.clock,
                                              color: Color(0x97000000),
                                              size: 8.0,
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'rgw8v7n5' /* 16h:00 */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: const Color(0x97000000),
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                          ].divide(const SizedBox(width: 1.0)),
                                        ),
                                      ],
                                    ),
                                  ].divide(const SizedBox(height: 0.5)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: MediaQuery.sizeOf(context).height * 0.02,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                    child: Container(
                                      width: 5.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.02,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Material(
                              color: Colors.transparent,
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.23,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.08,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).info,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.07,
                                          height:
                                              MediaQuery.sizeOf(context).width *
                                                  0.07,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            '',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.07,
                                          height:
                                              MediaQuery.sizeOf(context).width *
                                                  0.07,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            '',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'ak01ikh7' /* equipe a */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Bebas Neue',
                                                color: Colors.black,
                                                fontSize: 8.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'k9tuak5u' /* equipe a */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Bebas Neue',
                                                color: Colors.black,
                                                fontSize: 8.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'v4c60qp5' /* 2:1 */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: Colors.black,
                                            fontSize: 9.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '300412zo' /* 01/05/2024 */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Bebas Neue',
                                                color: const Color(0x97000000),
                                                fontSize: 8.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                          child: VerticalDivider(
                                            thickness: 1.0,
                                            color: Color(0x3A000000),
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const FaIcon(
                                              FontAwesomeIcons.clock,
                                              color: Color(0x97000000),
                                              size: 8.0,
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'azyjxm65' /* 16h:00 */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: const Color(0x97000000),
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                          ].divide(const SizedBox(width: 1.0)),
                                        ),
                                      ],
                                    ),
                                  ].divide(const SizedBox(height: 0.5)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: MediaQuery.sizeOf(context).height * 0.02,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.5, 0.86),
                                    child: Container(
                                      width: 5.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.01,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.505,
                                      height: 5.0,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-0.5, 0.86),
                                    child: Container(
                                      width: 5.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.01,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, -1.0),
                                    child: Container(
                                      width: 5.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.01,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Material(
                                  color: Colors.transparent,
                                  elevation: 10.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.23,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.08,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).info,
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.07,
                                              height: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.07,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                '',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.07,
                                              height: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.07,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                '',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '79jbn67p' /* equipe a */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: Colors.black,
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'd65oh5u1' /* equipe a */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: Colors.black,
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'nkw9xu9j' /* 2:1 */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Bebas Neue',
                                                color: Colors.black,
                                                fontSize: 9.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '07j4yv9h' /* 01/05/2024 */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: const Color(0x97000000),
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                            const SizedBox(
                                              height: 10.0,
                                              child: VerticalDivider(
                                                thickness: 1.0,
                                                color: Color(0x3A000000),
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                const FaIcon(
                                                  FontAwesomeIcons.clock,
                                                  color: Color(0x97000000),
                                                  size: 8.0,
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'lakdjdfi' /* 16h:00 */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Bebas Neue',
                                                        color:
                                                            const Color(0x97000000),
                                                        fontSize: 8.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ].divide(const SizedBox(width: 1.0)),
                                            ),
                                          ],
                                        ),
                                      ].divide(const SizedBox(height: 0.5)),
                                    ),
                                  ),
                                ),
                                Material(
                                  color: Colors.transparent,
                                  elevation: 10.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.23,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.08,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).info,
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.07,
                                              height: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.07,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                '',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.07,
                                              height: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.07,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                '',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'mhcbgths' /* equipe a */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: Colors.black,
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'kp8e0pdf' /* equipe a */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: Colors.black,
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'c3j8d06c' /* 2:1 */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Bebas Neue',
                                                color: Colors.black,
                                                fontSize: 9.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'zbvhs739' /* 01/05/2024 */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: const Color(0x97000000),
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                            const SizedBox(
                                              height: 10.0,
                                              child: VerticalDivider(
                                                thickness: 1.0,
                                                color: Color(0x3A000000),
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                const FaIcon(
                                                  FontAwesomeIcons.clock,
                                                  color: Color(0x97000000),
                                                  size: 8.0,
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'v7n7z8jm' /* 16h:00 */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Bebas Neue',
                                                        color:
                                                            const Color(0x97000000),
                                                        fontSize: 8.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ].divide(const SizedBox(width: 1.0)),
                                            ),
                                          ],
                                        ),
                                      ].divide(const SizedBox(height: 0.5)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: MediaQuery.sizeOf(context).height * 0.02,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.28, 0.86),
                                    child: Container(
                                      width: 5.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.01,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(0.64, -0.01),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.23,
                                      height: 5.0,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(-0.73, 0.86),
                                    child: Container(
                                      width: 5.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.01,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(-0.65, 0.01),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.23,
                                      height: 5.0,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-0.5, -1.0),
                                    child: Container(
                                      width: 5.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.01,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.72, 0.86),
                                    child: Container(
                                      width: 5.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.01,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(-0.29, 0.86),
                                    child: Container(
                                      width: 5.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.01,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.5, -1.0),
                                    child: Container(
                                      width: 5.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.01,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Material(
                                  color: Colors.transparent,
                                  elevation: 10.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.23,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.08,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).info,
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.07,
                                              height: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.07,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                '',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.07,
                                              height: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.07,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                '',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'rxqb5jzs' /* equipe a */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: Colors.black,
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'rhss8261' /* equipe a */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: Colors.black,
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'gptuidxu' /* 2:1 */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Bebas Neue',
                                                color: Colors.black,
                                                fontSize: 9.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '082m06nb' /* 01/05/2024 */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: const Color(0x97000000),
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                            const SizedBox(
                                              height: 10.0,
                                              child: VerticalDivider(
                                                thickness: 1.0,
                                                color: Color(0x3A000000),
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                const FaIcon(
                                                  FontAwesomeIcons.clock,
                                                  color: Color(0x97000000),
                                                  size: 8.0,
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '2jfsd7lr' /* 16h:00 */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Bebas Neue',
                                                        color:
                                                            const Color(0x97000000),
                                                        fontSize: 8.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ].divide(const SizedBox(width: 1.0)),
                                            ),
                                          ],
                                        ),
                                      ].divide(const SizedBox(height: 0.5)),
                                    ),
                                  ),
                                ),
                                Material(
                                  color: Colors.transparent,
                                  elevation: 10.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.23,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.08,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).info,
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.07,
                                              height: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.07,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                '',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.07,
                                              height: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.07,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                '',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'vqy5o6hk' /* equipe a */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: Colors.black,
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'zxww8eu2' /* equipe a */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: Colors.black,
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '0b2oej2n' /* 2:1 */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Bebas Neue',
                                                color: Colors.black,
                                                fontSize: 9.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'pe06r1ou' /* 01/05/2024 */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: const Color(0x97000000),
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                            const SizedBox(
                                              height: 10.0,
                                              child: VerticalDivider(
                                                thickness: 1.0,
                                                color: Color(0x3A000000),
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                const FaIcon(
                                                  FontAwesomeIcons.clock,
                                                  color: Color(0x97000000),
                                                  size: 8.0,
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'piufgmrd' /* 16h:00 */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Bebas Neue',
                                                        color:
                                                            const Color(0x97000000),
                                                        fontSize: 8.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ].divide(const SizedBox(width: 1.0)),
                                            ),
                                          ],
                                        ),
                                      ].divide(const SizedBox(height: 0.5)),
                                    ),
                                  ),
                                ),
                                Material(
                                  color: Colors.transparent,
                                  elevation: 10.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.23,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.08,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).info,
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.07,
                                              height: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.07,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                '',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.07,
                                              height: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.07,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                '',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '2xqqz0z7' /* equipe a */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: Colors.black,
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'ukc8haj2' /* equipe a */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: Colors.black,
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '5d71r9r1' /* 2:1 */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Bebas Neue',
                                                color: Colors.black,
                                                fontSize: 9.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '3jasjlxg' /* 01/05/2024 */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: const Color(0x97000000),
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                            const SizedBox(
                                              height: 10.0,
                                              child: VerticalDivider(
                                                thickness: 1.0,
                                                color: Color(0x3A000000),
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                const FaIcon(
                                                  FontAwesomeIcons.clock,
                                                  color: Color(0x97000000),
                                                  size: 8.0,
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'vgqks6r9' /* 16h:00 */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Bebas Neue',
                                                        color:
                                                            const Color(0x97000000),
                                                        fontSize: 8.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ].divide(const SizedBox(width: 1.0)),
                                            ),
                                          ],
                                        ),
                                      ].divide(const SizedBox(height: 0.5)),
                                    ),
                                  ),
                                ),
                                Material(
                                  color: Colors.transparent,
                                  elevation: 10.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.23,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.08,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).info,
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.07,
                                              height: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.07,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                '',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.07,
                                              height: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.07,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                '',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'nj0nvhf5' /* equipe a */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: Colors.black,
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'de47xf6c' /* equipe a */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: Colors.black,
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '49xlvm70' /* 2:1 */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Bebas Neue',
                                                color: Colors.black,
                                                fontSize: 9.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'ubun31do' /* 01/05/2024 */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: const Color(0x97000000),
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                            const SizedBox(
                                              height: 10.0,
                                              child: VerticalDivider(
                                                thickness: 1.0,
                                                color: Color(0x3A000000),
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                const FaIcon(
                                                  FontAwesomeIcons.clock,
                                                  color: Color(0x97000000),
                                                  size: 8.0,
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'f5vuk93v' /* 16h:00 */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Bebas Neue',
                                                        color:
                                                            const Color(0x97000000),
                                                        fontSize: 8.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ].divide(const SizedBox(width: 1.0)),
                                            ),
                                          ],
                                        ),
                                      ].divide(const SizedBox(height: 0.5)),
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
                Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: wrapWithModel(
                    model: _model.navBarrModel,
                    updateCallback: () => setState(() {}),
                    child: NavBarrWidget(
                      colorChampionnatIcon:
                          FlutterFlowTheme.of(context).secondaryText,
                      colorChampionnatText:
                          FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: wrapWithModel(
                    model: _model.appBar2Model,
                    updateCallback: () => setState(() {}),
                    child: AppBar2Widget(
                      title: FFLocalizations.of(context).getText(
                        '3p80vrrl' /* COUPE */,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
