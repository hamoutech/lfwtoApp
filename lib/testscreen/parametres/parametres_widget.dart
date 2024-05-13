import '/components/app_bar1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/navbar/nav_barr/nav_barr_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'parametres_model.dart';
export 'parametres_model.dart';

class ParametresWidget extends StatefulWidget {
  const ParametresWidget({super.key});

  @override
  State<ParametresWidget> createState() => _ParametresWidgetState();
}

class _ParametresWidgetState extends State<ParametresWidget> {
  late ParametresModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ParametresModel());

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
        title: 'parametres',
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
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('notifications');
                              },
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.06,
                                decoration: const BoxDecoration(
                                  color: Color(0x3FFFFFFF),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 0.0, 10.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          const Icon(
                                            FFIcons.knotifications,
                                            color: Colors.black,
                                            size: 24.0,
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '6rkp38e1' /* NOTIFICATIONS */,
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
                                        ].divide(const SizedBox(width: 5.0)),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'g8wot1zl' /* ACTIVEES */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Bebas Neue',
                                                  color: const Color(0x66000000),
                                                  fontSize: 16.0,
                                                  letterSpacing: 1.0,
                                                ),
                                          ),
                                          const Icon(
                                            Icons.keyboard_arrow_right,
                                            color: Color(0x66000000),
                                            size: 24.0,
                                          ),
                                        ].divide(const SizedBox(width: 5.0)),
                                      ),
                                    ],
                                  ),
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
                                    15.0, 0.0, 10.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('langue');
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          const Icon(
                                            Icons.language_sharp,
                                            color: Colors.black,
                                            size: 24.0,
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '60xc4m7d' /* LANGUE */,
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
                                        ].divide(const SizedBox(width: 5.0)),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '062twi6w' /* FRANÇAIS  */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Bebas Neue',
                                                  color: const Color(0x66000000),
                                                  fontSize: 16.0,
                                                  letterSpacing: 1.0,
                                                ),
                                          ),
                                          const Icon(
                                            Icons.keyboard_arrow_right_sharp,
                                            color: Color(0x66000000),
                                            size: 24.0,
                                          ),
                                        ].divide(const SizedBox(width: 4.0)),
                                      ),
                                    ],
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
                                    15.0, 0.0, 10.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        const Icon(
                                          FFIcons.kconditionsgenerales,
                                          color: Colors.black,
                                          size: 24.0,
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'pqv3095m' /* CONDITIONS GENERALES DE VENTE */,
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
                                      ].divide(const SizedBox(width: 5.0)),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        const Icon(
                                          Icons.keyboard_arrow_right,
                                          color: Color(0x66000000),
                                          size: 24.0,
                                        ),
                                      ].divide(const SizedBox(width: 5.0)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('partenaireOfficiels');
                              },
                              child: Material(
                                color: Colors.transparent,
                                elevation: 0.0,
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.06,
                                  decoration: const BoxDecoration(
                                    color: Color(0x40FFFFFF),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        15.0, 0.0, 10.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            const FaIcon(
                                              FontAwesomeIcons.handshake,
                                              color: Colors.black,
                                              size: 22.0,
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'vk9yu1y0' /* NOS PARTENAIRE OFFICIELS */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Bebas Neue',
                                                        color: Colors.black,
                                                        fontSize: 16.0,
                                                        letterSpacing: 1.0,
                                                      ),
                                            ),
                                          ].divide(const SizedBox(width: 5.0)),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            const Icon(
                                              Icons
                                                  .keyboard_arrow_right_outlined,
                                              color: Color(0x66000000),
                                              size: 24.0,
                                            ),
                                          ].divide(const SizedBox(width: 5.0)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 25.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await launchURL(
                                        'https://www.facebook.com/lfwto.dz');
                                  },
                                  child: Container(
                                    width: 30.0,
                                    height: 30.0,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      'assets/images/facebook_5968764.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await launchURL(
                                        'https://youtube.com/@liguefootballwilayatizi-ouzou');
                                  },
                                  child: Container(
                                    width: 30.0,
                                    height: 30.0,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      'assets/images/youtube_1384060.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await launchURL('https://www.lfwto.dz/');
                                  },
                                  child: Container(
                                    width: 30.0,
                                    height: 30.0,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      'assets/images/world-wide-web_1927656.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await launchUrl(Uri(
                                      scheme: 'mailto',
                                      path: ' liguewto@gmail.com',
                                    ));
                                  },
                                  child: Container(
                                    width: 30.0,
                                    height: 30.0,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      'assets/images/gmail_5968534.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await launchURL(
                                        'https://www.google.com/maps/place/Nouvelle+Salle+multi-sports+1er+Novembre/@36.7069604,4.0534838,19z/data=!4m17!1m10!4m9!1m4!2m2!1d4.0388928!2d36.7028825!4e1!1m3!2m2!1d4.054936!2d36.7069624!3m5!1s0x128dc80ea55c3fcd:0xfe8ebca7f998d5b5!8m2!3d36.7070292!4d4.0547899!16s%2Fg%2F11c709p021?entry=ttu');
                                  },
                                  child: Container(
                                    width: 30.0,
                                    height: 30.0,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      'assets/images/map_854878.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ].divide(const SizedBox(width: 25.0)),
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
                  model: _model.appBar1Model,
                  updateCallback: () => setState(() {}),
                  child: AppBar1Widget(
                    title: FFLocalizations.of(context).getText(
                      'ipeb0yua' /* PARAMETRES */,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
