import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/components/app_bar1_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/navbar/nav_barr/nav_barr_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'match_day_copy_model.dart';
export 'match_day_copy_model.dart';

class MatchDayCopyWidget extends StatefulWidget {
  const MatchDayCopyWidget({super.key});

  @override
  State<MatchDayCopyWidget> createState() => _MatchDayCopyWidgetState();
}

class _MatchDayCopyWidgetState extends State<MatchDayCopyWidget> {
  late MatchDayCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MatchDayCopyModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.getCurrentDateAction();
    });

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
        title: 'matchDayCopy',
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
                        Opacity(
                          opacity: 0.6,
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 15.0,
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 1.0),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: FlutterFlowChoiceChips(
                                      options: [
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          '14qzh9ai' /* HONNEUR */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          '0gkv5pee' /* PRE-HONNEUR */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          'sqv5v0i2' /* JEUNES */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          'w6hfeloj' /* ÉCOLES */,
                                        ))
                                      ],
                                      onChanged: (val) => setState(() => _model
                                          .divisionValue = val?.firstOrNull),
                                      selectedChipStyle: ChipStyle(
                                        backgroundColor: const Color(0xFF3B7949),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily: 'Bebas Neue',
                                              letterSpacing: 1.0,
                                              fontWeight: FontWeight.w100,
                                              lineHeight: 0.0,
                                            ),
                                        iconColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        iconSize: 18.0,
                                        elevation: 0.0,
                                        borderColor: const Color(0x9AF6EB82),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      unselectedChipStyle: ChipStyle(
                                        backgroundColor: const Color(0x00000000),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Bebas Neue',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 1.0,
                                            ),
                                        iconColor: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        iconSize: 18.0,
                                        elevation: 0.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      chipSpacing: 10.0,
                                      rowSpacing: 20.0,
                                      multiselect: false,
                                      initialized: _model.divisionValue != null,
                                      alignment: WrapAlignment.start,
                                      controller:
                                          _model.divisionValueController ??=
                                              FormFieldController<List<String>>(
                                        [
                                          FFLocalizations.of(context).getText(
                                            'pnterr4f' /* HONNEUR */,
                                          )
                                        ],
                                      ),
                                      wrapped: false,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    FlutterFlowTheme.of(context)
                                        .secondaryBackground
                                  ],
                                  stops: const [0.0, 1.0],
                                  begin: const AlignmentDirectional(0.0, -1.0),
                                  end: const AlignmentDirectional(0, 1.0),
                                ),
                              ),
                              child: ListView(
                                padding: const EdgeInsets.fromLTRB(
                                  0,
                                  0,
                                  0,
                                  15.0,
                                ),
                                scrollDirection: Axis.vertical,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        15.0, 40.0, 15.0, 40.0),
                                    child: StreamBuilder<List<MatchRecord>>(
                                      stream: _model.matchday(
                                        requestFn: () => queryMatchRecord(
                                          queryBuilder: (matchRecord) =>
                                              matchRecord
                                                  .where(
                                                    'isLive',
                                                    isEqualTo: true,
                                                  )
                                                  .where(
                                                    'division',
                                                    isEqualTo:
                                                        _model.divisionValue,
                                                  )
                                                  .where(
                                                    'dateMatch',
                                                    isEqualTo:
                                                        functions.getDayDate(),
                                                  ),
                                          singleRecord: true,
                                        ),
                                      )..listen((snapshot) async {
                                          List<MatchRecord>
                                              matchregarderMatchRecordList =
                                              snapshot;
                                          final matchregarderMatchRecord =
                                              matchregarderMatchRecordList
                                                      .isNotEmpty
                                                  ? matchregarderMatchRecordList
                                                      .first
                                                  : null;
                                          if (_model.matchregarderPreviousSnapshot !=
                                                  null &&
                                              !const ListEquality(
                                                      MatchRecordDocumentEquality())
                                                  .equals(
                                                      matchregarderMatchRecordList,
                                                      _model
                                                          .matchregarderPreviousSnapshot)) {
                                            if (matchregarderMatchRecord
                                                    ?.isLive ==
                                                true) {
                                              _model.teamA = await EquipesRecord
                                                  .getDocumentOnce(
                                                      matchregarderMatchRecord!
                                                          .teamA!);
                                              _model.teamB = await EquipesRecord
                                                  .getDocumentOnce(
                                                      matchregarderMatchRecord
                                                          .teamB!);
                                              triggerPushNotification(
                                                notificationTitle: 'MATCH DAY',
                                                notificationText:
                                                    'Regardez le match du ${_model.teamA?.nameAbreviation} VS ${_model.teamB?.nameAbreviation}',
                                                notificationSound: 'default',
                                                userRefs: [
                                                  currentUserReference!
                                                ],
                                                initialPageName: 'matchDayLive',
                                                parameterData: {
                                                  'link':
                                                      matchregarderMatchRecord
                                                          .linkMatch,
                                                  'youtubeLink':
                                                      matchregarderMatchRecord
                                                          .youtubeLink,
                                                },
                                              );
                                            }

                                            setState(() {});
                                          }
                                          _model.matchregarderPreviousSnapshot =
                                              snapshot;
                                        }),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return const Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  Color(0xFF265631),
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<MatchRecord>
                                            matchregarderMatchRecordList =
                                            snapshot.data!;
                                        // Return an empty Container when the item does not exist.
                                        if (snapshot.data!.isEmpty) {
                                          return Container();
                                        }
                                        final matchregarderMatchRecord =
                                            matchregarderMatchRecordList
                                                    .isNotEmpty
                                                ? matchregarderMatchRecordList
                                                    .first
                                                : null;
                                        return Material(
                                          color: Colors.transparent,
                                          elevation: 30.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          child: Container(
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.15,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: const [
                                                BoxShadow(
                                                  blurRadius: 4.0,
                                                  color: Color(0x33000000),
                                                  offset: Offset(
                                                    0.0,
                                                    2.0,
                                                  ),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                            ),
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, -1.0),
                                                  child: Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.12,
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        0.02,
                                                    decoration: const BoxDecoration(
                                                      color: Color(0xFFFF0000),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                10.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                10.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        topRight:
                                                            Radius.circular(
                                                                0.0),
                                                      ),
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'tfvw7hmq' /* LIVE */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Bebas Neue',
                                                                  letterSpacing:
                                                                      1.0,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, -0.7),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'u94cp0to' /* COMMENTÉ */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Bebas Neue',
                                                          color:
                                                              const Color(0xA4726B6B),
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        5.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: FutureBuilder<
                                                                      EquipesRecord>(
                                                                    future: EquipesRecord.getDocumentOnce(
                                                                        matchregarderMatchRecord!
                                                                            .teamA!),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return const Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            child:
                                                                                CircularProgressIndicator(
                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                Color(0xFF265631),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      final equipe1EquipesRecord =
                                                                          snapshot
                                                                              .data!;
                                                                      return Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children:
                                                                            [
                                                                          Container(
                                                                            width:
                                                                                55.0,
                                                                            height:
                                                                                55.0,
                                                                            clipBehavior:
                                                                                Clip.antiAlias,
                                                                            decoration:
                                                                                const BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                            child:
                                                                                Image.network(
                                                                              equipe1EquipesRecord.logo,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            equipe1EquipesRecord.nomEquipe,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Bebas Neue',
                                                                                  color: const Color(0xEE000000),
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ].addToStart(const SizedBox(height: 5.0)),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          20.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            5.0),
                                                                        child:
                                                                            Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            matchregarderMatchRecord.heure,
                                                                            '00H:00',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Bebas Neue',
                                                                                color: const Color(0xEE000000),
                                                                                fontSize: 18.0,
                                                                                letterSpacing: 3.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          context
                                                                              .pushNamed(
                                                                            'matchdayAds',
                                                                            queryParameters:
                                                                                {
                                                                              'link': serializeParam(
                                                                                matchregarderMatchRecord.linkMatch,
                                                                                ParamType.String,
                                                                              ),
                                                                              'youtubelink': serializeParam(
                                                                                matchregarderMatchRecord.youtubeLink,
                                                                                ParamType.String,
                                                                              ),
                                                                            }.withoutNulls,
                                                                          );
                                                                        },
                                                                        child:
                                                                            Material(
                                                                          color:
                                                                              Colors.transparent,
                                                                          elevation:
                                                                              10.0,
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(5.0),
                                                                          ),
                                                                          child:
                                                                              Container(
                                                                            height:
                                                                                23.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: const Color(0xFFE0E0E4),
                                                                              boxShadow: const [
                                                                                BoxShadow(
                                                                                  blurRadius: 1.0,
                                                                                  color: Color(0x33000000),
                                                                                  offset: Offset(
                                                                                    0.0,
                                                                                    2.0,
                                                                                  ),
                                                                                )
                                                                              ],
                                                                              borderRadius: BorderRadius.circular(5.0),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                                                                                    child: Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        '73xy6ba1' /* REGARDER */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Bebas Neue',
                                                                                            color: Colors.black,
                                                                                            fontSize: 10.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  const Icon(
                                                                                    Icons.play_circle_outline_rounded,
                                                                                    color: Color(0x83000000),
                                                                                    size: 15.0,
                                                                                  ),
                                                                                  const SizedBox(
                                                                                    height: 23.0,
                                                                                    child: VerticalDivider(
                                                                                      thickness: 1.0,
                                                                                      color: Color(0x6D000000),
                                                                                    ),
                                                                                  ),
                                                                                  Container(
                                                                                    width: 15.0,
                                                                                    height: 15.0,
                                                                                    clipBehavior: Clip.antiAlias,
                                                                                    decoration: const BoxDecoration(
                                                                                      shape: BoxShape.circle,
                                                                                    ),
                                                                                    child: Image.asset(
                                                                                      'assets/images/sensor_2475301.png',
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: FutureBuilder<
                                                                      EquipesRecord>(
                                                                    future: EquipesRecord.getDocumentOnce(
                                                                        matchregarderMatchRecord
                                                                            .teamB!),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return const Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            child:
                                                                                CircularProgressIndicator(
                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                Color(0xFF265631),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      final equipe2EquipesRecord =
                                                                          snapshot
                                                                              .data!;
                                                                      return Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Container(
                                                                            width:
                                                                                55.0,
                                                                            height:
                                                                                55.0,
                                                                            clipBehavior:
                                                                                Clip.antiAlias,
                                                                            decoration:
                                                                                const BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                            child:
                                                                                Image.network(
                                                                              equipe2EquipesRecord.logo,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            equipe2EquipesRecord.nomEquipe,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Bebas Neue',
                                                                                  color: const Color(0xEE000000),
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ].addToStart(const SizedBox(height: 5.0)),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              ]
                                                                  .divide(const SizedBox(
                                                                      width:
                                                                          35.0))
                                                                  .around(const SizedBox(
                                                                      width:
                                                                          35.0)),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 1.0),
                                                          child: Container(
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height *
                                                                0.03,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      matchregarderMatchRecord
                                                                          .journee,
                                                                      'JOURNEE',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Bebas Neue',
                                                                          color:
                                                                              const Color(0xA7050000),
                                                                          fontSize:
                                                                              10.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                  ),
                                                                  const SizedBox(
                                                                    height:
                                                                        100.0,
                                                                    child:
                                                                        VerticalDivider(
                                                                      thickness:
                                                                          1.0,
                                                                      indent:
                                                                          5.0,
                                                                      endIndent:
                                                                          5.0,
                                                                      color: Color(
                                                                          0xA4726B6B),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            2.0,
                                                                            0.0),
                                                                    child: Icon(
                                                                      Icons
                                                                          .location_pin,
                                                                      color: Color(
                                                                          0x77050000),
                                                                      size:
                                                                          12.0,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      matchregarderMatchRecord
                                                                          .stade,
                                                                      'STADE',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Bebas Neue',
                                                                          color:
                                                                              const Color(0xA7050000),
                                                                          fontSize:
                                                                              10.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                  ),
                                                                  const SizedBox(
                                                                    height:
                                                                        100.0,
                                                                    child:
                                                                        VerticalDivider(
                                                                      thickness:
                                                                          1.0,
                                                                      indent:
                                                                          5.0,
                                                                      endIndent:
                                                                          5.0,
                                                                      color: Color(
                                                                          0xA4726B6B),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            2.0,
                                                                            0.0),
                                                                    child: Icon(
                                                                      Icons
                                                                          .access_time,
                                                                      color: Color(
                                                                          0xA4726B6B),
                                                                      size:
                                                                          12.0,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      matchregarderMatchRecord
                                                                          .heure,
                                                                      'HEURE',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Bebas Neue',
                                                                          color:
                                                                              const Color(0xA7050000),
                                                                          fontSize:
                                                                              10.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 20.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.4,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.032,
                                          decoration: const BoxDecoration(
                                            color: Color(0xC9FFFFFF),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(8.0),
                                              topRight: Radius.circular(8.0),
                                            ),
                                          ),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              '${_model.divisionValue}/SENIOR',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: const Color(0xEE000000),
                                                    fontSize: 13.0,
                                                    letterSpacing: 1.0,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.138,
                                          decoration: const BoxDecoration(
                                            color: Color(0x984F7F51),
                                          ),
                                          child:
                                              StreamBuilder<List<MatchRecord>>(
                                            stream: queryMatchRecord(
                                              queryBuilder: (matchRecord) =>
                                                  matchRecord
                                                      .where(
                                                        'division',
                                                        isEqualTo: _model
                                                            .divisionValue,
                                                      )
                                                      .where(
                                                        'categorie',
                                                        isEqualTo: 'SENIOR',
                                                      )
                                                      .where(
                                                        'dateMatch',
                                                        isEqualTo: functions
                                                            .getDayDate(),
                                                      ),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return const Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        Color(0xFF265631),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<MatchRecord>
                                                  listematchseniorMatchRecordList =
                                                  snapshot.data!;
                                              return SingleChildScrollView(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: List.generate(
                                                          listematchseniorMatchRecordList
                                                              .length,
                                                          (listematchseniorIndex) {
                                                    final listematchseniorMatchRecord =
                                                        listematchseniorMatchRecordList[
                                                            listematchseniorIndex];
                                                    return Container(
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.109,
                                                      decoration: const BoxDecoration(
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 4.0,
                                                            color: Color(
                                                                0xCD000000),
                                                            offset: Offset(
                                                              0.0,
                                                              2.0,
                                                            ),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  15.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  15.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  40.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  40.0),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        5.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: FutureBuilder<
                                                                      EquipesRecord>(
                                                                    future: EquipesRecord.getDocumentOnce(
                                                                        listematchseniorMatchRecord
                                                                            .teamA!),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return const Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            child:
                                                                                CircularProgressIndicator(
                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                Color(0xFF265631),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      final equipe1EquipesRecord =
                                                                          snapshot
                                                                              .data!;
                                                                      return Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children:
                                                                            [
                                                                          Container(
                                                                            width:
                                                                                35.0,
                                                                            height:
                                                                                35.0,
                                                                            clipBehavior:
                                                                                Clip.antiAlias,
                                                                            decoration:
                                                                                const BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                            child:
                                                                                Image.network(
                                                                              equipe1EquipesRecord.logo,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            equipe1EquipesRecord.nomEquipe,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Bebas Neue',
                                                                                  color: const Color(0xEE000000),
                                                                                  fontSize: 11.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ].addToStart(const SizedBox(height: 5.0)),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'wu5b3y5h' /* - */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Bebas Neue',
                                                                        color: const Color(
                                                                            0xEE000000),
                                                                        fontSize:
                                                                            50.0,
                                                                        letterSpacing:
                                                                            3.0,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: FutureBuilder<
                                                                      EquipesRecord>(
                                                                    future: EquipesRecord.getDocumentOnce(
                                                                        listematchseniorMatchRecord
                                                                            .teamB!),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return const Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            child:
                                                                                CircularProgressIndicator(
                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                Color(0xFF265631),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      final equipe2EquipesRecord =
                                                                          snapshot
                                                                              .data!;
                                                                      return Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Container(
                                                                            width:
                                                                                35.0,
                                                                            height:
                                                                                35.0,
                                                                            clipBehavior:
                                                                                Clip.antiAlias,
                                                                            decoration:
                                                                                const BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                            child:
                                                                                Image.network(
                                                                              equipe2EquipesRecord.logo,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            equipe2EquipesRecord.nomEquipe,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Bebas Neue',
                                                                                  color: const Color(0xEE000000),
                                                                                  fontSize: 11.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ].addToStart(const SizedBox(height: 5.0)),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              ]
                                                                  .divide(const SizedBox(
                                                                      width:
                                                                          10.0))
                                                                  .addToStart(
                                                                      const SizedBox(
                                                                          width:
                                                                              10.0))
                                                                  .addToEnd(
                                                                      const SizedBox(
                                                                          width:
                                                                              10.0)),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 1.0),
                                                            child: Container(
                                                              height: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .height *
                                                                  0.025,
                                                              decoration:
                                                                  const BoxDecoration(
                                                                color: Color(
                                                                    0x80EAE3E3),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          15.0),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          15.0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          0.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          0.0),
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      listematchseniorMatchRecord
                                                                          .journee,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Bebas Neue',
                                                                            color:
                                                                                const Color(0xA7050000),
                                                                            fontSize:
                                                                                6.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                    ),
                                                                    const SizedBox(
                                                                      height:
                                                                          100.0,
                                                                      child:
                                                                          VerticalDivider(
                                                                        thickness:
                                                                            1.0,
                                                                        indent:
                                                                            5.0,
                                                                        endIndent:
                                                                            5.0,
                                                                        color: Color(
                                                                            0xA4726B6B),
                                                                      ),
                                                                    ),
                                                                    const Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          2.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .location_pin,
                                                                        color: Color(
                                                                            0xA7050000),
                                                                        size:
                                                                            10.0,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      listematchseniorMatchRecord
                                                                          .stade,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Bebas Neue',
                                                                            color:
                                                                                const Color(0xA7050000),
                                                                            fontSize:
                                                                                6.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                    ),
                                                                    const SizedBox(
                                                                      height:
                                                                          100.0,
                                                                      child:
                                                                          VerticalDivider(
                                                                        thickness:
                                                                            1.0,
                                                                        indent:
                                                                            5.0,
                                                                        endIndent:
                                                                            5.0,
                                                                        color: Color(
                                                                            0xA4726B6B),
                                                                      ),
                                                                    ),
                                                                    const Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          2.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .access_time,
                                                                        color: Color(
                                                                            0xA7050000),
                                                                        size:
                                                                            10.0,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      listematchseniorMatchRecord
                                                                          .heure,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Bebas Neue',
                                                                            color:
                                                                                const Color(0xA7050000),
                                                                            fontSize:
                                                                                6.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  })
                                                      .divide(
                                                          const SizedBox(width: 15.0))
                                                      .around(const SizedBox(
                                                          width: 15.0)),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 20.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.4,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.032,
                                          decoration: const BoxDecoration(
                                            color: Color(0xC9FFFFFF),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(8.0),
                                              topRight: Radius.circular(8.0),
                                            ),
                                          ),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              '${_model.divisionValue}/U19',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: const Color(0xEE000000),
                                                    fontSize: 13.0,
                                                    letterSpacing: 1.0,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.138,
                                          decoration: const BoxDecoration(
                                            color: Color(0x984F7F51),
                                          ),
                                          child:
                                              StreamBuilder<List<MatchRecord>>(
                                            stream: queryMatchRecord(
                                              queryBuilder: (matchRecord) =>
                                                  matchRecord
                                                      .where(
                                                        'division',
                                                        isEqualTo: _model
                                                            .divisionValue,
                                                      )
                                                      .where(
                                                        'matchInfosU19.dateMatch',
                                                        isEqualTo: functions
                                                            .getDayDate(),
                                                      ),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return const Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        Color(0xFF265631),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<MatchRecord>
                                                  listematchsu19MatchRecordList =
                                                  snapshot.data!;
                                              return SingleChildScrollView(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: List.generate(
                                                          listematchsu19MatchRecordList
                                                              .length,
                                                          (listematchsu19Index) {
                                                    final listematchsu19MatchRecord =
                                                        listematchsu19MatchRecordList[
                                                            listematchsu19Index];
                                                    return Container(
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.109,
                                                      decoration: const BoxDecoration(
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 4.0,
                                                            color: Color(
                                                                0xCD000000),
                                                            offset: Offset(
                                                              0.0,
                                                              2.0,
                                                            ),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  15.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  15.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  40.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  40.0),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        5.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: FutureBuilder<
                                                                      EquipesRecord>(
                                                                    future: EquipesRecord.getDocumentOnce(
                                                                        listematchsu19MatchRecord
                                                                            .teamA!),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return const Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            child:
                                                                                CircularProgressIndicator(
                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                Color(0xFF265631),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      final equipe1EquipesRecord =
                                                                          snapshot
                                                                              .data!;
                                                                      return Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children:
                                                                            [
                                                                          Container(
                                                                            width:
                                                                                35.0,
                                                                            height:
                                                                                35.0,
                                                                            clipBehavior:
                                                                                Clip.antiAlias,
                                                                            decoration:
                                                                                const BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                            child:
                                                                                Image.network(
                                                                              equipe1EquipesRecord.logo,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            equipe1EquipesRecord.nomEquipe,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Bebas Neue',
                                                                                  color: const Color(0xEE000000),
                                                                                  fontSize: 11.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ].addToStart(const SizedBox(height: 5.0)),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '7xrly9ck' /* - */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Bebas Neue',
                                                                        color: const Color(
                                                                            0xEE000000),
                                                                        fontSize:
                                                                            50.0,
                                                                        letterSpacing:
                                                                            3.0,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: FutureBuilder<
                                                                      EquipesRecord>(
                                                                    future: EquipesRecord.getDocumentOnce(
                                                                        listematchsu19MatchRecord
                                                                            .teamB!),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return const Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            child:
                                                                                CircularProgressIndicator(
                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                Color(0xFF265631),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      final equipe2EquipesRecord =
                                                                          snapshot
                                                                              .data!;
                                                                      return Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Container(
                                                                            width:
                                                                                35.0,
                                                                            height:
                                                                                35.0,
                                                                            clipBehavior:
                                                                                Clip.antiAlias,
                                                                            decoration:
                                                                                const BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                            child:
                                                                                Image.network(
                                                                              equipe2EquipesRecord.logo,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            equipe2EquipesRecord.nomEquipe,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Bebas Neue',
                                                                                  color: const Color(0xEE000000),
                                                                                  fontSize: 11.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ].addToStart(const SizedBox(height: 5.0)),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              ]
                                                                  .divide(const SizedBox(
                                                                      width:
                                                                          10.0))
                                                                  .addToStart(
                                                                      const SizedBox(
                                                                          width:
                                                                              10.0))
                                                                  .addToEnd(
                                                                      const SizedBox(
                                                                          width:
                                                                              10.0)),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 1.0),
                                                            child: Container(
                                                              height: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .height *
                                                                  0.025,
                                                              decoration:
                                                                  const BoxDecoration(
                                                                color: Color(
                                                                    0x80EAE3E3),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          15.0),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          15.0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          0.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          0.0),
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      listematchsu19MatchRecord
                                                                          .matchInfosU19
                                                                          .journee,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Bebas Neue',
                                                                            color:
                                                                                const Color(0xA7050000),
                                                                            fontSize:
                                                                                6.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                    ),
                                                                    const SizedBox(
                                                                      height:
                                                                          100.0,
                                                                      child:
                                                                          VerticalDivider(
                                                                        thickness:
                                                                            1.0,
                                                                        indent:
                                                                            5.0,
                                                                        endIndent:
                                                                            5.0,
                                                                        color: Color(
                                                                            0xA4726B6B),
                                                                      ),
                                                                    ),
                                                                    const Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          2.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .location_pin,
                                                                        color: Color(
                                                                            0xA7050000),
                                                                        size:
                                                                            10.0,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      listematchsu19MatchRecord
                                                                          .matchInfosU19
                                                                          .stade,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Bebas Neue',
                                                                            color:
                                                                                const Color(0xA7050000),
                                                                            fontSize:
                                                                                6.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                    ),
                                                                    const SizedBox(
                                                                      height:
                                                                          100.0,
                                                                      child:
                                                                          VerticalDivider(
                                                                        thickness:
                                                                            1.0,
                                                                        indent:
                                                                            5.0,
                                                                        endIndent:
                                                                            5.0,
                                                                        color: Color(
                                                                            0xA4726B6B),
                                                                      ),
                                                                    ),
                                                                    const Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          2.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .access_time,
                                                                        color: Color(
                                                                            0xA7050000),
                                                                        size:
                                                                            10.0,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      listematchsu19MatchRecord
                                                                          .matchInfosU19
                                                                          .stade,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Bebas Neue',
                                                                            color:
                                                                                const Color(0xA7050000),
                                                                            fontSize:
                                                                                6.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  })
                                                      .divide(
                                                          const SizedBox(width: 15.0))
                                                      .around(const SizedBox(
                                                          width: 15.0)),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 20.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.4,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.032,
                                          decoration: const BoxDecoration(
                                            color: Color(0xC9FFFFFF),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(8.0),
                                              topRight: Radius.circular(8.0),
                                            ),
                                          ),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              '${_model.divisionValue}/U17',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: const Color(0xEE000000),
                                                    fontSize: 13.0,
                                                    letterSpacing: 1.0,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.138,
                                          decoration: const BoxDecoration(
                                            color: Color(0x984F7F51),
                                          ),
                                          child:
                                              StreamBuilder<List<MatchRecord>>(
                                            stream: queryMatchRecord(
                                              queryBuilder: (matchRecord) =>
                                                  matchRecord
                                                      .where(
                                                        'division',
                                                        isEqualTo: _model
                                                            .divisionValue,
                                                      )
                                                      .where(
                                                        'matchInfosU17.dateMatch',
                                                        isEqualTo: functions
                                                            .getDayDate(),
                                                      ),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return const Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        Color(0xFF265631),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<MatchRecord>
                                                  listematchsu17MatchRecordList =
                                                  snapshot.data!;
                                              return SingleChildScrollView(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: List.generate(
                                                          listematchsu17MatchRecordList
                                                              .length,
                                                          (listematchsu17Index) {
                                                    final listematchsu17MatchRecord =
                                                        listematchsu17MatchRecordList[
                                                            listematchsu17Index];
                                                    return Container(
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.109,
                                                      decoration: const BoxDecoration(
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 4.0,
                                                            color: Color(
                                                                0xCD000000),
                                                            offset: Offset(
                                                              0.0,
                                                              2.0,
                                                            ),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  15.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  15.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  40.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  40.0),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        5.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: FutureBuilder<
                                                                      EquipesRecord>(
                                                                    future: EquipesRecord.getDocumentOnce(
                                                                        listematchsu17MatchRecord
                                                                            .teamA!),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return const Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            child:
                                                                                CircularProgressIndicator(
                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                Color(0xFF265631),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      final equipe1EquipesRecord =
                                                                          snapshot
                                                                              .data!;
                                                                      return Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children:
                                                                            [
                                                                          Container(
                                                                            width:
                                                                                35.0,
                                                                            height:
                                                                                35.0,
                                                                            clipBehavior:
                                                                                Clip.antiAlias,
                                                                            decoration:
                                                                                const BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                            child:
                                                                                Image.network(
                                                                              equipe1EquipesRecord.logo,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            equipe1EquipesRecord.nomEquipe,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Bebas Neue',
                                                                                  color: const Color(0xEE000000),
                                                                                  fontSize: 11.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ].addToStart(const SizedBox(height: 5.0)),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '0mkcfng4' /* - */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Bebas Neue',
                                                                        color: const Color(
                                                                            0xEE000000),
                                                                        fontSize:
                                                                            50.0,
                                                                        letterSpacing:
                                                                            3.0,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: FutureBuilder<
                                                                      EquipesRecord>(
                                                                    future: EquipesRecord.getDocumentOnce(
                                                                        listematchsu17MatchRecord
                                                                            .teamB!),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return const Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            child:
                                                                                CircularProgressIndicator(
                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                Color(0xFF265631),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      final equipe2EquipesRecord =
                                                                          snapshot
                                                                              .data!;
                                                                      return Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Container(
                                                                            width:
                                                                                35.0,
                                                                            height:
                                                                                35.0,
                                                                            clipBehavior:
                                                                                Clip.antiAlias,
                                                                            decoration:
                                                                                const BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                            child:
                                                                                Image.network(
                                                                              equipe2EquipesRecord.logo,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            equipe2EquipesRecord.nomEquipe,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Bebas Neue',
                                                                                  color: const Color(0xEE000000),
                                                                                  fontSize: 11.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ].addToStart(const SizedBox(height: 5.0)),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              ]
                                                                  .divide(const SizedBox(
                                                                      width:
                                                                          10.0))
                                                                  .addToStart(
                                                                      const SizedBox(
                                                                          width:
                                                                              10.0))
                                                                  .addToEnd(
                                                                      const SizedBox(
                                                                          width:
                                                                              10.0)),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 1.0),
                                                            child: Container(
                                                              height: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .height *
                                                                  0.025,
                                                              decoration:
                                                                  const BoxDecoration(
                                                                color: Color(
                                                                    0x80EAE3E3),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          15.0),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          15.0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          0.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          0.0),
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      listematchsu17MatchRecord
                                                                          .matchInfosU17
                                                                          .journee,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Bebas Neue',
                                                                            color:
                                                                                const Color(0xA7050000),
                                                                            fontSize:
                                                                                6.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                    ),
                                                                    const SizedBox(
                                                                      height:
                                                                          100.0,
                                                                      child:
                                                                          VerticalDivider(
                                                                        thickness:
                                                                            1.0,
                                                                        indent:
                                                                            5.0,
                                                                        endIndent:
                                                                            5.0,
                                                                        color: Color(
                                                                            0xA4726B6B),
                                                                      ),
                                                                    ),
                                                                    const Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          2.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .location_pin,
                                                                        color: Color(
                                                                            0xA7050000),
                                                                        size:
                                                                            10.0,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      listematchsu17MatchRecord
                                                                          .matchInfosU17
                                                                          .stade,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Bebas Neue',
                                                                            color:
                                                                                const Color(0xA7050000),
                                                                            fontSize:
                                                                                6.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                    ),
                                                                    const SizedBox(
                                                                      height:
                                                                          100.0,
                                                                      child:
                                                                          VerticalDivider(
                                                                        thickness:
                                                                            1.0,
                                                                        indent:
                                                                            5.0,
                                                                        endIndent:
                                                                            5.0,
                                                                        color: Color(
                                                                            0xA4726B6B),
                                                                      ),
                                                                    ),
                                                                    const Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          2.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .access_time,
                                                                        color: Color(
                                                                            0xA7050000),
                                                                        size:
                                                                            10.0,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      listematchsu17MatchRecord
                                                                          .matchInfosU17
                                                                          .stade,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Bebas Neue',
                                                                            color:
                                                                                const Color(0xA7050000),
                                                                            fontSize:
                                                                                6.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  })
                                                      .divide(
                                                          const SizedBox(width: 15.0))
                                                      .around(const SizedBox(
                                                          width: 15.0)),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 20.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.4,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.032,
                                          decoration: const BoxDecoration(
                                            color: Color(0xC9FFFFFF),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(8.0),
                                              topRight: Radius.circular(8.0),
                                            ),
                                          ),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              '${_model.divisionValue}/U15',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: const Color(0xEE000000),
                                                    fontSize: 13.0,
                                                    letterSpacing: 1.0,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.138,
                                          decoration: const BoxDecoration(
                                            color: Color(0x984F7F51),
                                          ),
                                          child:
                                              StreamBuilder<List<MatchRecord>>(
                                            stream: queryMatchRecord(
                                              queryBuilder: (matchRecord) =>
                                                  matchRecord
                                                      .where(
                                                        'division',
                                                        isEqualTo: _model
                                                            .divisionValue,
                                                      )
                                                      .where(
                                                        'matchInfosU15.dateMatch',
                                                        isEqualTo: functions
                                                            .getDayDate(),
                                                      ),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return const Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        Color(0xFF265631),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<MatchRecord>
                                                  listematchsu15MatchRecordList =
                                                  snapshot.data!;
                                              return SingleChildScrollView(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: List.generate(
                                                          listematchsu15MatchRecordList
                                                              .length,
                                                          (listematchsu15Index) {
                                                    final listematchsu15MatchRecord =
                                                        listematchsu15MatchRecordList[
                                                            listematchsu15Index];
                                                    return Container(
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.109,
                                                      decoration: const BoxDecoration(
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 4.0,
                                                            color: Color(
                                                                0xCD000000),
                                                            offset: Offset(
                                                              0.0,
                                                              2.0,
                                                            ),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  15.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  15.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  40.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  40.0),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        5.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: FutureBuilder<
                                                                      EquipesRecord>(
                                                                    future: EquipesRecord.getDocumentOnce(
                                                                        listematchsu15MatchRecord
                                                                            .teamA!),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return const Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            child:
                                                                                CircularProgressIndicator(
                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                Color(0xFF265631),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      final equipe1EquipesRecord =
                                                                          snapshot
                                                                              .data!;
                                                                      return Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children:
                                                                            [
                                                                          Container(
                                                                            width:
                                                                                35.0,
                                                                            height:
                                                                                35.0,
                                                                            clipBehavior:
                                                                                Clip.antiAlias,
                                                                            decoration:
                                                                                const BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                            child:
                                                                                Image.network(
                                                                              equipe1EquipesRecord.logo,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            equipe1EquipesRecord.nomEquipe,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Bebas Neue',
                                                                                  color: const Color(0xEE000000),
                                                                                  fontSize: 11.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ].addToStart(const SizedBox(height: 5.0)),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'wagbafov' /* - */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Bebas Neue',
                                                                        color: const Color(
                                                                            0xEE000000),
                                                                        fontSize:
                                                                            50.0,
                                                                        letterSpacing:
                                                                            3.0,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: FutureBuilder<
                                                                      EquipesRecord>(
                                                                    future: EquipesRecord.getDocumentOnce(
                                                                        listematchsu15MatchRecord
                                                                            .teamB!),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return const Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            child:
                                                                                CircularProgressIndicator(
                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                Color(0xFF265631),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      final equipe2EquipesRecord =
                                                                          snapshot
                                                                              .data!;
                                                                      return Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Container(
                                                                            width:
                                                                                35.0,
                                                                            height:
                                                                                35.0,
                                                                            clipBehavior:
                                                                                Clip.antiAlias,
                                                                            decoration:
                                                                                const BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                            child:
                                                                                Image.network(
                                                                              equipe2EquipesRecord.logo,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            equipe2EquipesRecord.nomEquipe,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Bebas Neue',
                                                                                  color: const Color(0xEE000000),
                                                                                  fontSize: 11.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ].addToStart(const SizedBox(height: 5.0)),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              ]
                                                                  .divide(const SizedBox(
                                                                      width:
                                                                          10.0))
                                                                  .addToStart(
                                                                      const SizedBox(
                                                                          width:
                                                                              10.0))
                                                                  .addToEnd(
                                                                      const SizedBox(
                                                                          width:
                                                                              10.0)),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 1.0),
                                                            child: Container(
                                                              height: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .height *
                                                                  0.025,
                                                              decoration:
                                                                  const BoxDecoration(
                                                                color: Color(
                                                                    0x80EAE3E3),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          15.0),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          15.0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          0.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          0.0),
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      listematchsu15MatchRecord
                                                                          .matchInfosU15
                                                                          .journee,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Bebas Neue',
                                                                            color:
                                                                                const Color(0xA7050000),
                                                                            fontSize:
                                                                                6.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                    ),
                                                                    const SizedBox(
                                                                      height:
                                                                          100.0,
                                                                      child:
                                                                          VerticalDivider(
                                                                        thickness:
                                                                            1.0,
                                                                        indent:
                                                                            5.0,
                                                                        endIndent:
                                                                            5.0,
                                                                        color: Color(
                                                                            0xA4726B6B),
                                                                      ),
                                                                    ),
                                                                    const Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          2.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .location_pin,
                                                                        color: Color(
                                                                            0xA7050000),
                                                                        size:
                                                                            10.0,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      listematchsu15MatchRecord
                                                                          .matchInfosU15
                                                                          .stade,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Bebas Neue',
                                                                            color:
                                                                                const Color(0xA7050000),
                                                                            fontSize:
                                                                                6.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                    ),
                                                                    const SizedBox(
                                                                      height:
                                                                          100.0,
                                                                      child:
                                                                          VerticalDivider(
                                                                        thickness:
                                                                            1.0,
                                                                        indent:
                                                                            5.0,
                                                                        endIndent:
                                                                            5.0,
                                                                        color: Color(
                                                                            0xA4726B6B),
                                                                      ),
                                                                    ),
                                                                    const Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          2.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .access_time,
                                                                        color: Color(
                                                                            0xA7050000),
                                                                        size:
                                                                            10.0,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      listematchsu15MatchRecord
                                                                          .matchInfosU15
                                                                          .heure,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Bebas Neue',
                                                                            color:
                                                                                const Color(0xA7050000),
                                                                            fontSize:
                                                                                6.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  })
                                                      .divide(
                                                          const SizedBox(width: 15.0))
                                                      .around(const SizedBox(
                                                          width: 15.0)),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ].addToEnd(const SizedBox(height: 80.0)),
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
                Align(
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: wrapWithModel(
                    model: _model.appBar1Model,
                    updateCallback: () => setState(() {}),
                    child: AppBar1Widget(
                      title: FFLocalizations.of(context).getText(
                        'sdq2mob9' /* MATCH DAY */,
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
