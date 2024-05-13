import '/backend/backend.dart';
import '/components/app_bar2_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/navbar/nav_barr/nav_barr_widget.dart';
import 'package:flutter/material.dart';
import 'resultats_model.dart';
export 'resultats_model.dart';

class ResultatsWidget extends StatefulWidget {
  const ResultatsWidget({super.key});

  @override
  State<ResultatsWidget> createState() => _ResultatsWidgetState();
}

class _ResultatsWidgetState extends State<ResultatsWidget> {
  late ResultatsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResultatsModel());

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
        title: 'resultats',
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
                        Material(
                          color: Colors.transparent,
                          elevation: 15.0,
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: const BoxDecoration(
                              color: Color(0x99265631),
                            ),
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 10.0),
                                child: FlutterFlowChoiceChips(
                                  options: [
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'xhumihqu' /* HONNEUR */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'jkxk487l' /* PRE-HONNEUR */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'e2vauotd' /* JEUNES */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      '2fzf3hiy' /* ÉCOLES */,
                                    ))
                                  ],
                                  onChanged: (val) => setState(() =>
                                      _model.divisionValue = val?.firstOrNull),
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
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  unselectedChipStyle: ChipStyle(
                                    backgroundColor: const Color(0x00000000),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Bebas Neue',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 16.0,
                                          letterSpacing: 1.0,
                                        ),
                                    iconColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    iconSize: 18.0,
                                    elevation: 0.0,
                                    borderColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  chipSpacing: 10.0,
                                  rowSpacing: 20.0,
                                  multiselect: false,
                                  initialized: _model.divisionValue != null,
                                  alignment: WrapAlignment.start,
                                  controller: _model.divisionValueController ??=
                                      FormFieldController<List<String>>(
                                    [
                                      FFLocalizations.of(context).getText(
                                        'nnalyqej' /* HONNEUR */,
                                      )
                                    ],
                                  ),
                                  wrapped: false,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 0.07,
                          decoration: const BoxDecoration(
                            color: Color(0x55265631),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 150.0,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.04,
                                decoration: const BoxDecoration(),
                                child: FlutterFlowDropDown<String>(
                                  controller:
                                      _model.dayDropDownValueController ??=
                                          FormFieldController<String>(
                                    _model.dayDropDownValue ??=
                                        FFLocalizations.of(context).getText(
                                      '5t3b5g73' /* 1 ÉRE JOURNÉE */,
                                    ),
                                  ),
                                  options: [
                                    FFLocalizations.of(context).getText(
                                      'g70tzpm2' /* 1 ÉRE JOURNÉE */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'oug44222' /* 2 ÉME JOURNÉE */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      's6p241m3' /* 3 ÉME JOURNÉE */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'bqjpkxa9' /* 4 ÉME JOURNÉE */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'ypo5z6wt' /* 5 ÉME JOURNÉE */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'a6arj3yk' /* 6 ÉME JOURNÉE */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'fu2a0abh' /* 7 ÉME JOURNÉE */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'dhi7cbx7' /* 8 ÉME JOURNÉE */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'zxid8ccb' /* 9 ÉME JOURNÉE */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'oxlb2b4c' /* 10 ÉME JOURNÉE */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '22nftvv6' /* 11 ÉME JOURNÉE */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '24uq3it3' /* 12 ÉME JOURNÉE */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'd2xd6abk' /* 13 ÉME JOURNÉE */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '6pvdurdk' /* 14 ÉME JOURNÉE */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'dzcsebps' /* 15 ÉME JOURNÉE */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'fwu8s38e' /* 16 ÉME JOURNÉE */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'fx3kt57s' /* 17 ÉME JOURNÉE */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'st4bolpr' /* 18 ÉME JOURNÉE */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'xma63vy7' /* 19 ÉME JOURNÉE */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'h665ej29' /* 20 ÉME JOURNÉE */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'g9fy0vp2' /* 22 ÉME JOURNÉE */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'yuelee4d' /* 23 ÉME JOURNÉE */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'guqvoyik' /* 24 ÉME JOURNÉE */,
                                    )
                                  ],
                                  onChanged: (val) => setState(
                                      () => _model.dayDropDownValue = val),
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
                                  searchTextStyle: FlutterFlowTheme.of(context)
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
                                  hintText: FFLocalizations.of(context).getText(
                                    'gobsu1qa' /* JOURNÉE */,
                                  ),
                                  searchHintText:
                                      FFLocalizations.of(context).getText(
                                    'pg2mok45' /* Search for an item... */,
                                  ),
                                  icon: const Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: Colors.black,
                                    size: 24.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context).info,
                                  elevation: 2.0,
                                  borderColor: Colors.transparent,
                                  borderWidth: 2.0,
                                  borderRadius: 8.0,
                                  margin: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 0.0, 1.0, 0.0),
                                  hidesUnderline: true,
                                  isSearchable: true,
                                  isMultiSelect: false,
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  'RESULTATS  ${_model.dayDropDownValue} ${_model.divisionValue}',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Bebas Neue',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: StreamBuilder<List<MatchRecord>>(
                              stream: queryMatchRecord(
                                queryBuilder: (matchRecord) => matchRecord
                                    .where(
                                      'division',
                                      isEqualTo: _model.divisionValue,
                                    )
                                    .where(
                                      'journee',
                                      isEqualTo: _model.dayDropDownValue,
                                    ),
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
                                List<MatchRecord> containerMatchRecordList =
                                    snapshot.data!;
                                return Container(
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
                                      50.0,
                                    ),
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          SingleChildScrollView(
                                            primary: false,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.4,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.04,
                                                  decoration: const BoxDecoration(
                                                    color: Color(0x92FFFFFF),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(15.0),
                                                      topRight:
                                                          Radius.circular(15.0),
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
                                                        'dqtf7jta' /* SENIOR */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Bebas Neue',
                                                            color: const Color(
                                                                0xEE000000),
                                                            fontSize: 16.0,
                                                            letterSpacing: 1.0,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                                Builder(
                                                  builder: (context) {
                                                    final matchlistSenior =
                                                        containerMatchRecordList
                                                            .map((e) => e)
                                                            .toList();
                                                    return ListView.builder(
                                                      padding: EdgeInsets.zero,
                                                      primary: false,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount: matchlistSenior
                                                          .length,
                                                      itemBuilder: (context,
                                                          matchlistSeniorIndex) {
                                                        final matchlistSeniorItem =
                                                            matchlistSenior[
                                                                matchlistSeniorIndex];
                                                        return Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      15.0,
                                                                      0.0,
                                                                      15.0,
                                                                      0.0),
                                                          child: Material(
                                                            color: Colors
                                                                .transparent,
                                                            elevation: 10.0,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                            ),
                                                            child: Container(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.95,
                                                              height: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .height *
                                                                  0.06,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
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
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child: StreamBuilder<
                                                                          EquipesRecord>(
                                                                        stream:
                                                                            EquipesRecord.getDocument(matchlistSeniorItem.teamA!),
                                                                        builder:
                                                                            (context,
                                                                                snapshot) {
                                                                          // Customize what your widget looks like when it's loading.
                                                                          if (!snapshot
                                                                              .hasData) {
                                                                            return const Center(
                                                                              child: SizedBox(
                                                                                width: 50.0,
                                                                                height: 50.0,
                                                                                child: CircularProgressIndicator(
                                                                                  valueColor: AlwaysStoppedAnimation<Color>(
                                                                                    Color(0xFF265631),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          }
                                                                          final containerEquipesRecord =
                                                                              snapshot.data!;
                                                                          return Container(
                                                                            width:
                                                                                MediaQuery.sizeOf(context).width * 0.3,
                                                                            decoration:
                                                                                const BoxDecoration(),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                  child: Container(
                                                                                    width: 30.0,
                                                                                    height: 30.0,
                                                                                    clipBehavior: Clip.antiAlias,
                                                                                    decoration: const BoxDecoration(
                                                                                      shape: BoxShape.circle,
                                                                                    ),
                                                                                    child: Image.network(
                                                                                      containerEquipesRecord.logo,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  containerEquipesRecord.nomEquipe,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Bebas Neue',
                                                                                        color: const Color(0xEE000000),
                                                                                        fontSize: 12.0,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.1,
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Text(
                                                                                matchlistSeniorItem.resultatSenior.scoreTeamA.toString(),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Bebas Neue',
                                                                                      color: const Color(0xEE000000),
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '54ekhmgd' /* - */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Bebas Neue',
                                                                                  color: const Color(0xEE000000),
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Text(
                                                                                matchlistSeniorItem.resultatSenior.scoreTeamB.toString(),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Bebas Neue',
                                                                                      color: const Color(0xEE000000),
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    StreamBuilder<
                                                                        EquipesRecord>(
                                                                      stream: EquipesRecord.getDocument(
                                                                          matchlistSeniorItem
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
                                                                              width: 50.0,
                                                                              height: 50.0,
                                                                              child: CircularProgressIndicator(
                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                  Color(0xFF265631),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        }
                                                                        final containerEquipesRecord =
                                                                            snapshot.data!;
                                                                        return Container(
                                                                          width:
                                                                              MediaQuery.sizeOf(context).width * 0.3,
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.end,
                                                                            children: [
                                                                              Text(
                                                                                containerEquipesRecord.nomEquipe,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Bebas Neue',
                                                                                      color: const Color(0xEE000000),
                                                                                      fontSize: 12.0,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                child: Container(
                                                                                  width: 30.0,
                                                                                  height: 30.0,
                                                                                  clipBehavior: Clip.antiAlias,
                                                                                  decoration: const BoxDecoration(
                                                                                    shape: BoxShape.circle,
                                                                                  ),
                                                                                  child: Image.network(
                                                                                    containerEquipesRecord.logo,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        );
                                                                      },
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ]
                                                  .addToStart(
                                                      const SizedBox(height: 25.0))
                                                  .addToEnd(
                                                      const SizedBox(height: 25.0)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.4,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.04,
                                                  decoration: const BoxDecoration(
                                                    color: Color(0x92FFFFFF),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(15.0),
                                                      topRight:
                                                          Radius.circular(15.0),
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
                                                        '5fg0hjut' /* U19 */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Bebas Neue',
                                                            color: const Color(
                                                                0xEE000000),
                                                            fontSize: 16.0,
                                                            letterSpacing: 1.0,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                                Builder(
                                                  builder: (context) {
                                                    final matchsU19 =
                                                        containerMatchRecordList
                                                            .map((e) => e)
                                                            .toList();
                                                    return ListView.builder(
                                                      padding: EdgeInsets.zero,
                                                      primary: false,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount:
                                                          matchsU19.length,
                                                      itemBuilder: (context,
                                                          matchsU19Index) {
                                                        final matchsU19Item =
                                                            matchsU19[
                                                                matchsU19Index];
                                                        return Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      15.0,
                                                                      0.0,
                                                                      15.0,
                                                                      0.0),
                                                          child: Material(
                                                            color: Colors
                                                                .transparent,
                                                            elevation: 10.0,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                            ),
                                                            child: Container(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.95,
                                                              height: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .height *
                                                                  0.06,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
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
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child: StreamBuilder<
                                                                          EquipesRecord>(
                                                                        stream:
                                                                            EquipesRecord.getDocument(matchsU19Item.teamA!),
                                                                        builder:
                                                                            (context,
                                                                                snapshot) {
                                                                          // Customize what your widget looks like when it's loading.
                                                                          if (!snapshot
                                                                              .hasData) {
                                                                            return const Center(
                                                                              child: SizedBox(
                                                                                width: 50.0,
                                                                                height: 50.0,
                                                                                child: CircularProgressIndicator(
                                                                                  valueColor: AlwaysStoppedAnimation<Color>(
                                                                                    Color(0xFF265631),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          }
                                                                          final containerEquipesRecord =
                                                                              snapshot.data!;
                                                                          return Container(
                                                                            width:
                                                                                MediaQuery.sizeOf(context).width * 0.3,
                                                                            decoration:
                                                                                const BoxDecoration(),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                  child: Container(
                                                                                    width: 30.0,
                                                                                    height: 30.0,
                                                                                    clipBehavior: Clip.antiAlias,
                                                                                    decoration: const BoxDecoration(
                                                                                      shape: BoxShape.circle,
                                                                                    ),
                                                                                    child: Image.network(
                                                                                      containerEquipesRecord.logo,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  containerEquipesRecord.nomEquipe,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Bebas Neue',
                                                                                        color: const Color(0xEE000000),
                                                                                        fontSize: 12.0,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.1,
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Text(
                                                                                matchsU19Item.resultatU19.scoreTeamA.toString(),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Bebas Neue',
                                                                                      color: const Color(0xEE000000),
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '2sgpixxk' /* - */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Bebas Neue',
                                                                                  color: const Color(0xEE000000),
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Text(
                                                                                matchsU19Item.resultatU19.scoreTeamB.toString(),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Bebas Neue',
                                                                                      color: const Color(0xEE000000),
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    StreamBuilder<
                                                                        EquipesRecord>(
                                                                      stream: EquipesRecord.getDocument(
                                                                          matchsU19Item
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
                                                                              width: 50.0,
                                                                              height: 50.0,
                                                                              child: CircularProgressIndicator(
                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                  Color(0xFF265631),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        }
                                                                        final containerEquipesRecord =
                                                                            snapshot.data!;
                                                                        return Container(
                                                                          width:
                                                                              MediaQuery.sizeOf(context).width * 0.3,
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.end,
                                                                            children: [
                                                                              Text(
                                                                                containerEquipesRecord.nomEquipe,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Bebas Neue',
                                                                                      color: const Color(0xEE000000),
                                                                                      fontSize: 12.0,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                child: Container(
                                                                                  width: 30.0,
                                                                                  height: 30.0,
                                                                                  clipBehavior: Clip.antiAlias,
                                                                                  decoration: const BoxDecoration(
                                                                                    shape: BoxShape.circle,
                                                                                  ),
                                                                                  child: Image.network(
                                                                                    containerEquipesRecord.logo,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        );
                                                                      },
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ]
                                                  .addToStart(
                                                      const SizedBox(height: 25.0))
                                                  .addToEnd(
                                                      const SizedBox(height: 25.0)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          SingleChildScrollView(
                                            primary: false,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.4,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.04,
                                                  decoration: const BoxDecoration(
                                                    color: Color(0x92FFFFFF),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(15.0),
                                                      topRight:
                                                          Radius.circular(15.0),
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
                                                        'lqoc5wml' /* U17 */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Bebas Neue',
                                                            color: const Color(
                                                                0xEE000000),
                                                            fontSize: 16.0,
                                                            letterSpacing: 1.0,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                                Builder(
                                                  builder: (context) {
                                                    final matchU17 =
                                                        containerMatchRecordList
                                                            .map((e) => e)
                                                            .toList();
                                                    return ListView.builder(
                                                      padding: EdgeInsets.zero,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount:
                                                          matchU17.length,
                                                      itemBuilder: (context,
                                                          matchU17Index) {
                                                        final matchU17Item =
                                                            matchU17[
                                                                matchU17Index];
                                                        return Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      15.0,
                                                                      0.0,
                                                                      15.0,
                                                                      0.0),
                                                          child: Material(
                                                            color: Colors
                                                                .transparent,
                                                            elevation: 10.0,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                            ),
                                                            child: Container(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.95,
                                                              height: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .height *
                                                                  0.06,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
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
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.3,
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      child: StreamBuilder<
                                                                          EquipesRecord>(
                                                                        stream:
                                                                            EquipesRecord.getDocument(matchU17Item.teamA!),
                                                                        builder:
                                                                            (context,
                                                                                snapshot) {
                                                                          // Customize what your widget looks like when it's loading.
                                                                          if (!snapshot
                                                                              .hasData) {
                                                                            return const Center(
                                                                              child: SizedBox(
                                                                                width: 50.0,
                                                                                height: 50.0,
                                                                                child: CircularProgressIndicator(
                                                                                  valueColor: AlwaysStoppedAnimation<Color>(
                                                                                    Color(0xFF265631),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          }
                                                                          final equipe1EquipesRecord =
                                                                              snapshot.data!;
                                                                          return Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children:
                                                                                [
                                                                              Container(
                                                                                width: 30.0,
                                                                                height: 30.0,
                                                                                clipBehavior: Clip.antiAlias,
                                                                                decoration: const BoxDecoration(
                                                                                  shape: BoxShape.circle,
                                                                                ),
                                                                                child: Image.network(
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
                                                                            ].divide(const SizedBox(width: 8.0)),
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.1,
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Text(
                                                                                matchU17Item.resultatU17.scoreTeamA.toString(),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Bebas Neue',
                                                                                      color: const Color(0xEE000000),
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              's7zbhae8' /* - */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Bebas Neue',
                                                                                  color: const Color(0xEE000000),
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Text(
                                                                                matchU17Item.resultatU17.scoreTeamB.toString(),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Bebas Neue',
                                                                                      color: const Color(0xEE000000),
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.3,
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      child: StreamBuilder<
                                                                          EquipesRecord>(
                                                                        stream:
                                                                            EquipesRecord.getDocument(matchU17Item.teamB!),
                                                                        builder:
                                                                            (context,
                                                                                snapshot) {
                                                                          // Customize what your widget looks like when it's loading.
                                                                          if (!snapshot
                                                                              .hasData) {
                                                                            return const Center(
                                                                              child: SizedBox(
                                                                                width: 50.0,
                                                                                height: 50.0,
                                                                                child: CircularProgressIndicator(
                                                                                  valueColor: AlwaysStoppedAnimation<Color>(
                                                                                    Color(0xFF265631),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          }
                                                                          final equipe2EquipesRecord =
                                                                              snapshot.data!;
                                                                          return Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.end,
                                                                            children:
                                                                                [
                                                                              Text(
                                                                                equipe2EquipesRecord.nomEquipe,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Bebas Neue',
                                                                                      color: const Color(0xEE000000),
                                                                                      fontSize: 12.0,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                              Container(
                                                                                width: 30.0,
                                                                                height: 30.0,
                                                                                clipBehavior: Clip.antiAlias,
                                                                                decoration: const BoxDecoration(
                                                                                  shape: BoxShape.circle,
                                                                                ),
                                                                                child: Image.network(
                                                                                  equipe2EquipesRecord.logo,
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                            ].divide(const SizedBox(width: 8.0)),
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ]
                                                  .addToStart(
                                                      const SizedBox(height: 25.0))
                                                  .addToEnd(
                                                      const SizedBox(height: 25.0)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.4,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.04,
                                                  decoration: const BoxDecoration(
                                                    color: Color(0x92FFFFFF),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(15.0),
                                                      topRight:
                                                          Radius.circular(15.0),
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
                                                        'uxi16gf3' /* U15 */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Bebas Neue',
                                                            color: const Color(
                                                                0xEE000000),
                                                            fontSize: 16.0,
                                                            letterSpacing: 1.0,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                                Builder(
                                                  builder: (context) {
                                                    final matchU13 =
                                                        containerMatchRecordList
                                                            .map((e) => e)
                                                            .toList();
                                                    return ListView.builder(
                                                      padding: EdgeInsets.zero,
                                                      primary: false,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount:
                                                          matchU13.length,
                                                      itemBuilder: (context,
                                                          matchU13Index) {
                                                        final matchU13Item =
                                                            matchU13[
                                                                matchU13Index];
                                                        return Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      15.0,
                                                                      0.0,
                                                                      15.0,
                                                                      0.0),
                                                          child: Material(
                                                            color: Colors
                                                                .transparent,
                                                            elevation: 10.0,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                            ),
                                                            child: Container(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.95,
                                                              height: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .height *
                                                                  0.06,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
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
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.3,
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      child: StreamBuilder<
                                                                          EquipesRecord>(
                                                                        stream:
                                                                            EquipesRecord.getDocument(matchU13Item.teamA!),
                                                                        builder:
                                                                            (context,
                                                                                snapshot) {
                                                                          // Customize what your widget looks like when it's loading.
                                                                          if (!snapshot
                                                                              .hasData) {
                                                                            return const Center(
                                                                              child: SizedBox(
                                                                                width: 50.0,
                                                                                height: 50.0,
                                                                                child: CircularProgressIndicator(
                                                                                  valueColor: AlwaysStoppedAnimation<Color>(
                                                                                    Color(0xFF265631),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          }
                                                                          final equipe1EquipesRecord =
                                                                              snapshot.data!;
                                                                          return Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children:
                                                                                [
                                                                              Container(
                                                                                width: 30.0,
                                                                                height: 30.0,
                                                                                clipBehavior: Clip.antiAlias,
                                                                                decoration: const BoxDecoration(
                                                                                  shape: BoxShape.circle,
                                                                                ),
                                                                                child: Image.network(
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
                                                                            ].divide(const SizedBox(width: 8.0)),
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.1,
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Text(
                                                                                matchU13Item.resultatU15.scoreTeamA.toString(),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Bebas Neue',
                                                                                      color: const Color(0xEE000000),
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '5471okf2' /* - */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Bebas Neue',
                                                                                  color: const Color(0xEE000000),
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Text(
                                                                                matchU13Item.resultatU15.scoreTeamB.toString(),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Bebas Neue',
                                                                                      color: const Color(0xEE000000),
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.3,
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      child: StreamBuilder<
                                                                          EquipesRecord>(
                                                                        stream:
                                                                            EquipesRecord.getDocument(matchU13Item.teamB!),
                                                                        builder:
                                                                            (context,
                                                                                snapshot) {
                                                                          // Customize what your widget looks like when it's loading.
                                                                          if (!snapshot
                                                                              .hasData) {
                                                                            return const Center(
                                                                              child: SizedBox(
                                                                                width: 50.0,
                                                                                height: 50.0,
                                                                                child: CircularProgressIndicator(
                                                                                  valueColor: AlwaysStoppedAnimation<Color>(
                                                                                    Color(0xFF265631),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          }
                                                                          final equipe2EquipesRecord =
                                                                              snapshot.data!;
                                                                          return Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.end,
                                                                            children:
                                                                                [
                                                                              Text(
                                                                                equipe2EquipesRecord.nomEquipe,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Bebas Neue',
                                                                                      color: const Color(0xEE000000),
                                                                                      fontSize: 12.0,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                              Container(
                                                                                width: 30.0,
                                                                                height: 30.0,
                                                                                clipBehavior: Clip.antiAlias,
                                                                                decoration: const BoxDecoration(
                                                                                  shape: BoxShape.circle,
                                                                                ),
                                                                                child: Image.network(
                                                                                  equipe2EquipesRecord.logo,
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                            ].divide(const SizedBox(width: 8.0)),
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ]
                                                  .addToStart(
                                                      const SizedBox(height: 25.0))
                                                  .addToEnd(
                                                      const SizedBox(height: 25.0)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              },
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
                        '4o8onim7' /* RESULTATS DE LA SEMAINE */,
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
