import '/components/app_bar_ligue_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/navbar/nav_barr/nav_barr_widget.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'ligue_model.dart';
export 'ligue_model.dart';

class LigueWidget extends StatefulWidget {
  const LigueWidget({super.key});

  @override
  State<LigueWidget> createState() => _LigueWidgetState();
}

class _LigueWidgetState extends State<LigueWidget> {
  late LigueModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LigueModel());

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
        title: 'ligue',
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
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-0.8, -0.19),
                                child: Container(
                                  width: 1.5,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.127,
                                  decoration: const BoxDecoration(
                                    color: Color(0xD1050000),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.92),
                                child: Transform.rotate(
                                  angle: 50.0 * (math.pi / 180),
                                  child: Container(
                                    width: 10.0,
                                    height: 10.0,
                                    decoration: const BoxDecoration(
                                      color: Color(0xD1050000),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-0.66, 0.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.4,
                                  height: 1.5,
                                  decoration: const BoxDecoration(
                                    color: Color(0xD1050000),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-0.66, 0.25),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.4,
                                  height: 1.5,
                                  decoration: const BoxDecoration(
                                    color: Color(0xD1050000),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-0.66, 0.5),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.4,
                                  height: 1.5,
                                  decoration: const BoxDecoration(
                                    color: Color(0xD1050000),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-0.66, 0.8),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.4,
                                  height: 1.5,
                                  decoration: const BoxDecoration(
                                    color: Color(0xD1050000),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.66, 0.7),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.4,
                                  height: 1.5,
                                  decoration: const BoxDecoration(
                                    color: Color(0xD1050000),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.66, 0.4),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.4,
                                  height: 1.5,
                                  decoration: const BoxDecoration(
                                    color: Color(0xD1050000),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.66, 0.15),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.4,
                                  height: 1.5,
                                  decoration: const BoxDecoration(
                                    color: Color(0xD1050000),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-0.66, -0.51),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.4,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.1,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color(0xFF050000),
                                      width: 1.5,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-0.66, -0.8),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.4,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.1,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color(0xFF050000),
                                      width: 1.5,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.8),
                                child: Container(
                                  width: 1.5,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.35,
                                  decoration: const BoxDecoration(
                                    color: Color(0xD1050000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, -0.6),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.5,
                            height: MediaQuery.sizeOf(context).height * 0.06,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).info,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 242.0,
                                  height: 20.0,
                                  decoration: const BoxDecoration(
                                    color: Color(0x15050000),
                                  ),
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'w0gvcg8z' /* SECRÉTAIRE GÉNÉRAL */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: const Color(0xFF050000),
                                            fontSize: 14.0,
                                            letterSpacing: 1.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'm58iirye' /* LARAB Sadek */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Bebas Neue',
                                        color: const Color(0xFF050000),
                                        fontSize: 16.0,
                                        letterSpacing: 1.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                              ]
                                  .divide(const SizedBox(height: 2.0))
                                  .addToEnd(const SizedBox(height: 5.0)),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, -0.9),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.6,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).info,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 0.6,
                                  height: 30.0,
                                  decoration: const BoxDecoration(
                                    color: Color(0x15050000),
                                  ),
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'db3irvhj' /* PRÉSIDENT */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: const Color(0xFF050000),
                                            fontSize: 22.0,
                                            letterSpacing: 2.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'p6k33utm' /* NAIB Sid-al */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Bebas Neue',
                                        color: const Color(0xFF050000),
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ]
                                  .divide(const SizedBox(height: 2.0))
                                  .addToEnd(const SizedBox(height: 5.0)),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, -0.35),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.5,
                            height: 80.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).info,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 242.0,
                                  decoration: const BoxDecoration(
                                    color: Color(0x15050000),
                                  ),
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 2.0, 0.0, 2.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'zarehbso' /* DIRECTION ADMINISTRATIVE
ET FI... */
                                          ,
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Bebas Neue',
                                              color: const Color(0xFF050000),
                                              fontSize: 14.0,
                                              letterSpacing: 2.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'v3kx0gd4' /* HACHOUR KHALED */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: const Color(0xFF050000),
                                            fontSize: 16.0,
                                            letterSpacing: 1.0,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'tanm3wjq' /* STITI RAMDANE - OUAGUENOUNI.L */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: const Color(0xFF050000),
                                            fontSize: 12.0,
                                            letterSpacing: 1.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ]
                                  .divide(const SizedBox(height: 2.0))
                                  .addToEnd(const SizedBox(height: 5.0)),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.75, 0.45),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.35,
                            height: 49.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).info,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 242.0,
                                  decoration: const BoxDecoration(
                                    color: Color(0x15050000),
                                  ),
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 2.0, 0.0, 2.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '3om2qoq0' /* C.MEDICALE */,
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Bebas Neue',
                                              color: const Color(0xFF050000),
                                              fontSize: 14.0,
                                              letterSpacing: 2.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 2.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'ecqrnxzd' /* ATMANI MED */,
                                      ),
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: const Color(0xFF050000),
                                            fontSize: 10.0,
                                            letterSpacing: 1.0,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 2.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'cq8tw4j0' /* SEBTI MED-AREZKI */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: const Color(0xFF050000),
                                            fontSize: 9.0,
                                            letterSpacing: 1.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.75, 0.89),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.35,
                            height: 80.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).info,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 242.0,
                                  decoration: const BoxDecoration(
                                    color: Color(0x15050000),
                                  ),
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 2.0, 0.0, 2.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'a9j9ywo5' /* C.D */,
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Bebas Neue',
                                              color: const Color(0xFF050000),
                                              fontSize: 14.0,
                                              letterSpacing: 2.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 2.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'squmkf4q' /* KABI AISSA */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: const Color(0xFF050000),
                                            fontSize: 10.0,
                                            letterSpacing: 1.0,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 2.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'fsxmh4ch' /* HACHEROUF ABDENOUR */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: const Color(0xFF050000),
                                            fontSize: 9.0,
                                            letterSpacing: 1.0,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 2.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'x69kw1af' /* SAAD AMAR */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: const Color(0xFF050000),
                                            fontSize: 9.0,
                                            letterSpacing: 1.0,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 2.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '6eb8k5jj' /* CHERGHUI AMAR */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: const Color(0xFF050000),
                                            fontSize: 9.0,
                                            letterSpacing: 1.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.75, 0.55),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.35,
                            height: 66.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).info,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 242.0,
                                  decoration: const BoxDecoration(
                                    color: Color(0x15050000),
                                  ),
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 2.0, 0.0, 2.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'kg4z5pqf' /* C.A.W */,
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Bebas Neue',
                                              color: const Color(0xFF050000),
                                              fontSize: 14.0,
                                              letterSpacing: 2.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 2.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'bd45pdww' /* ACHIR SLIMANE */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: const Color(0xFF050000),
                                            fontSize: 10.0,
                                            letterSpacing: 1.0,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 2.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'ildy53jo' /* BELAID MADJID */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: const Color(0xFF050000),
                                            fontSize: 9.0,
                                            letterSpacing: 1.0,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 2.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'vszm5kgz' /* ZAIDAT BRAHIM */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: const Color(0xFF050000),
                                            fontSize: 9.0,
                                            letterSpacing: 1.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.75, 0.25),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.35,
                            height: 73.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).info,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 242.0,
                                  decoration: const BoxDecoration(
                                    color: Color(0x15050000),
                                  ),
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 2.0, 0.0, 2.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '0gxdnjb4' /* D.T.W */,
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Bebas Neue',
                                              color: const Color(0xFF050000),
                                              fontSize: 14.0,
                                              letterSpacing: 2.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 2.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '5jc46wvt' /* KARDI ALI */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: const Color(0xFF050000),
                                            fontSize: 10.0,
                                            letterSpacing: 1.0,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 2.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'b68his0e' /* KHERROUBI ISSAM */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: const Color(0xFF050000),
                                            fontSize: 9.0,
                                            letterSpacing: 1.0,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'armmy9s4' /* MEFTAH RAHIM */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: const Color(0xFF050000),
                                            fontSize: 9.0,
                                            letterSpacing: 1.0,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'sdmumgo3' /* SEDIKI THANINA */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: const Color(0xFF050000),
                                            fontSize: 9.0,
                                            letterSpacing: 1.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.75, 0.15),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.35,
                            height: 67.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).info,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 242.0,
                                  decoration: const BoxDecoration(
                                    color: Color(0x15050000),
                                  ),
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 2.0, 0.0, 2.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'xx68sr5m' /* C.O.C */,
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Bebas Neue',
                                              color: const Color(0xFF050000),
                                              fontSize: 14.0,
                                              letterSpacing: 2.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 2.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '22awl3vo' /* DJEBOURI MEHIEDINE */,
                                      ),
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: const Color(0xFF050000),
                                            fontSize: 10.0,
                                            letterSpacing: 1.0,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 2.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'dhh3929v' /* TERRAH AHMED */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: const Color(0xFF050000),
                                            fontSize: 9.0,
                                            letterSpacing: 1.0,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 2.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '152ddi9g' /* ABASSENE SOFIANE */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: const Color(0xFF050000),
                                            fontSize: 9.0,
                                            letterSpacing: 1.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.75, 0.75),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.35,
                            height: 39.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).info,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 242.0,
                                  decoration: const BoxDecoration(
                                    color: Color(0x15050000),
                                  ),
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 2.0, 0.0, 2.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'cv8jfe73' /* C.LICENCES */,
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Bebas Neue',
                                              color: const Color(0xFF050000),
                                              fontSize: 14.0,
                                              letterSpacing: 2.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 2.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'o3acdcke' /* LAHCENE SEDDIK */,
                                      ),
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: const Color(0xFF050000),
                                            fontSize: 10.0,
                                            letterSpacing: 1.0,
                                          ),
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
                Align(
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: wrapWithModel(
                    model: _model.appBarLigueModel,
                    updateCallback: () => setState(() {}),
                    child: const AppBarLigueWidget(),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: wrapWithModel(
                    model: _model.navBarrModel,
                    updateCallback: () => setState(() {}),
                    child: NavBarrWidget(
                      colorLigueText:
                          FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
