import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'nav_barr_model.dart';
export 'nav_barr_model.dart';

class NavBarrWidget extends StatefulWidget {
  const NavBarrWidget({
    super.key,
    Color? colorLigueIccon,
    Color? colorLigueText,
    Color? colorChampionnatIcon,
    Color? colorChampionnatText,
    Color? colorHomeIcon,
    Color? colorHomeText,
    Color? colorMatchdayIcon,
    Color? colorMatchdayText,
    Color? colorSettingsIcon,
    Color? colorSettingsText,
  })  : colorLigueIccon = colorLigueIccon ?? Colors.white,
        colorLigueText = colorLigueText ?? Colors.white,
        colorChampionnatIcon = colorChampionnatIcon ?? Colors.white,
        colorChampionnatText = colorChampionnatText ?? Colors.white,
        colorHomeIcon = colorHomeIcon ?? Colors.white,
        colorHomeText = colorHomeText ?? Colors.white,
        colorMatchdayIcon = colorMatchdayIcon ?? Colors.white,
        colorMatchdayText = colorMatchdayText ?? Colors.white,
        colorSettingsIcon = colorSettingsIcon ?? Colors.white,
        colorSettingsText = colorSettingsText ?? Colors.white;

  final Color colorLigueIccon;
  final Color colorLigueText;
  final Color colorChampionnatIcon;
  final Color colorChampionnatText;
  final Color colorHomeIcon;
  final Color colorHomeText;
  final Color colorMatchdayIcon;
  final Color colorMatchdayText;
  final Color colorSettingsIcon;
  final Color colorSettingsText;

  @override
  State<NavBarrWidget> createState() => _NavBarrWidgetState();
}

class _NavBarrWidgetState extends State<NavBarrWidget> {
  late NavBarrModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarrModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90.0,
      decoration: const BoxDecoration(
        color: Color(0x00EEEEEE),
      ),
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Material(
                  color: Colors.transparent,
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 90.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primary,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 10.0,
                          color: Color(0x1A57636C),
                          offset: Offset(
                            0.0,
                            -10.0,
                          ),
                          spreadRadius: 0.1,
                        )
                      ],
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, 0.65),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'ligue',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: const TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(
                            'ligue',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: const TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/ICONE.png',
                            width: 27.0,
                            height: 27.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      AutoSizeText(
                        FFLocalizations.of(context).getText(
                          '9es8sxbf' /* LA LIGUE */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Bebas Neue',
                              color: widget.colorLigueText,
                              fontSize: 10.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ]
                        .divide(const SizedBox(height: 5.0))
                        .addToEnd(const SizedBox(height: 15.0)),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'championnat',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: const TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 24.0,
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        icon: Icon(
                          FFIcons.kchampionnat,
                          color: widget.colorChampionnatIcon,
                          size: 24.0,
                        ),
                        onPressed: () async {
                          context.pushNamed(
                            'championnat',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: const TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                      ),
                      AutoSizeText(
                        FFLocalizations.of(context).getText(
                          'ibwn6qc5' /* CHAMPIONNAT */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Bebas Neue',
                              color: widget.colorChampionnatText,
                              fontSize: 10.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ].addToEnd(const SizedBox(height: 15.0)),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'homePage',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: const TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 24.0,
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        icon: Icon(
                          FFIcons.kacceuil,
                          color: widget.colorHomeIcon,
                          size: 24.0,
                        ),
                        onPressed: () async {
                          context.pushNamed(
                            'homePage',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: const TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: AutoSizeText(
                          FFLocalizations.of(context).getText(
                            'pb8q402h' /* ACCUEIL */,
                          ),
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Bebas Neue',
                                    color: widget.colorHomeText,
                                    fontSize: 10.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ].addToEnd(const SizedBox(height: 15.0)),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'matchDay',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: const TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 5.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 24.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            icon: Icon(
                              FFIcons.kmatchday,
                              color: widget.colorMatchdayIcon,
                              size: 22.0,
                            ),
                            onPressed: () async {
                              context.pushNamed(
                                'matchDay',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                          ),
                        ),
                      ),
                      AutoSizeText(
                        FFLocalizations.of(context).getText(
                          'pw9lte8y' /* MATCH DAY */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Bebas Neue',
                              color: widget.colorMatchdayText,
                              fontSize: 10.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ].addToEnd(const SizedBox(height: 15.0)),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'parametres',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: const TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 24.0,
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        icon: Icon(
                          FFIcons.ksettings,
                          color: widget.colorSettingsIcon,
                          size: 24.0,
                        ),
                        onPressed: () async {
                          context.pushNamed(
                            'parametres',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: const TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                      ),
                      AutoSizeText(
                        FFLocalizations.of(context).getText(
                          '5i4v0kyc' /* PARAMETRES */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Bebas Neue',
                              color: widget.colorSettingsText,
                              fontSize: 10.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ].addToEnd(const SizedBox(height: 15.0)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
