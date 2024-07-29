import '/backend/backend.dart';
import '/components/app_bar2_widget.dart';
import '/components/match_component_u13_widget.dart';
import '/components/match_component_u15_widget.dart';
import '/components/match_component_u17_widget.dart';
import '/components/match_component_u19_widget.dart';
import '/components/match_component_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/navbar/nav_barr/nav_barr_widget.dart';
import 'package:flutter/material.dart';
import 'calendrier_model.dart';
export 'calendrier_model.dart';

class CalendrierWidget extends StatefulWidget {
  const CalendrierWidget({super.key});

  @override
  State<CalendrierWidget> createState() => _CalendrierWidgetState();
}

class _CalendrierWidgetState extends State<CalendrierWidget> {
  late CalendrierModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalendrierModel());

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
        title: 'calendrier',
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
                                          '0oha72q8' /* HONNEUR */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          'jsny2mhm' /* PRE-HONNEUR */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          'htdp08eb' /* JEUNES */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          'l31u3f0e' /* ÉCOLES */,
                                        ))
                                      ],
                                      onChanged: (val) => setState(() =>
                                          _model.divisionChoiceChipsValue =
                                              val?.firstOrNull),
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
                                      initialized:
                                          _model.divisionChoiceChipsValue !=
                                              null,
                                      alignment: WrapAlignment.start,
                                      controller: _model
                                              .divisionChoiceChipsValueController ??=
                                          FormFieldController<List<String>>(
                                        [
                                          FFLocalizations.of(context).getText(
                                            'oegpahzq' /* HONNEUR */,
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
                        Opacity(
                          opacity: 0.4,
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Builder(
                                    builder: (context) {
                                      if (_model.divisionChoiceChipsValue ==
                                          'JEUNES') {
                                        return FlutterFlowChoiceChips(
                                          options: [
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              'y5ga1zz3' /* GROUPE 01 */,
                                            )),
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              'il44yupj' /* GROUPE 02 */,
                                            )),
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              '127dqbx2' /* GROUPE 03 */,
                                            )),
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              'csu6qkps' /* GROUPE 04 */,
                                            )),
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              'hbgl8oap' /* GROUPE 05 */,
                                            )),
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              'xorx7ajy' /* GROUPE 06 */,
                                            ))
                                          ],
                                          onChanged: (val) => setState(() =>
                                              _model.groupesJeunesValue =
                                                  val?.firstOrNull),
                                          selectedChipStyle: ChipStyle(
                                            backgroundColor: const Color(0xFF3B7949),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .override(
                                                      fontFamily: 'Bebas Neue',
                                                      fontSize: 13.0,
                                                      letterSpacing: 1.0,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      lineHeight: 0.0,
                                                    ),
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            iconSize: 18.0,
                                            elevation: 0.0,
                                            borderColor: const Color(0x9AF6EB82),
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          unselectedChipStyle: ChipStyle(
                                            backgroundColor: const Color(0x00000000),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Bebas Neue',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 13.0,
                                                  letterSpacing: 1.0,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                            iconColor:
                                                FlutterFlowTheme.of(context)
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
                                          initialized:
                                              _model.groupesJeunesValue != null,
                                          alignment: WrapAlignment.start,
                                          controller: _model
                                                  .groupesJeunesValueController ??=
                                              FormFieldController<List<String>>(
                                            [
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'm1d9syn0' /* GROUPE 01 */,
                                              )
                                            ],
                                          ),
                                          wrapped: false,
                                        );
                                      } else if (_model
                                              .divisionChoiceChipsValue ==
                                          'ÉCOLES') {
                                        return FlutterFlowChoiceChips(
                                          options: [
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              'ua3gdxdt' /* GROUPE 01 */,
                                            )),
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              'y1c7iu2n' /* GROUPE 02 */,
                                            )),
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              'vnnq71e1' /* GROUPE 03 */,
                                            )),
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              'mxtiv5k4' /* GROUPE 04 */,
                                            ))
                                          ],
                                          onChanged: (val) => setState(() =>
                                              _model.groupesEcolesValue =
                                                  val?.firstOrNull),
                                          selectedChipStyle: ChipStyle(
                                            backgroundColor: const Color(0xFF3B7949),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .override(
                                                      fontFamily: 'Bebas Neue',
                                                      fontSize: 13.0,
                                                      letterSpacing: 1.0,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      lineHeight: 0.0,
                                                    ),
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            iconSize: 18.0,
                                            elevation: 0.0,
                                            borderColor: const Color(0x9AF6EB82),
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          unselectedChipStyle: ChipStyle(
                                            backgroundColor: const Color(0x00000000),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Bebas Neue',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 13.0,
                                                  letterSpacing: 1.0,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                            iconColor:
                                                FlutterFlowTheme.of(context)
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
                                          initialized:
                                              _model.groupesEcolesValue != null,
                                          alignment: WrapAlignment.start,
                                          controller: _model
                                                  .groupesEcolesValueController ??=
                                              FormFieldController<List<String>>(
                                            [
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'hi1p1oyw' /* GROUPE 01 */,
                                              )
                                            ],
                                          ),
                                          wrapped: false,
                                        );
                                      } else {
                                        return Container(
                                          width: 100.0,
                                          decoration: const BoxDecoration(),
                                        );
                                      }
                                    },
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Builder(
                                    builder: (context) {
                                      if (_model.divisionChoiceChipsValue ==
                                          'HONNEUR') {
                                        return Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 5.0),
                                          child: FlutterFlowChoiceChips(
                                            options: [
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'qj6z5phs' /* SENIOR */,
                                              )),
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'zqixr9df' /* U19 */,
                                              )),
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'rhxfz64y' /* U17 */,
                                              )),
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'x7osa5ts' /* U15 */,
                                              )),
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'c4szssez' /* U13 */,
                                              ))
                                            ],
                                            onChanged: (val) => setState(() =>
                                                _model.ageHonneurValue =
                                                    val?.firstOrNull),
                                            selectedChipStyle: ChipStyle(
                                              backgroundColor:
                                                  const Color(0xFF3B7949),
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelLarge
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    fontSize: 13.0,
                                                    letterSpacing: 1.0,
                                                    fontWeight: FontWeight.w300,
                                                    lineHeight: 0.0,
                                                  ),
                                              iconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              iconSize: 0.0,
                                              elevation: 0.0,
                                              borderColor: const Color(0x9AF6EB82),
                                              borderWidth: 0.0,
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            unselectedChipStyle: ChipStyle(
                                              backgroundColor:
                                                  const Color(0x00000000),
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 13.0,
                                                    letterSpacing: 1.0,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                              iconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              iconSize: 18.0,
                                              elevation: 0.0,
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderWidth: 0.0,
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            chipSpacing: 10.0,
                                            rowSpacing: 20.0,
                                            multiselect: false,
                                            initialized:
                                                _model.ageHonneurValue != null,
                                            alignment: WrapAlignment.start,
                                            controller: _model
                                                    .ageHonneurValueController ??=
                                                FormFieldController<
                                                    List<String>>(
                                              [
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '72m8qzjo' /* SENIOR */,
                                                )
                                              ],
                                            ),
                                            wrapped: false,
                                          ),
                                        );
                                      } else if (_model
                                              .divisionChoiceChipsValue ==
                                          'PRE-HONNEUR') {
                                        return Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 5.0),
                                          child: FlutterFlowChoiceChips(
                                            options: [
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                '8r28gqxh' /* SENIOR */,
                                              )),
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                '1ygvtw7c' /* U19 */,
                                              )),
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'awufy06d' /* U17 */,
                                              )),
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                '6timfmht' /* U15 */,
                                              )),
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'jy91jfmj' /* U13 */,
                                              ))
                                            ],
                                            onChanged: (val) => setState(() =>
                                                _model.agePHValue =
                                                    val?.firstOrNull),
                                            selectedChipStyle: ChipStyle(
                                              backgroundColor:
                                                  const Color(0xFF3B7949),
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelLarge
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    fontSize: 13.0,
                                                    letterSpacing: 1.0,
                                                    fontWeight: FontWeight.w300,
                                                    lineHeight: 0.0,
                                                  ),
                                              iconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              iconSize: 0.0,
                                              elevation: 0.0,
                                              borderColor: const Color(0x9AF6EB82),
                                              borderWidth: 0.0,
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            unselectedChipStyle: ChipStyle(
                                              backgroundColor:
                                                  const Color(0x00000000),
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 13.0,
                                                    letterSpacing: 1.0,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                              iconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              iconSize: 18.0,
                                              elevation: 0.0,
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderWidth: 0.0,
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            chipSpacing: 10.0,
                                            rowSpacing: 20.0,
                                            multiselect: false,
                                            initialized:
                                                _model.agePHValue != null,
                                            alignment: WrapAlignment.start,
                                            controller:
                                                _model.agePHValueController ??=
                                                    FormFieldController<
                                                        List<String>>(
                                              [
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'as0xtg8c' /* SENIOR */,
                                                )
                                              ],
                                            ),
                                            wrapped: false,
                                          ),
                                        );
                                      } else if (_model
                                              .divisionChoiceChipsValue ==
                                          'JEUNES') {
                                        return FlutterFlowChoiceChips(
                                          options: [
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              'u1k8beek' /* U19 */,
                                            )),
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              'j2o9ytkx' /* U17 */,
                                            )),
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              'a6kbkoj4' /* U15 */,
                                            )),
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              'ojnjaz3t' /* U13 */,
                                            ))
                                          ],
                                          onChanged: (val) => setState(() =>
                                              _model.ageJeunesValue =
                                                  val?.firstOrNull),
                                          selectedChipStyle: ChipStyle(
                                            backgroundColor: const Color(0xFF3B7949),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .override(
                                                      fontFamily: 'Bebas Neue',
                                                      fontSize: 13.0,
                                                      letterSpacing: 1.0,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      lineHeight: 0.0,
                                                    ),
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            iconSize: 18.0,
                                            elevation: 0.0,
                                            borderColor: const Color(0x9AF6EB82),
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          unselectedChipStyle: ChipStyle(
                                            backgroundColor: const Color(0x00000000),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Bebas Neue',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 13.0,
                                                  letterSpacing: 1.0,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                            iconColor:
                                                FlutterFlowTheme.of(context)
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
                                          initialized:
                                              _model.ageJeunesValue != null,
                                          alignment: WrapAlignment.start,
                                          controller: _model
                                                  .ageJeunesValueController ??=
                                              FormFieldController<List<String>>(
                                            [
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'mwmeyb8t' /* U19 */,
                                              )
                                            ],
                                          ),
                                          wrapped: false,
                                        );
                                      } else {
                                        return Container(
                                          width: 100.0,
                                          decoration: const BoxDecoration(),
                                        );
                                      }
                                    },
                                  ),
                                ),
                              ]
                                  .divide(const SizedBox(height: 10.0))
                                  .addToStart(const SizedBox(height: 5.0))
                                  .addToEnd(const SizedBox(height: 5.0)),
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
                              child: StreamBuilder<List<CalendrierRecord>>(
                                stream: queryCalendrierRecord(
                                  queryBuilder: (calendrierRecord) =>
                                      calendrierRecord
                                          .where(
                                    'division',
                                    isEqualTo: _model.divisionChoiceChipsValue,
                                  )
                                          .where(
                                    'groupe',
                                    isEqualTo: () {
                                      if (_model.divisionChoiceChipsValue ==
                                          'JEUNES') {
                                        return _model.groupesJeunesValue;
                                      } else if (_model
                                              .divisionChoiceChipsValue ==
                                          'ÉCOLES') {
                                        return _model.groupesEcolesValue;
                                      } else {
                                        return null;
                                      }
                                    }(),
                                  ).orderBy('indxJ'),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return const Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            Color(0xFF265631),
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<CalendrierRecord>
                                      calendarListViewCalendrierRecordList =
                                      snapshot.data!;

                                  return ListView.separated(
                                    padding: const EdgeInsets.fromLTRB(
                                      0,
                                      15.0,
                                      0,
                                      15.0,
                                    ),
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        calendarListViewCalendrierRecordList
                                            .length,
                                    separatorBuilder: (_, __) =>
                                        const SizedBox(height: 20.0),
                                    itemBuilder:
                                        (context, calendarListViewIndex) {
                                      final calendarListViewCalendrierRecord =
                                          calendarListViewCalendrierRecordList[
                                              calendarListViewIndex];
                                      return Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 20.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.4,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.032,
                                              decoration: const BoxDecoration(
                                                color: Color(0xC9FFFFFF),
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(0.0),
                                                  topLeft: Radius.circular(8.0),
                                                  topRight:
                                                      Radius.circular(8.0),
                                                ),
                                              ),
                                              child: Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  calendarListViewCalendrierRecord
                                                      .journee,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Bebas Neue',
                                                        color:
                                                            const Color(0xEE000000),
                                                        fontSize: 13.0,
                                                        letterSpacing: 1.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.138,
                                              decoration: const BoxDecoration(
                                                color: Color(0x984F7F51),
                                              ),
                                              child: Builder(
                                                builder: (context) {
                                                  final listMatchCalendar =
                                                      calendarListViewCalendrierRecord
                                                          .listMatch
                                                          .toList();

                                                  return SingleChildScrollView(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: List.generate(
                                                              listMatchCalendar
                                                                  .length,
                                                              (listMatchCalendarIndex) {
                                                        final listMatchCalendarItem =
                                                            listMatchCalendar[
                                                                listMatchCalendarIndex];
                                                        return Builder(
                                                          builder: (context) {
                                                            if ((_model.divisionChoiceChipsValue ==
                                                                    'HONNEUR') &&
                                                                (_model.ageHonneurValue ==
                                                                    'SENIOR')) {
                                                              return MatchComponentWidget(
                                                                key: Key(
                                                                    'Keynus_${listMatchCalendarIndex}_of_${listMatchCalendar.length}'),
                                                                refMatch:
                                                                    listMatchCalendarItem,
                                                              );
                                                            } else if ((_model.divisionChoiceChipsValue ==
                                                                    'HONNEUR') &&
                                                                (_model.ageHonneurValue ==
                                                                    'U19')) {
                                                              return MatchComponentU19Widget(
                                                                key: Key(
                                                                    'Key88h_${listMatchCalendarIndex}_of_${listMatchCalendar.length}'),
                                                                refMatch:
                                                                    listMatchCalendarItem,
                                                              );
                                                            } else if ((_model.divisionChoiceChipsValue ==
                                                                    'HONNEUR') &&
                                                                (_model.ageHonneurValue ==
                                                                    'U17')) {
                                                              return MatchComponentU17Widget(
                                                                key: Key(
                                                                    'Keyr2x_${listMatchCalendarIndex}_of_${listMatchCalendar.length}'),
                                                                refMatch:
                                                                    listMatchCalendarItem,
                                                              );
                                                            } else if ((_model.divisionChoiceChipsValue ==
                                                                    'HONNEUR') &&
                                                                (_model.ageHonneurValue ==
                                                                    'U15')) {
                                                              return MatchComponentU15Widget(
                                                                key: Key(
                                                                    'Keybrr_${listMatchCalendarIndex}_of_${listMatchCalendar.length}'),
                                                                refMatch:
                                                                    listMatchCalendarItem,
                                                              );
                                                            } else if ((_model.divisionChoiceChipsValue ==
                                                                    'HONNEUR') &&
                                                                (_model.ageHonneurValue ==
                                                                    'U13')) {
                                                              return MatchComponentU13Widget(
                                                                key: Key(
                                                                    'Key5zc_${listMatchCalendarIndex}_of_${listMatchCalendar.length}'),
                                                                refMatch:
                                                                    listMatchCalendarItem,
                                                              );
                                                            } else if ((_model.divisionChoiceChipsValue ==
                                                                    'PRE-HONNEUR') &&
                                                                (_model.ageHonneurValue ==
                                                                    'SENIOR')) {
                                                              return MatchComponentWidget(
                                                                key: Key(
                                                                    'Key5wb_${listMatchCalendarIndex}_of_${listMatchCalendar.length}'),
                                                                refMatch:
                                                                    listMatchCalendarItem,
                                                              );
                                                            } else if ((_model.divisionChoiceChipsValue ==
                                                                    'PRE-HONNEUR') &&
                                                                (_model.ageHonneurValue ==
                                                                    'U19')) {
                                                              return MatchComponentU19Widget(
                                                                key: Key(
                                                                    'Keyncd_${listMatchCalendarIndex}_of_${listMatchCalendar.length}'),
                                                                refMatch:
                                                                    listMatchCalendarItem,
                                                              );
                                                            } else if ((_model.divisionChoiceChipsValue ==
                                                                    'PRE-HONNEUR') &&
                                                                (_model.ageHonneurValue ==
                                                                    'U17')) {
                                                              return MatchComponentU17Widget(
                                                                key: Key(
                                                                    'Keyxkq_${listMatchCalendarIndex}_of_${listMatchCalendar.length}'),
                                                                refMatch:
                                                                    listMatchCalendarItem,
                                                              );
                                                            } else if ((_model.divisionChoiceChipsValue ==
                                                                    'PRE-HONNEUR') &&
                                                                (_model.ageHonneurValue ==
                                                                    'U15')) {
                                                              return MatchComponentU15Widget(
                                                                key: Key(
                                                                    'Keyiuf_${listMatchCalendarIndex}_of_${listMatchCalendar.length}'),
                                                                refMatch:
                                                                    listMatchCalendarItem,
                                                              );
                                                            } else if ((_model.divisionChoiceChipsValue ==
                                                                    'PRE-HONNEUR') &&
                                                                (_model.ageHonneurValue ==
                                                                    'U13')) {
                                                              return MatchComponentU13Widget(
                                                                key: Key(
                                                                    'Key531_${listMatchCalendarIndex}_of_${listMatchCalendar.length}'),
                                                                refMatch:
                                                                    listMatchCalendarItem,
                                                              );
                                                            } else if ((_model.divisionChoiceChipsValue ==
                                                                    'JEUNES') &&
                                                                (_model.ageHonneurValue ==
                                                                    'U19')) {
                                                              return MatchComponentU19Widget(
                                                                key: Key(
                                                                    'Key9nc_${listMatchCalendarIndex}_of_${listMatchCalendar.length}'),
                                                                refMatch:
                                                                    listMatchCalendarItem,
                                                              );
                                                            } else if ((_model.divisionChoiceChipsValue ==
                                                                    'JEUNES') &&
                                                                (_model.ageHonneurValue ==
                                                                    'U17')) {
                                                              return MatchComponentU17Widget(
                                                                key: Key(
                                                                    'Keyv98_${listMatchCalendarIndex}_of_${listMatchCalendar.length}'),
                                                                refMatch:
                                                                    listMatchCalendarItem,
                                                              );
                                                            } else if ((_model.divisionChoiceChipsValue ==
                                                                    'JEUNES') &&
                                                                (_model.ageHonneurValue ==
                                                                    'U15')) {
                                                              return MatchComponentU15Widget(
                                                                key: Key(
                                                                    'Keyejt_${listMatchCalendarIndex}_of_${listMatchCalendar.length}'),
                                                                refMatch:
                                                                    listMatchCalendarItem,
                                                              );
                                                            } else if ((_model
                                                                        .divisionChoiceChipsValue ==
                                                                    'JEUNES') &&
                                                                (_model.ageHonneurValue ==
                                                                    'U13')) {
                                                              return MatchComponentU13Widget(
                                                                key: Key(
                                                                    'Key1vy_${listMatchCalendarIndex}_of_${listMatchCalendar.length}'),
                                                                refMatch:
                                                                    listMatchCalendarItem,
                                                              );
                                                            } else {
                                                              return MatchComponentU13Widget(
                                                                key: Key(
                                                                    'Keysue_${listMatchCalendarIndex}_of_${listMatchCalendar.length}'),
                                                                refMatch:
                                                                    listMatchCalendarItem,
                                                              );
                                                            }
                                                          },
                                                        );
                                                      })
                                                          .divide(const SizedBox(
                                                              width: 10.0))
                                                          .around(const SizedBox(
                                                              width: 10.0)),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
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
                wrapWithModel(
                  model: _model.appBar2Model,
                  updateCallback: () => setState(() {}),
                  child: AppBar2Widget(
                    title: FFLocalizations.of(context).getText(
                      'p1jkpjbk' /* CALENDRIER */,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
