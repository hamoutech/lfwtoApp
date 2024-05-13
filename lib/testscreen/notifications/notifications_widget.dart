import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/app_bar2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/navbar/nav_barr/nav_barr_widget.dart';
import 'package:flutter/material.dart';
import 'notifications_model.dart';
export 'notifications_model.dart';

class NotificationsWidget extends StatefulWidget {
  const NotificationsWidget({super.key});

  @override
  State<NotificationsWidget> createState() => _NotificationsWidgetState();
}

class _NotificationsWidgetState extends State<NotificationsWidget> {
  late NotificationsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationsModel());

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
        title: 'notifications',
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
                                  '32xi0mlb' /* NOTIFICATIONS */,
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
                          height: MediaQuery.sizeOf(context).height * 0.08,
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
                                        'x5upls8z' /* MATCHS  */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: Colors.black,
                                            fontSize: 18.0,
                                            letterSpacing: 1.0,
                                            fontWeight: FontWeight.w100,
                                          ),
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'ehyng5mf' /* compos,buts,resultats,resumes ... */,
                                      ),
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: const Color(0x57000000),
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w100,
                                          ),
                                    ),
                                  ],
                                ),
                                Switch.adaptive(
                                  value: _model.switchMatchNotificationValue ??=
                                      true,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.switchMatchNotificationValue =
                                            newValue);
                                    if (newValue) {
                                      await currentUserReference!
                                          .update(createUsersRecordData(
                                        matchNotifications: true,
                                      ));
                                    } else {
                                      await currentUserReference!
                                          .update(createUsersRecordData(
                                        matchNotifications: false,
                                      ));
                                    }
                                  },
                                  activeColor: const Color(0xC04F7F51),
                                  activeTrackColor: const Color(0xC04F7F51),
                                  inactiveTrackColor: const Color(0xC04F7F51),
                                  inactiveThumbColor:
                                      FlutterFlowTheme.of(context).info,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 0.08,
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
                                        'z91mser7' /* l'actu au quotidien */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: Colors.black,
                                            fontSize: 18.0,
                                            letterSpacing: 1.0,
                                            fontWeight: FontWeight.w100,
                                          ),
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'bojoin0c' /* compos,buts,resultats,resumes ... */,
                                      ),
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: const Color(0x57000000),
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w100,
                                          ),
                                    ),
                                  ],
                                ),
                                Switch.adaptive(
                                  value: _model.switchActuNotificationsValue ??=
                                      true,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.switchActuNotificationsValue =
                                            newValue);
                                    if (newValue) {
                                      await currentUserReference!
                                          .update(createUsersRecordData(
                                        actuNotifications: true,
                                      ));
                                    } else {
                                      await currentUserReference!
                                          .update(createUsersRecordData(
                                        actuNotifications: false,
                                      ));
                                    }
                                  },
                                  activeColor: const Color(0xC04F7F51),
                                  activeTrackColor: const Color(0xC04F7F51),
                                  inactiveTrackColor: const Color(0xC04F7F51),
                                  inactiveThumbColor:
                                      FlutterFlowTheme.of(context).info,
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
                      '0fy4kjrr' /* PARAMETRES */,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
