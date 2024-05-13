import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'app_bar_ligue_model.dart';
export 'app_bar_ligue_model.dart';

class AppBarLigueWidget extends StatefulWidget {
  const AppBarLigueWidget({super.key});

  @override
  State<AppBarLigueWidget> createState() => _AppBarLigueWidgetState();
}

class _AppBarLigueWidgetState extends State<AppBarLigueWidget>
    with TickerProviderStateMixin {
  late AppBarLigueModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppBarLigueModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: 90.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primary,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Builder(
                  builder: (context) {
                    if (_model.activeMenu) {
                      return Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            _model.updatePage(() {
                              _model.activeMenu = false;
                            });
                          },
                          child: Icon(
                            Icons.close_sharp,
                            color: FlutterFlowTheme.of(context).info,
                            size: 26.0,
                          ),
                        ),
                      );
                    } else {
                      return Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            _model.updatePage(() {
                              _model.activeMenu = true;
                            });
                          },
                          child: Icon(
                            Icons.menu,
                            color: FlutterFlowTheme.of(context).info,
                            size: 29.0,
                          ),
                        ),
                      );
                    }
                  },
                ),
              ),
              Text(
                FFLocalizations.of(context).getText(
                  'j5d0vt3m' /* Titre */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Bebas Neue',
                      fontSize: 20.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Container(
                width: 190.0,
                height: 2.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        if (_model.activeMenu == true)
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
            child: Material(
              color: Colors.transparent,
              elevation: 3.0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(2.0),
                  bottomRight: Radius.circular(2.0),
                  topLeft: Radius.circular(0.0),
                  topRight: Radius.circular(0.0),
                ),
              ),
              child: Container(
                width: 230.0,
                height: 130.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).info,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(2.0),
                    bottomRight: Radius.circular(2.0),
                    topLeft: Radius.circular(0.0),
                    topRight: Radius.circular(0.0),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 1.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'nn4wnye6' /* Membre du bureau de la ligue */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Bebas Neue',
                                    color: const Color(0xFF050000),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 1.0,
                      color: Color(0x55050000),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'a014gvvx' /* Les commissions */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Bebas Neue',
                                    color: const Color(0xFF050000),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 1.0,
                      color: Color(0x55050000),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'rtxu6app' /* Les projets de la ligue */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Bebas Neue',
                                    color: const Color(0xFF050000),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 1.0,
                      color: Color(0x55050000),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'x7iffnsv' /* Espace souvenirs */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Bebas Neue',
                                    color: const Color(0xFF050000),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
          ),
      ],
    );
  }
}
