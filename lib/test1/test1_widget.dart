import '/components/app_bar_ligue_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/navbar/nav_barr/nav_barr_widget.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'test1_model.dart';
export 'test1_model.dart';

class Test1Widget extends StatefulWidget {
  const Test1Widget({super.key});

  @override
  State<Test1Widget> createState() => _Test1WidgetState();
}

class _Test1WidgetState extends State<Test1Widget> {
  late Test1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Test1Model());

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
        title: 'Test1',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Align(
              alignment: const AlignmentDirectional(0.0, -1.0),
              child: Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: wrapWithModel(
                      model: _model.appBarLigueModel,
                      updateCallback: () => setState(() {}),
                      child: const AppBarLigueWidget(),
                    ),
                  ),
                  if (responsiveVisibility(
                    context: context,
                    tablet: false,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 90.0, 0.0, 90.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
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
                              alignment: const AlignmentDirectional(-0.66, 0.75),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                height: 1.5,
                                decoration: const BoxDecoration(
                                  color: Color(0xD1050000),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.66, 0.65),
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
                                height: MediaQuery.sizeOf(context).height * 0.1,
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
                                height: MediaQuery.sizeOf(context).height * 0.1,
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
                    ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                  ))
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 90.0, 0.0, 90.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
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
                              alignment: const AlignmentDirectional(-0.8, -0.19),
                              child: Container(
                                width: 1.5,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.138,
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
                              alignment: const AlignmentDirectional(-0.67, 0.25),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                height: 1.5,
                                decoration: const BoxDecoration(
                                  color: Color(0xD1050000),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-0.67, 0.5),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                height: 1.5,
                                decoration: const BoxDecoration(
                                  color: Color(0xD1050000),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-0.67, 0.75),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                height: 1.5,
                                decoration: const BoxDecoration(
                                  color: Color(0xD1050000),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.67, 0.65),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                height: 1.5,
                                decoration: const BoxDecoration(
                                  color: Color(0xD1050000),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.67, 0.4),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                height: 1.5,
                                decoration: const BoxDecoration(
                                  color: Color(0xD1050000),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.67, 0.15),
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
                                    MediaQuery.sizeOf(context).height * 0.12,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xFF050000),
                                    width: 1.5,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-0.66, -0.83),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.12,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xFF050000),
                                    width: 1.5,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.82),
                              child: Container(
                                width: 1.5,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.391,
                                decoration: const BoxDecoration(
                                  color: Color(0xD1050000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: wrapWithModel(
                      model: _model.navBarrModel,
                      updateCallback: () => setState(() {}),
                      child: const NavBarrWidget(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
