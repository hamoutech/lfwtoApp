import '/backend/backend.dart';
import '/components/app_bar2_widget.dart';
import '/components/equipe_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/navbar/nav_barr/nav_barr_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'championnat_classement_model.dart';
export 'championnat_classement_model.dart';

class ChampionnatClassementWidget extends StatefulWidget {
  const ChampionnatClassementWidget({super.key});

  @override
  State<ChampionnatClassementWidget> createState() =>
      _ChampionnatClassementWidgetState();
}

class _ChampionnatClassementWidgetState
    extends State<ChampionnatClassementWidget> {
  late ChampionnatClassementModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChampionnatClassementModel());

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
        title: 'championnatClassement',
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
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 90.0),
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
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 90.0, 0.0, 0.0),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 5.0,
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        5.0, 5.0, 5.0, 5.0),
                                    child: FlutterFlowChoiceChips(
                                      options: [
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          'bcfjav6v' /* HONNEUR */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          '66wjkoql' /* PRE-HONNEUR */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          'vcz6pf4e' /* RÉGIONALE */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          'b2fxjhpd' /* JEUNES */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          '9irewynl' /* ÉCOLES */,
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
                                              fontSize: 13.0,
                                              letterSpacing: 1.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                        iconColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        iconSize: 0.0,
                                        elevation: 0.0,
                                        borderColor: const Color(0x9AF6EB82),
                                        borderWidth: 0.0,
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
                                              fontSize: 13.0,
                                              letterSpacing: 1.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                        iconColor: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        iconSize: 0.0,
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
                                      initialized: _model.divisionValue != null,
                                      alignment: WrapAlignment.start,
                                      controller:
                                          _model.divisionValueController ??=
                                              FormFieldController<List<String>>(
                                        [
                                          FFLocalizations.of(context).getText(
                                            'im9awivw' /* HONNEUR */,
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
                                      if (_model.divisionValue == 'JEUNES') {
                                        return FlutterFlowChoiceChips(
                                          options: [
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              'dnjx2m52' /* GROUPE 01 */,
                                            )),
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              '6nsh7yxx' /* GROUPE 02 */,
                                            )),
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              'errpyox2' /* GROUPE 03 */,
                                            )),
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              'qq5a9lyb' /* GROUPE 04 */,
                                            )),
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              '1a8ewan6' /* GROUPE 05 */,
                                            )),
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              'cytpjhig' /* GROUPE 06 */,
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
                                                'lvae7jpt' /* GROUPE 01 */,
                                              )
                                            ],
                                          ),
                                          wrapped: false,
                                        );
                                      } else if (_model.divisionValue ==
                                          'ÉCOLES') {
                                        return FlutterFlowChoiceChips(
                                          options: [
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              'zaasauq9' /* GROUPE 01 */,
                                            )),
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              '9jwmvzex' /* GROUPE 02 */,
                                            )),
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              'zd8y9vwx' /* GROUPE 03 */,
                                            )),
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              'f0spx9qt' /* GROUPE 04 */,
                                            )),
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              'e7fmpmh0' /* GROUPE 05 */,
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
                                                '6sddzwzq' /* GROUPE 01 */,
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
                                      if (_model.divisionValue == 'HONNEUR') {
                                        return Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 5.0),
                                          child: FlutterFlowChoiceChips(
                                            options: [
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                '05fr0jvo' /* SENIOR */,
                                              )),
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'cdp517rg' /* U19 */,
                                              )),
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'ifxuztoi' /* U17 */,
                                              )),
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                '7qrer5pb' /* U15 */,
                                              )),
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'ww7qnpie' /* U13 */,
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
                                                  'n9bc4yt8' /* SENIOR */,
                                                )
                                              ],
                                            ),
                                            wrapped: false,
                                          ),
                                        );
                                      } else if (_model.divisionValue ==
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
                                                'jklstz4z' /* SENIOR */,
                                              )),
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'qtymw2zz' /* U19 */,
                                              )),
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                '5qi3ryaf' /* U17 */,
                                              )),
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                '3k8bkqws' /* U15 */,
                                              )),
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'lrwr1gir' /* U13 */,
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
                                                  '130sdt1x' /* SENIOR */,
                                                )
                                              ],
                                            ),
                                            wrapped: false,
                                          ),
                                        );
                                      } else if (_model.divisionValue ==
                                          'JEUNES') {
                                        return FlutterFlowChoiceChips(
                                          options: [
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              '986j3p25' /* U19 */,
                                            )),
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              'qo6auswy' /* U17 */,
                                            )),
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              '436zow4t' /* U15 */,
                                            )),
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              'fpwg1qkp' /* U13 */,
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
                                                '89lxfgf5' /* U19 */,
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
                        if (_model.divisionValue != 'RÉGIONALE')
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                5.0, 15.0, 5.0, 5.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Material(
                                  color: Colors.transparent,
                                  elevation: 10.0,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0.0),
                                      bottomRight: Radius.circular(0.0),
                                      topLeft: Radius.circular(5.0),
                                      topRight: Radius.circular(5.0),
                                    ),
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.3,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.04,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).info,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(5.0),
                                        topRight: Radius.circular(5.0),
                                      ),
                                    ),
                                    child: FlutterFlowDropDown<String>(
                                      controller:
                                          _model.dropDownValueController ??=
                                              FormFieldController<String>(null),
                                      options: [
                                        FFLocalizations.of(context).getText(
                                          'v6xb9fc6' /* 1 ÈRE JOURNÉE */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'ev0z2r25' /* 2 ÈME JOURNÉE */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'gnrubo35' /* 3 ÈME JOURNÉE */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          't2una1rm' /* 4 ÈME JOURNÉE */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'blnz19p1' /* 5 ÈME JOURNÉE */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '5vpm9xls' /* 6 ÈME JOURNÉE */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'th2itaoo' /* 7 ÈME JOURNÉE */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'gbeh00a2' /* 8 ÈME JOURNÉE */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'f37gnsji' /* 9 ÈME JOURNÉE */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'k6oakfmc' /* 10 ÈME JOURNÉE */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '1f6yo9g8' /* 11 ÈME JOURNÉE */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'r4bygdy8' /* 12 ÈME JOURNÉE */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'kj9xa15x' /* 13 ÈME JOURNÉE */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'rjr174rs' /* 14 ÈME JOURNÉE */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'uy5dnrw9' /* 15 ÈME JOURNÉE */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'qanjoev7' /* 16 ÈME JOURNÉE */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'nekcpdii' /* 17 ÈME JOURNÉE */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'k9mp6z95' /* 18 ÈME JOURNÉE */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'f8ini7dt' /* 19 ÈME JOURNÉE */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'bx3zzc8u' /* 20 ÈME JOURNÉE */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'moi7jg8j' /* 22 ÈME JOURNÉE */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'zzeyzi25' /* 23 ÈME JOURNÉE */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'jtzy9y4p' /* 24 ÈME JOURNÉE */,
                                        )
                                      ],
                                      onChanged: (val) => setState(
                                          () => _model.dropDownValue = val),
                                      width: 300.0,
                                      height: 50.0,
                                      searchHintTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Bebas Neue',
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                              ),
                                      searchTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Bebas Neue',
                                                letterSpacing: 0.0,
                                              ),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Bebas Neue',
                                            color: Colors.black,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'twi0jkwo' /* JOURNÉE */,
                                      ),
                                      searchHintText:
                                          FFLocalizations.of(context).getText(
                                        'j5a5a9rc' /* Search for an item... */,
                                      ),
                                      icon: const Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: Colors.black,
                                        size: 24.0,
                                      ),
                                      fillColor:
                                          FlutterFlowTheme.of(context).info,
                                      elevation: 2.0,
                                      borderColor: Colors.transparent,
                                      borderWidth: 2.0,
                                      borderRadius: 8.0,
                                      margin: const EdgeInsets.all(0.0),
                                      hidesUnderline: true,
                                      isSearchable: true,
                                      isMultiSelect: false,
                                    ),
                                  ),
                                ),
                                Material(
                                  color: Colors.transparent,
                                  elevation: 10.0,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0.0),
                                      bottomRight: Radius.circular(0.0),
                                      topLeft: Radius.circular(5.0),
                                      topRight: Radius.circular(5.0),
                                    ),
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.62,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.04,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).info,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(5.0),
                                        topRight: Radius.circular(5.0),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              _model.dropDownValue,
                                              'JOURNEE',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Bebas Neue',
                                                  color: const Color(0xFF020101),
                                                  fontSize: 11.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w100,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'g1umxjvs' /* / */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Bebas Neue',
                                                color: Colors.black,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            _model.divisionValue,
                                            'HONNEUR',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Bebas Neue',
                                                color: Colors.black,
                                                fontSize: 11.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        if (_model.divisionValue != 'ÉCOLES')
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'z7x9vpt5' /* / */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Bebas Neue',
                                                  color: Colors.black,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        if (_model.divisionValue != 'ÉCOLES')
                                          Text(
                                            valueOrDefault<String>(
                                              (_model.divisionValue ==
                                                          'HONNEUR') ||
                                                      (_model.divisionValue ==
                                                          'PRE-HONNEUR')
                                                  ? _model.ageHonneurValue
                                                  : _model.ageJeunesValue,
                                              'SENIOR',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Bebas Neue',
                                                  color: Colors.black,
                                                  fontSize: 11.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        if ((_model.divisionValue ==
                                                'JEUNES') ||
                                            (_model.divisionValue == 'ÉCOLES'))
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '14t7q7wc' /* / */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Bebas Neue',
                                                  color: Colors.black,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        if ((_model.divisionValue ==
                                                'JEUNES') ||
                                            (_model.divisionValue == 'ÉCOLES'))
                                          AutoSizeText(
                                            valueOrDefault<String>(
                                              _model.divisionValue == 'JEUNES'
                                                  ? _model.groupesJeunesValue
                                                  : _model.groupesEcolesValue,
                                              'GROUPE 01',
                                            ).maybeHandleOverflow(maxChars: 12),
                                            minFontSize: 8.0,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Bebas Neue',
                                                  color: Colors.black,
                                                  fontSize: 11.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        Expanded(
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            child: Builder(
                              builder: (context) {
                                if (_model.divisionValue != 'RÉGIONALE') {
                                  return Container(
                                    width: double.infinity,
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
                                    child: Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, -1.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 5.0, 0.0),
                                        child: SingleChildScrollView(
                                          primary: false,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Container(
                                                  decoration: const BoxDecoration(),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.09,
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.04,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .info,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.4,
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.04,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .info,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.09,
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.04,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .info,
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
                                                              'evuhqpp2' /* PTS */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Bebas Neue',
                                                                  color: Colors
                                                                      .black,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w100,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.09,
                                                          height:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .height *
                                                                  0.04,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .info,
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
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
                                                                'y8m7tko7' /* J */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Bebas Neue',
                                                                    color: Colors
                                                                        .black,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w100,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.09,
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.04,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .info,
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
                                                              'gfxfoy7q' /* B.P */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Bebas Neue',
                                                                  color: Colors
                                                                      .black,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w100,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.09,
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.04,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .info,
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
                                                              '8wud3kzx' /* B.C */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Bebas Neue',
                                                                  color: Colors
                                                                      .black,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w100,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.09,
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.04,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .info,
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
                                                              'mb0xiuqy' /* DIF */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Bebas Neue',
                                                                  color: Colors
                                                                      .black,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w100,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Builder(
                                                builder: (context) {
                                                  if ((_model.divisionValue == 'HONNEUR') &&
                                                      (_model.ageHonneurValue ==
                                                          'SENIOR')) {
                                                    return StreamBuilder<
                                                        List<EquipesRecord>>(
                                                      stream:
                                                          queryEquipesRecord(
                                                        queryBuilder: (equipesRecord) =>
                                                            equipesRecord
                                                                .where(
                                                                  'division',
                                                                  isEqualTo: _model
                                                                      .divisionValue,
                                                                )
                                                                .where(
                                                                  'senior',
                                                                  isEqualTo:
                                                                      true,
                                                                )
                                                                .orderBy(
                                                                    'champ_info.points',
                                                                    descending:
                                                                        true)
                                                                .orderBy(
                                                                    'champ_info.diff',
                                                                    descending:
                                                                        true),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
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
                                                                  Color(
                                                                      0xFF265631),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<EquipesRecord>
                                                            listHonneurSeniorEquipesRecordList =
                                                            snapshot.data!;

                                                        return ListView
                                                            .separated(
                                                          padding: const EdgeInsets
                                                              .fromLTRB(
                                                            0,
                                                            1.0,
                                                            0,
                                                            15.0,
                                                          ),
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              listHonneurSeniorEquipesRecordList
                                                                  .length,
                                                          separatorBuilder: (_,
                                                                  __) =>
                                                              const SizedBox(
                                                                  height: 0.2),
                                                          itemBuilder: (context,
                                                              listHonneurSeniorIndex) {
                                                            final listHonneurSeniorEquipesRecord =
                                                                listHonneurSeniorEquipesRecordList[
                                                                    listHonneurSeniorIndex];
                                                            return EquipeWidget(
                                                              key: Key(
                                                                  'Key5z1_${listHonneurSeniorIndex}_of_${listHonneurSeniorEquipesRecordList.length}'),
                                                              index:
                                                                  listHonneurSeniorIndex,
                                                              logo:
                                                                  listHonneurSeniorEquipesRecord
                                                                      .logo,
                                                              nomequipe:
                                                                  listHonneurSeniorEquipesRecord
                                                                      .nomEquipe,
                                                              point:
                                                                  listHonneurSeniorEquipesRecord
                                                                      .champInfo
                                                                      .points,
                                                              matchjoues:
                                                                  listHonneurSeniorEquipesRecord
                                                                      .champInfo
                                                                      .matchJoue,
                                                              butspour:
                                                                  listHonneurSeniorEquipesRecord
                                                                      .champInfo
                                                                      .butPour,
                                                              butscontre:
                                                                  listHonneurSeniorEquipesRecord
                                                                      .champInfo
                                                                      .butContre,
                                                              differnece:
                                                                  listHonneurSeniorEquipesRecord
                                                                      .champInfo
                                                                      .diff,
                                                            );
                                                          },
                                                        );
                                                      },
                                                    );
                                                  } else if ((_model.divisionValue == 'HONNEUR') &&
                                                      (_model.ageHonneurValue ==
                                                          'U19')) {
                                                    return StreamBuilder<
                                                        List<EquipesRecord>>(
                                                      stream:
                                                          queryEquipesRecord(
                                                        queryBuilder: (equipesRecord) =>
                                                            equipesRecord
                                                                .where(
                                                                  'division',
                                                                  isEqualTo: _model
                                                                      .divisionValue,
                                                                )
                                                                .where(
                                                                  'U19',
                                                                  isEqualTo:
                                                                      true,
                                                                )
                                                                .orderBy(
                                                                    'champInfo19.points',
                                                                    descending:
                                                                        true)
                                                                .orderBy(
                                                                    'champInfo19.diff',
                                                                    descending:
                                                                        true),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
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
                                                                  Color(
                                                                      0xFF265631),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<EquipesRecord>
                                                            listHonneurU19EquipesRecordList =
                                                            snapshot.data!;

                                                        return ListView
                                                            .separated(
                                                          padding: const EdgeInsets
                                                              .fromLTRB(
                                                            0,
                                                            1.0,
                                                            0,
                                                            15.0,
                                                          ),
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              listHonneurU19EquipesRecordList
                                                                  .length,
                                                          separatorBuilder: (_,
                                                                  __) =>
                                                              const SizedBox(
                                                                  height: 0.2),
                                                          itemBuilder: (context,
                                                              listHonneurU19Index) {
                                                            final listHonneurU19EquipesRecord =
                                                                listHonneurU19EquipesRecordList[
                                                                    listHonneurU19Index];
                                                            return EquipeWidget(
                                                              key: Key(
                                                                  'Keyill_${listHonneurU19Index}_of_${listHonneurU19EquipesRecordList.length}'),
                                                              index:
                                                                  listHonneurU19Index,
                                                              logo:
                                                                  listHonneurU19EquipesRecord
                                                                      .logo,
                                                              nomequipe:
                                                                  listHonneurU19EquipesRecord
                                                                      .nomEquipe,
                                                              point:
                                                                  listHonneurU19EquipesRecord
                                                                      .champInfo19
                                                                      .points,
                                                              matchjoues:
                                                                  listHonneurU19EquipesRecord
                                                                      .champInfo19
                                                                      .matchJoue,
                                                              butspour:
                                                                  listHonneurU19EquipesRecord
                                                                      .champInfo19
                                                                      .butPour,
                                                              butscontre:
                                                                  listHonneurU19EquipesRecord
                                                                      .champInfo19
                                                                      .butContre,
                                                              differnece:
                                                                  listHonneurU19EquipesRecord
                                                                      .champInfo19
                                                                      .diff,
                                                            );
                                                          },
                                                        );
                                                      },
                                                    );
                                                  } else if ((_model.divisionValue == 'HONNEUR') &&
                                                      (_model.ageHonneurValue ==
                                                          'U17')) {
                                                    return StreamBuilder<
                                                        List<EquipesRecord>>(
                                                      stream:
                                                          queryEquipesRecord(
                                                        queryBuilder: (equipesRecord) =>
                                                            equipesRecord
                                                                .where(
                                                                  'division',
                                                                  isEqualTo: _model
                                                                      .divisionValue,
                                                                )
                                                                .where(
                                                                  'U17',
                                                                  isEqualTo:
                                                                      true,
                                                                )
                                                                .orderBy(
                                                                    'champInfo17.points',
                                                                    descending:
                                                                        true)
                                                                .orderBy(
                                                                    'champInfo17.diff',
                                                                    descending:
                                                                        true),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
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
                                                                  Color(
                                                                      0xFF265631),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<EquipesRecord>
                                                            listHonneurU17EquipesRecordList =
                                                            snapshot.data!;

                                                        return ListView
                                                            .separated(
                                                          padding: const EdgeInsets
                                                              .fromLTRB(
                                                            0,
                                                            1.0,
                                                            0,
                                                            15.0,
                                                          ),
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              listHonneurU17EquipesRecordList
                                                                  .length,
                                                          separatorBuilder: (_,
                                                                  __) =>
                                                              const SizedBox(
                                                                  height: 0.2),
                                                          itemBuilder: (context,
                                                              listHonneurU17Index) {
                                                            final listHonneurU17EquipesRecord =
                                                                listHonneurU17EquipesRecordList[
                                                                    listHonneurU17Index];
                                                            return EquipeWidget(
                                                              key: Key(
                                                                  'Keyqg6_${listHonneurU17Index}_of_${listHonneurU17EquipesRecordList.length}'),
                                                              index:
                                                                  listHonneurU17Index,
                                                              logo:
                                                                  listHonneurU17EquipesRecord
                                                                      .logo,
                                                              nomequipe:
                                                                  listHonneurU17EquipesRecord
                                                                      .nomEquipe,
                                                              point:
                                                                  listHonneurU17EquipesRecord
                                                                      .champInfo17
                                                                      .points,
                                                              matchjoues:
                                                                  listHonneurU17EquipesRecord
                                                                      .champInfo17
                                                                      .matchJoue,
                                                              butspour:
                                                                  listHonneurU17EquipesRecord
                                                                      .champInfo17
                                                                      .butPour,
                                                              butscontre:
                                                                  listHonneurU17EquipesRecord
                                                                      .champInfo17
                                                                      .butContre,
                                                              differnece:
                                                                  listHonneurU17EquipesRecord
                                                                      .champInfo17
                                                                      .diff,
                                                            );
                                                          },
                                                        );
                                                      },
                                                    );
                                                  } else if ((_model.divisionValue == 'HONNEUR') &&
                                                      (_model.ageHonneurValue ==
                                                          'U15')) {
                                                    return StreamBuilder<
                                                        List<EquipesRecord>>(
                                                      stream:
                                                          queryEquipesRecord(
                                                        queryBuilder: (equipesRecord) =>
                                                            equipesRecord
                                                                .where(
                                                                  'division',
                                                                  isEqualTo:
                                                                      'HONNEUR',
                                                                )
                                                                .where(
                                                                  'U15',
                                                                  isEqualTo:
                                                                      true,
                                                                )
                                                                .orderBy(
                                                                    'champInfo15.points',
                                                                    descending:
                                                                        true)
                                                                .orderBy(
                                                                    'champInfo15.diff',
                                                                    descending:
                                                                        true),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
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
                                                                  Color(
                                                                      0xFF265631),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<EquipesRecord>
                                                            listHonneurU15EquipesRecordList =
                                                            snapshot.data!;

                                                        return ListView
                                                            .separated(
                                                          padding: const EdgeInsets
                                                              .fromLTRB(
                                                            0,
                                                            1.0,
                                                            0,
                                                            15.0,
                                                          ),
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              listHonneurU15EquipesRecordList
                                                                  .length,
                                                          separatorBuilder: (_,
                                                                  __) =>
                                                              const SizedBox(
                                                                  height: 0.2),
                                                          itemBuilder: (context,
                                                              listHonneurU15Index) {
                                                            final listHonneurU15EquipesRecord =
                                                                listHonneurU15EquipesRecordList[
                                                                    listHonneurU15Index];
                                                            return EquipeWidget(
                                                              key: Key(
                                                                  'Key41i_${listHonneurU15Index}_of_${listHonneurU15EquipesRecordList.length}'),
                                                              index:
                                                                  listHonneurU15Index,
                                                              logo:
                                                                  listHonneurU15EquipesRecord
                                                                      .logo,
                                                              nomequipe:
                                                                  listHonneurU15EquipesRecord
                                                                      .nomEquipe,
                                                              point:
                                                                  listHonneurU15EquipesRecord
                                                                      .champInfo15
                                                                      .points,
                                                              matchjoues:
                                                                  listHonneurU15EquipesRecord
                                                                      .champInfo15
                                                                      .matchJoue,
                                                              butspour:
                                                                  listHonneurU15EquipesRecord
                                                                      .champInfo15
                                                                      .butPour,
                                                              butscontre:
                                                                  listHonneurU15EquipesRecord
                                                                      .champInfo15
                                                                      .butContre,
                                                              differnece:
                                                                  listHonneurU15EquipesRecord
                                                                      .champInfo15
                                                                      .diff,
                                                            );
                                                          },
                                                        );
                                                      },
                                                    );
                                                  } else if ((_model.divisionValue == 'HONNEUR') &&
                                                      (_model.ageHonneurValue ==
                                                          'U13')) {
                                                    return StreamBuilder<
                                                        List<EquipesRecord>>(
                                                      stream:
                                                          queryEquipesRecord(
                                                        queryBuilder: (equipesRecord) =>
                                                            equipesRecord
                                                                .where(
                                                                  'division',
                                                                  isEqualTo: _model
                                                                      .divisionValue,
                                                                )
                                                                .where(
                                                                  'U13',
                                                                  isEqualTo:
                                                                      true,
                                                                )
                                                                .orderBy(
                                                                    'champinfo13.points',
                                                                    descending:
                                                                        true)
                                                                .orderBy(
                                                                    'champinfo13.diff',
                                                                    descending:
                                                                        true),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
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
                                                                  Color(
                                                                      0xFF265631),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<EquipesRecord>
                                                            listHonneurU13EquipesRecordList =
                                                            snapshot.data!;

                                                        return ListView
                                                            .separated(
                                                          padding: const EdgeInsets
                                                              .fromLTRB(
                                                            0,
                                                            1.0,
                                                            0,
                                                            15.0,
                                                          ),
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              listHonneurU13EquipesRecordList
                                                                  .length,
                                                          separatorBuilder: (_,
                                                                  __) =>
                                                              const SizedBox(
                                                                  height: 0.2),
                                                          itemBuilder: (context,
                                                              listHonneurU13Index) {
                                                            final listHonneurU13EquipesRecord =
                                                                listHonneurU13EquipesRecordList[
                                                                    listHonneurU13Index];
                                                            return EquipeWidget(
                                                              key: Key(
                                                                  'Key54f_${listHonneurU13Index}_of_${listHonneurU13EquipesRecordList.length}'),
                                                              index:
                                                                  listHonneurU13Index,
                                                              logo:
                                                                  listHonneurU13EquipesRecord
                                                                      .logo,
                                                              nomequipe:
                                                                  listHonneurU13EquipesRecord
                                                                      .nomEquipe,
                                                              point:
                                                                  listHonneurU13EquipesRecord
                                                                      .champinfo13
                                                                      .points,
                                                              matchjoues:
                                                                  listHonneurU13EquipesRecord
                                                                      .champinfo13
                                                                      .matchJoue,
                                                              butspour:
                                                                  listHonneurU13EquipesRecord
                                                                      .champinfo13
                                                                      .butPour,
                                                              butscontre:
                                                                  listHonneurU13EquipesRecord
                                                                      .champinfo13
                                                                      .butContre,
                                                              differnece:
                                                                  listHonneurU13EquipesRecord
                                                                      .champinfo13
                                                                      .diff,
                                                            );
                                                          },
                                                        );
                                                      },
                                                    );
                                                  } else if ((_model.divisionValue ==
                                                          'PRE-HONNEUR') &&
                                                      (_model.agePHValue ==
                                                          'SENIOR')) {
                                                    return StreamBuilder<
                                                        List<EquipesRecord>>(
                                                      stream:
                                                          queryEquipesRecord(
                                                        queryBuilder: (equipesRecord) =>
                                                            equipesRecord
                                                                .where(
                                                                  'division',
                                                                  isEqualTo: _model
                                                                      .divisionValue,
                                                                )
                                                                .where(
                                                                  'senior',
                                                                  isEqualTo:
                                                                      true,
                                                                )
                                                                .orderBy(
                                                                    'champ_info.points',
                                                                    descending:
                                                                        true)
                                                                .orderBy(
                                                                    'champ_info.diff',
                                                                    descending:
                                                                        true),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
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
                                                                  Color(
                                                                      0xFF265631),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<EquipesRecord>
                                                            listPreHonneurSeniorEquipesRecordList =
                                                            snapshot.data!;

                                                        return ListView
                                                            .separated(
                                                          padding: const EdgeInsets
                                                              .fromLTRB(
                                                            0,
                                                            1.0,
                                                            0,
                                                            15.0,
                                                          ),
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              listPreHonneurSeniorEquipesRecordList
                                                                  .length,
                                                          separatorBuilder: (_,
                                                                  __) =>
                                                              const SizedBox(
                                                                  height: 0.2),
                                                          itemBuilder: (context,
                                                              listPreHonneurSeniorIndex) {
                                                            final listPreHonneurSeniorEquipesRecord =
                                                                listPreHonneurSeniorEquipesRecordList[
                                                                    listPreHonneurSeniorIndex];
                                                            return EquipeWidget(
                                                              key: Key(
                                                                  'Keyksv_${listPreHonneurSeniorIndex}_of_${listPreHonneurSeniorEquipesRecordList.length}'),
                                                              index:
                                                                  listPreHonneurSeniorIndex,
                                                              logo:
                                                                  listPreHonneurSeniorEquipesRecord
                                                                      .logo,
                                                              nomequipe:
                                                                  listPreHonneurSeniorEquipesRecord
                                                                      .nomEquipe,
                                                              point:
                                                                  listPreHonneurSeniorEquipesRecord
                                                                      .champInfo
                                                                      .points,
                                                              matchjoues:
                                                                  listPreHonneurSeniorEquipesRecord
                                                                      .champInfo
                                                                      .matchJoue,
                                                              butspour:
                                                                  listPreHonneurSeniorEquipesRecord
                                                                      .champInfo
                                                                      .butPour,
                                                              butscontre:
                                                                  listPreHonneurSeniorEquipesRecord
                                                                      .champInfo
                                                                      .butContre,
                                                              differnece:
                                                                  listPreHonneurSeniorEquipesRecord
                                                                      .champInfo
                                                                      .diff,
                                                            );
                                                          },
                                                        );
                                                      },
                                                    );
                                                  } else if ((_model.divisionValue ==
                                                          'PRE-HONNEUR') &&
                                                      (_model.agePHValue ==
                                                          'U19')) {
                                                    return StreamBuilder<
                                                        List<EquipesRecord>>(
                                                      stream:
                                                          queryEquipesRecord(
                                                        queryBuilder: (equipesRecord) =>
                                                            equipesRecord
                                                                .where(
                                                                  'division',
                                                                  isEqualTo: _model
                                                                      .divisionValue,
                                                                )
                                                                .where(
                                                                  'U19',
                                                                  isEqualTo:
                                                                      true,
                                                                )
                                                                .orderBy(
                                                                    'champInfo19.points',
                                                                    descending:
                                                                        true)
                                                                .orderBy(
                                                                    'champInfo19.diff',
                                                                    descending:
                                                                        true),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
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
                                                                  Color(
                                                                      0xFF265631),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<EquipesRecord>
                                                            listPreHonneurU19EquipesRecordList =
                                                            snapshot.data!;

                                                        return ListView
                                                            .separated(
                                                          padding: const EdgeInsets
                                                              .fromLTRB(
                                                            0,
                                                            1.0,
                                                            0,
                                                            15.0,
                                                          ),
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              listPreHonneurU19EquipesRecordList
                                                                  .length,
                                                          separatorBuilder: (_,
                                                                  __) =>
                                                              const SizedBox(
                                                                  height: 0.2),
                                                          itemBuilder: (context,
                                                              listPreHonneurU19Index) {
                                                            final listPreHonneurU19EquipesRecord =
                                                                listPreHonneurU19EquipesRecordList[
                                                                    listPreHonneurU19Index];
                                                            return EquipeWidget(
                                                              key: Key(
                                                                  'Key8to_${listPreHonneurU19Index}_of_${listPreHonneurU19EquipesRecordList.length}'),
                                                              index:
                                                                  listPreHonneurU19Index,
                                                              logo:
                                                                  listPreHonneurU19EquipesRecord
                                                                      .logo,
                                                              nomequipe:
                                                                  listPreHonneurU19EquipesRecord
                                                                      .nomEquipe,
                                                              point:
                                                                  listPreHonneurU19EquipesRecord
                                                                      .champInfo19
                                                                      .points,
                                                              matchjoues:
                                                                  listPreHonneurU19EquipesRecord
                                                                      .champInfo19
                                                                      .matchJoue,
                                                              butspour:
                                                                  listPreHonneurU19EquipesRecord
                                                                      .champInfo19
                                                                      .butPour,
                                                              butscontre:
                                                                  listPreHonneurU19EquipesRecord
                                                                      .champInfo19
                                                                      .butContre,
                                                              differnece:
                                                                  listPreHonneurU19EquipesRecord
                                                                      .champInfo19
                                                                      .diff,
                                                            );
                                                          },
                                                        );
                                                      },
                                                    );
                                                  } else if ((_model.divisionValue ==
                                                          'PRE-HONNEUR') &&
                                                      (_model.agePHValue ==
                                                          'U17')) {
                                                    return StreamBuilder<
                                                        List<EquipesRecord>>(
                                                      stream:
                                                          queryEquipesRecord(
                                                        queryBuilder: (equipesRecord) =>
                                                            equipesRecord
                                                                .where(
                                                                  'division',
                                                                  isEqualTo: _model
                                                                      .divisionValue,
                                                                )
                                                                .where(
                                                                  'U17',
                                                                  isEqualTo:
                                                                      true,
                                                                )
                                                                .orderBy(
                                                                    'champInfo17.points',
                                                                    descending:
                                                                        true)
                                                                .orderBy(
                                                                    'champInfo17.diff',
                                                                    descending:
                                                                        true),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
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
                                                                  Color(
                                                                      0xFF265631),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<EquipesRecord>
                                                            listPreHonneurU17EquipesRecordList =
                                                            snapshot.data!;

                                                        return ListView
                                                            .separated(
                                                          padding: const EdgeInsets
                                                              .fromLTRB(
                                                            0,
                                                            1.0,
                                                            0,
                                                            15.0,
                                                          ),
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              listPreHonneurU17EquipesRecordList
                                                                  .length,
                                                          separatorBuilder: (_,
                                                                  __) =>
                                                              const SizedBox(
                                                                  height: 0.2),
                                                          itemBuilder: (context,
                                                              listPreHonneurU17Index) {
                                                            final listPreHonneurU17EquipesRecord =
                                                                listPreHonneurU17EquipesRecordList[
                                                                    listPreHonneurU17Index];
                                                            return EquipeWidget(
                                                              key: Key(
                                                                  'Keyy4i_${listPreHonneurU17Index}_of_${listPreHonneurU17EquipesRecordList.length}'),
                                                              index:
                                                                  listPreHonneurU17Index,
                                                              logo:
                                                                  listPreHonneurU17EquipesRecord
                                                                      .logo,
                                                              nomequipe:
                                                                  listPreHonneurU17EquipesRecord
                                                                      .nomEquipe,
                                                              point:
                                                                  listPreHonneurU17EquipesRecord
                                                                      .champInfo17
                                                                      .points,
                                                              matchjoues:
                                                                  listPreHonneurU17EquipesRecord
                                                                      .champInfo17
                                                                      .matchJoue,
                                                              butspour:
                                                                  listPreHonneurU17EquipesRecord
                                                                      .champInfo17
                                                                      .butPour,
                                                              butscontre:
                                                                  listPreHonneurU17EquipesRecord
                                                                      .champInfo17
                                                                      .butContre,
                                                              differnece:
                                                                  listPreHonneurU17EquipesRecord
                                                                      .champInfo17
                                                                      .diff,
                                                            );
                                                          },
                                                        );
                                                      },
                                                    );
                                                  } else if ((_model.divisionValue ==
                                                          'PRE-HONNEUR') &&
                                                      (_model.agePHValue ==
                                                          'U15')) {
                                                    return StreamBuilder<
                                                        List<EquipesRecord>>(
                                                      stream:
                                                          queryEquipesRecord(
                                                        queryBuilder: (equipesRecord) =>
                                                            equipesRecord
                                                                .where(
                                                                  'division',
                                                                  isEqualTo:
                                                                      'PRE-HONNEUR',
                                                                )
                                                                .where(
                                                                  'U15',
                                                                  isEqualTo:
                                                                      true,
                                                                )
                                                                .orderBy(
                                                                    'champInfo15.points',
                                                                    descending:
                                                                        true)
                                                                .orderBy(
                                                                    'champInfo15.diff',
                                                                    descending:
                                                                        true),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
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
                                                                  Color(
                                                                      0xFF265631),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<EquipesRecord>
                                                            listPreHonneurU15EquipesRecordList =
                                                            snapshot.data!;

                                                        return ListView
                                                            .separated(
                                                          padding: const EdgeInsets
                                                              .fromLTRB(
                                                            0,
                                                            1.0,
                                                            0,
                                                            15.0,
                                                          ),
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              listPreHonneurU15EquipesRecordList
                                                                  .length,
                                                          separatorBuilder: (_,
                                                                  __) =>
                                                              const SizedBox(
                                                                  height: 0.2),
                                                          itemBuilder: (context,
                                                              listPreHonneurU15Index) {
                                                            final listPreHonneurU15EquipesRecord =
                                                                listPreHonneurU15EquipesRecordList[
                                                                    listPreHonneurU15Index];
                                                            return EquipeWidget(
                                                              key: Key(
                                                                  'Keyu1h_${listPreHonneurU15Index}_of_${listPreHonneurU15EquipesRecordList.length}'),
                                                              index:
                                                                  listPreHonneurU15Index,
                                                              logo:
                                                                  listPreHonneurU15EquipesRecord
                                                                      .logo,
                                                              nomequipe:
                                                                  listPreHonneurU15EquipesRecord
                                                                      .nomEquipe,
                                                              point:
                                                                  listPreHonneurU15EquipesRecord
                                                                      .champInfo15
                                                                      .points,
                                                              matchjoues:
                                                                  listPreHonneurU15EquipesRecord
                                                                      .champInfo15
                                                                      .matchJoue,
                                                              butspour:
                                                                  listPreHonneurU15EquipesRecord
                                                                      .champInfo15
                                                                      .butPour,
                                                              butscontre:
                                                                  listPreHonneurU15EquipesRecord
                                                                      .champInfo15
                                                                      .butContre,
                                                              differnece:
                                                                  listPreHonneurU15EquipesRecord
                                                                      .champInfo15
                                                                      .diff,
                                                            );
                                                          },
                                                        );
                                                      },
                                                    );
                                                  } else if ((_model.divisionValue ==
                                                          'PRE-HONNEUR') &&
                                                      (_model.agePHValue == 'U13')) {
                                                    return StreamBuilder<
                                                        List<EquipesRecord>>(
                                                      stream:
                                                          queryEquipesRecord(
                                                        queryBuilder: (equipesRecord) =>
                                                            equipesRecord
                                                                .where(
                                                                  'division',
                                                                  isEqualTo: _model
                                                                      .divisionValue,
                                                                )
                                                                .where(
                                                                  'U13',
                                                                  isEqualTo:
                                                                      true,
                                                                )
                                                                .orderBy(
                                                                    'champinfo13.points',
                                                                    descending:
                                                                        true)
                                                                .orderBy(
                                                                    'champinfo13.diff',
                                                                    descending:
                                                                        true),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
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
                                                                  Color(
                                                                      0xFF265631),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<EquipesRecord>
                                                            listPreHonneurU13EquipesRecordList =
                                                            snapshot.data!;

                                                        return ListView
                                                            .separated(
                                                          padding: const EdgeInsets
                                                              .fromLTRB(
                                                            0,
                                                            1.0,
                                                            0,
                                                            15.0,
                                                          ),
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              listPreHonneurU13EquipesRecordList
                                                                  .length,
                                                          separatorBuilder: (_,
                                                                  __) =>
                                                              const SizedBox(
                                                                  height: 0.2),
                                                          itemBuilder: (context,
                                                              listPreHonneurU13Index) {
                                                            final listPreHonneurU13EquipesRecord =
                                                                listPreHonneurU13EquipesRecordList[
                                                                    listPreHonneurU13Index];
                                                            return EquipeWidget(
                                                              key: Key(
                                                                  'Keyrjr_${listPreHonneurU13Index}_of_${listPreHonneurU13EquipesRecordList.length}'),
                                                              index:
                                                                  listPreHonneurU13Index,
                                                              logo:
                                                                  listPreHonneurU13EquipesRecord
                                                                      .logo,
                                                              nomequipe:
                                                                  listPreHonneurU13EquipesRecord
                                                                      .nomEquipe,
                                                              point:
                                                                  listPreHonneurU13EquipesRecord
                                                                      .champinfo13
                                                                      .points,
                                                              matchjoues:
                                                                  listPreHonneurU13EquipesRecord
                                                                      .champinfo13
                                                                      .matchJoue,
                                                              butspour:
                                                                  listPreHonneurU13EquipesRecord
                                                                      .champinfo13
                                                                      .butPour,
                                                              butscontre:
                                                                  listPreHonneurU13EquipesRecord
                                                                      .champinfo13
                                                                      .butContre,
                                                              differnece:
                                                                  listPreHonneurU13EquipesRecord
                                                                      .champinfo13
                                                                      .diff,
                                                            );
                                                          },
                                                        );
                                                      },
                                                    );
                                                  } else if ((_model.divisionValue == 'JEUNES') && (_model.ageJeunesValue == 'U19')) {
                                                    return StreamBuilder<
                                                        List<EquipesRecord>>(
                                                      stream:
                                                          queryEquipesRecord(
                                                        queryBuilder: (equipesRecord) =>
                                                            equipesRecord
                                                                .where(
                                                                  'division',
                                                                  isEqualTo: _model
                                                                      .divisionValue,
                                                                )
                                                                .where(
                                                                  'U19',
                                                                  isEqualTo:
                                                                      true,
                                                                )
                                                                .where(
                                                                  'groupe',
                                                                  isEqualTo: _model
                                                                      .groupesJeunesValue,
                                                                )
                                                                .orderBy(
                                                                    'champInfo19.points',
                                                                    descending:
                                                                        true)
                                                                .orderBy(
                                                                    'champInfo19.diff',
                                                                    descending:
                                                                        true),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
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
                                                                  Color(
                                                                      0xFF265631),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<EquipesRecord>
                                                            listJeunesU19EquipesRecordList =
                                                            snapshot.data!;

                                                        return ListView
                                                            .separated(
                                                          padding: const EdgeInsets
                                                              .fromLTRB(
                                                            0,
                                                            1.0,
                                                            0,
                                                            15.0,
                                                          ),
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              listJeunesU19EquipesRecordList
                                                                  .length,
                                                          separatorBuilder: (_,
                                                                  __) =>
                                                              const SizedBox(
                                                                  height: 0.2),
                                                          itemBuilder: (context,
                                                              listJeunesU19Index) {
                                                            final listJeunesU19EquipesRecord =
                                                                listJeunesU19EquipesRecordList[
                                                                    listJeunesU19Index];
                                                            return EquipeWidget(
                                                              key: Key(
                                                                  'Keynsr_${listJeunesU19Index}_of_${listJeunesU19EquipesRecordList.length}'),
                                                              index:
                                                                  listJeunesU19Index,
                                                              logo:
                                                                  listJeunesU19EquipesRecord
                                                                      .logo,
                                                              nomequipe:
                                                                  listJeunesU19EquipesRecord
                                                                      .nomEquipe,
                                                              point:
                                                                  listJeunesU19EquipesRecord
                                                                      .champInfo19
                                                                      .points,
                                                              matchjoues:
                                                                  listJeunesU19EquipesRecord
                                                                      .champInfo19
                                                                      .matchJoue,
                                                              butspour:
                                                                  listJeunesU19EquipesRecord
                                                                      .champInfo19
                                                                      .butPour,
                                                              butscontre:
                                                                  listJeunesU19EquipesRecord
                                                                      .champInfo19
                                                                      .butContre,
                                                              differnece:
                                                                  listJeunesU19EquipesRecord
                                                                      .champInfo19
                                                                      .diff,
                                                            );
                                                          },
                                                        );
                                                      },
                                                    );
                                                  } else if ((_model.divisionValue == 'JEUNES') && (_model.ageJeunesValue == 'U17')) {
                                                    return StreamBuilder<
                                                        List<EquipesRecord>>(
                                                      stream:
                                                          queryEquipesRecord(
                                                        queryBuilder: (equipesRecord) =>
                                                            equipesRecord
                                                                .where(
                                                                  'division',
                                                                  isEqualTo: _model
                                                                      .divisionValue,
                                                                )
                                                                .where(
                                                                  'U17',
                                                                  isEqualTo:
                                                                      true,
                                                                )
                                                                .where(
                                                                  'groupe',
                                                                  isEqualTo: _model
                                                                      .groupesJeunesValue,
                                                                )
                                                                .orderBy(
                                                                    'champInfo17.points',
                                                                    descending:
                                                                        true)
                                                                .orderBy(
                                                                    'champInfo17.diff',
                                                                    descending:
                                                                        true),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
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
                                                                  Color(
                                                                      0xFF265631),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<EquipesRecord>
                                                            listJeunesU17EquipesRecordList =
                                                            snapshot.data!;

                                                        return ListView
                                                            .separated(
                                                          padding: const EdgeInsets
                                                              .fromLTRB(
                                                            0,
                                                            1.0,
                                                            0,
                                                            15.0,
                                                          ),
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              listJeunesU17EquipesRecordList
                                                                  .length,
                                                          separatorBuilder: (_,
                                                                  __) =>
                                                              const SizedBox(
                                                                  height: 0.2),
                                                          itemBuilder: (context,
                                                              listJeunesU17Index) {
                                                            final listJeunesU17EquipesRecord =
                                                                listJeunesU17EquipesRecordList[
                                                                    listJeunesU17Index];
                                                            return EquipeWidget(
                                                              key: Key(
                                                                  'Keykwl_${listJeunesU17Index}_of_${listJeunesU17EquipesRecordList.length}'),
                                                              index:
                                                                  listJeunesU17Index,
                                                              logo:
                                                                  listJeunesU17EquipesRecord
                                                                      .logo,
                                                              nomequipe:
                                                                  listJeunesU17EquipesRecord
                                                                      .nomEquipe,
                                                              point:
                                                                  listJeunesU17EquipesRecord
                                                                      .champInfo17
                                                                      .points,
                                                              matchjoues:
                                                                  listJeunesU17EquipesRecord
                                                                      .champInfo17
                                                                      .matchJoue,
                                                              butspour:
                                                                  listJeunesU17EquipesRecord
                                                                      .champInfo17
                                                                      .butPour,
                                                              butscontre:
                                                                  listJeunesU17EquipesRecord
                                                                      .champInfo17
                                                                      .butContre,
                                                              differnece:
                                                                  listJeunesU17EquipesRecord
                                                                      .champInfo17
                                                                      .diff,
                                                            );
                                                          },
                                                        );
                                                      },
                                                    );
                                                  } else if ((_model.divisionValue == 'JEUNES') && (_model.ageJeunesValue == 'U15')) {
                                                    return StreamBuilder<
                                                        List<EquipesRecord>>(
                                                      stream:
                                                          queryEquipesRecord(
                                                        queryBuilder: (equipesRecord) =>
                                                            equipesRecord
                                                                .where(
                                                                  'division',
                                                                  isEqualTo: _model
                                                                      .divisionValue,
                                                                )
                                                                .where(
                                                                  'U15',
                                                                  isEqualTo:
                                                                      true,
                                                                )
                                                                .where(
                                                                  'groupe',
                                                                  isEqualTo: _model
                                                                      .groupesJeunesValue,
                                                                )
                                                                .orderBy(
                                                                    'champInfo15.points',
                                                                    descending:
                                                                        true)
                                                                .orderBy(
                                                                    'champInfo15.diff',
                                                                    descending:
                                                                        true),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
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
                                                                  Color(
                                                                      0xFF265631),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<EquipesRecord>
                                                            listJeunesU15EquipesRecordList =
                                                            snapshot.data!;

                                                        return ListView
                                                            .separated(
                                                          padding: const EdgeInsets
                                                              .fromLTRB(
                                                            0,
                                                            1.0,
                                                            0,
                                                            15.0,
                                                          ),
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              listJeunesU15EquipesRecordList
                                                                  .length,
                                                          separatorBuilder: (_,
                                                                  __) =>
                                                              const SizedBox(
                                                                  height: 0.2),
                                                          itemBuilder: (context,
                                                              listJeunesU15Index) {
                                                            final listJeunesU15EquipesRecord =
                                                                listJeunesU15EquipesRecordList[
                                                                    listJeunesU15Index];
                                                            return EquipeWidget(
                                                              key: Key(
                                                                  'Keyhpw_${listJeunesU15Index}_of_${listJeunesU15EquipesRecordList.length}'),
                                                              index:
                                                                  listJeunesU15Index,
                                                              logo:
                                                                  listJeunesU15EquipesRecord
                                                                      .logo,
                                                              nomequipe:
                                                                  listJeunesU15EquipesRecord
                                                                      .nomEquipe,
                                                              point:
                                                                  listJeunesU15EquipesRecord
                                                                      .champInfo15
                                                                      .points,
                                                              matchjoues:
                                                                  listJeunesU15EquipesRecord
                                                                      .champInfo15
                                                                      .matchJoue,
                                                              butspour:
                                                                  listJeunesU15EquipesRecord
                                                                      .champInfo15
                                                                      .butPour,
                                                              butscontre:
                                                                  listJeunesU15EquipesRecord
                                                                      .champInfo15
                                                                      .butContre,
                                                              differnece:
                                                                  listJeunesU15EquipesRecord
                                                                      .champInfo15
                                                                      .diff,
                                                            );
                                                          },
                                                        );
                                                      },
                                                    );
                                                  } else if ((_model.divisionValue == 'JEUNES') && (_model.ageJeunesValue == 'U13')) {
                                                    return StreamBuilder<
                                                        List<EquipesRecord>>(
                                                      stream:
                                                          queryEquipesRecord(
                                                        queryBuilder: (equipesRecord) =>
                                                            equipesRecord
                                                                .where(
                                                                  'division',
                                                                  isEqualTo: _model
                                                                      .divisionValue,
                                                                )
                                                                .where(
                                                                  'U13',
                                                                  isEqualTo:
                                                                      true,
                                                                )
                                                                .where(
                                                                  'groupe',
                                                                  isEqualTo: _model
                                                                      .groupesJeunesValue,
                                                                )
                                                                .orderBy(
                                                                    'champinfo13.points',
                                                                    descending:
                                                                        true)
                                                                .orderBy(
                                                                    'champinfo13.diff',
                                                                    descending:
                                                                        true),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
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
                                                                  Color(
                                                                      0xFF265631),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<EquipesRecord>
                                                            listJeunesU13EquipesRecordList =
                                                            snapshot.data!;

                                                        return ListView
                                                            .separated(
                                                          padding: const EdgeInsets
                                                              .fromLTRB(
                                                            0,
                                                            1.0,
                                                            0,
                                                            15.0,
                                                          ),
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              listJeunesU13EquipesRecordList
                                                                  .length,
                                                          separatorBuilder: (_,
                                                                  __) =>
                                                              const SizedBox(
                                                                  height: 0.2),
                                                          itemBuilder: (context,
                                                              listJeunesU13Index) {
                                                            final listJeunesU13EquipesRecord =
                                                                listJeunesU13EquipesRecordList[
                                                                    listJeunesU13Index];
                                                            return EquipeWidget(
                                                              key: Key(
                                                                  'Keylrn_${listJeunesU13Index}_of_${listJeunesU13EquipesRecordList.length}'),
                                                              index:
                                                                  listJeunesU13Index,
                                                              logo:
                                                                  listJeunesU13EquipesRecord
                                                                      .logo,
                                                              nomequipe:
                                                                  listJeunesU13EquipesRecord
                                                                      .nomEquipe,
                                                              point:
                                                                  listJeunesU13EquipesRecord
                                                                      .champinfo13
                                                                      .points,
                                                              matchjoues:
                                                                  listJeunesU13EquipesRecord
                                                                      .champinfo13
                                                                      .matchJoue,
                                                              butspour:
                                                                  listJeunesU13EquipesRecord
                                                                      .champinfo13
                                                                      .butPour,
                                                              butscontre:
                                                                  listJeunesU13EquipesRecord
                                                                      .champinfo13
                                                                      .butContre,
                                                              differnece:
                                                                  listJeunesU13EquipesRecord
                                                                      .champinfo13
                                                                      .diff,
                                                            );
                                                          },
                                                        );
                                                      },
                                                    );
                                                  } else if (_model.divisionValue == 'ÉCOLES') {
                                                    return StreamBuilder<
                                                        List<EquipesRecord>>(
                                                      stream:
                                                          queryEquipesRecord(
                                                        queryBuilder: (equipesRecord) =>
                                                            equipesRecord
                                                                .where(
                                                                  'division',
                                                                  isEqualTo:
                                                                      'ÉCOLES',
                                                                )
                                                                .where(
                                                                  'groupe',
                                                                  isEqualTo: _model
                                                                      .groupesEcolesValue,
                                                                )
                                                                .orderBy(
                                                                    'champinfo13.points',
                                                                    descending:
                                                                        true)
                                                                .orderBy(
                                                                    'champinfo13.diff',
                                                                    descending:
                                                                        true),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
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
                                                                  Color(
                                                                      0xFF265631),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<EquipesRecord>
                                                            listEcoleEquipesRecordList =
                                                            snapshot.data!;

                                                        return ListView
                                                            .separated(
                                                          padding: const EdgeInsets
                                                              .fromLTRB(
                                                            0,
                                                            1.0,
                                                            0,
                                                            15.0,
                                                          ),
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              listEcoleEquipesRecordList
                                                                  .length,
                                                          separatorBuilder: (_,
                                                                  __) =>
                                                              const SizedBox(
                                                                  height: 0.2),
                                                          itemBuilder: (context,
                                                              listEcoleIndex) {
                                                            final listEcoleEquipesRecord =
                                                                listEcoleEquipesRecordList[
                                                                    listEcoleIndex];
                                                            return EquipeWidget(
                                                              key: Key(
                                                                  'Key6um_${listEcoleIndex}_of_${listEcoleEquipesRecordList.length}'),
                                                              index:
                                                                  listEcoleIndex,
                                                              logo:
                                                                  listEcoleEquipesRecord
                                                                      .logo,
                                                              nomequipe:
                                                                  listEcoleEquipesRecord
                                                                      .nomEquipe,
                                                              point:
                                                                  listEcoleEquipesRecord
                                                                      .champinfo13
                                                                      .points,
                                                              matchjoues:
                                                                  listEcoleEquipesRecord
                                                                      .champinfo13
                                                                      .matchJoue,
                                                              butspour:
                                                                  listEcoleEquipesRecord
                                                                      .champinfo13
                                                                      .butPour,
                                                              butscontre:
                                                                  listEcoleEquipesRecord
                                                                      .champinfo13
                                                                      .butContre,
                                                              differnece:
                                                                  listEcoleEquipesRecord
                                                                      .champinfo13
                                                                      .diff,
                                                            );
                                                          },
                                                        );
                                                      },
                                                    );
                                                  } else {
                                                    return StreamBuilder<
                                                        List<EquipesRecord>>(
                                                      stream:
                                                          queryEquipesRecord(
                                                        queryBuilder: (equipesRecord) =>
                                                            equipesRecord
                                                                .where(
                                                                  'division',
                                                                  isEqualTo:
                                                                      'ÉCOLES',
                                                                )
                                                                .where(
                                                                  'groupe',
                                                                  isEqualTo: _model
                                                                      .groupesEcolesValue,
                                                                )
                                                                .orderBy(
                                                                    'champ_info.points',
                                                                    descending:
                                                                        true)
                                                                .orderBy(
                                                                    'champ_info.diff',
                                                                    descending:
                                                                        true),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
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
                                                                  Color(
                                                                      0xFF265631),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<EquipesRecord>
                                                            listEcoleEquipesRecordList =
                                                            snapshot.data!;

                                                        return ListView
                                                            .separated(
                                                          padding: const EdgeInsets
                                                              .fromLTRB(
                                                            0,
                                                            1.0,
                                                            0,
                                                            15.0,
                                                          ),
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              listEcoleEquipesRecordList
                                                                  .length,
                                                          separatorBuilder: (_,
                                                                  __) =>
                                                              const SizedBox(
                                                                  height: 0.2),
                                                          itemBuilder: (context,
                                                              listEcoleIndex) {
                                                            final listEcoleEquipesRecord =
                                                                listEcoleEquipesRecordList[
                                                                    listEcoleIndex];
                                                            return EquipeWidget(
                                                              key: Key(
                                                                  'Key47y_${listEcoleIndex}_of_${listEcoleEquipesRecordList.length}'),
                                                              index:
                                                                  listEcoleIndex,
                                                              logo:
                                                                  listEcoleEquipesRecord
                                                                      .logo,
                                                              nomequipe:
                                                                  listEcoleEquipesRecord
                                                                      .nomEquipe,
                                                              point:
                                                                  listEcoleEquipesRecord
                                                                      .champinfo13
                                                                      .points,
                                                              matchjoues:
                                                                  listEcoleEquipesRecord
                                                                      .champinfo13
                                                                      .matchJoue,
                                                              butspour:
                                                                  listEcoleEquipesRecord
                                                                      .champinfo13
                                                                      .butPour,
                                                              butscontre:
                                                                  listEcoleEquipesRecord
                                                                      .champinfo13
                                                                      .butContre,
                                                              differnece:
                                                                  listEcoleEquipesRecord
                                                                      .champinfo13
                                                                      .diff,
                                                            );
                                                          },
                                                        );
                                                      },
                                                    );
                                                  }
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                } else {
                                  return Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        15.0, 0.0, 15.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'i6rp9lav' /* LIENS A AFFICHER */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Bebas Neue',
                                                  color: Colors.black,
                                                  fontSize: 26.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ].addToStart(const SizedBox(height: 15.0)),
                                      ),
                                    ),
                                  );
                                }
                              },
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
                      colorChampionnatIcon:
                          FlutterFlowTheme.of(context).secondaryText,
                      colorChampionnatText:
                          FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ),
                ),
                wrapWithModel(
                  model: _model.appBar2Model,
                  updateCallback: () => setState(() {}),
                  child: AppBar2Widget(
                    title: FFLocalizations.of(context).getText(
                      '4k2wt880' /* CLASSEMENT CHAMPIONNAT */,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
