import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'match_component_u19_model.dart';
export 'match_component_u19_model.dart';

class MatchComponentU19Widget extends StatefulWidget {
  const MatchComponentU19Widget({
    super.key,
    required this.refMatch,
  });

  final DocumentReference? refMatch;

  @override
  State<MatchComponentU19Widget> createState() =>
      _MatchComponentU19WidgetState();
}

class _MatchComponentU19WidgetState extends State<MatchComponentU19Widget> {
  late MatchComponentU19Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MatchComponentU19Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<MatchRecord>(
      stream: MatchRecord.getDocument(widget.refMatch!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
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
        final matchInfoContainerMatchRecord = snapshot.data!;
        return Container(
          width: 180.0,
          height: MediaQuery.sizeOf(context).height * 0.109,
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 4.0,
                color: Color(0xCD000000),
                offset: Offset(
                  0.0,
                  2.0,
                ),
              )
            ],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0),
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                      child: StreamBuilder<EquipesRecord>(
                        stream: EquipesRecord.getDocument(
                            matchInfoContainerMatchRecord.teamA!),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
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
                          final equipeAEquipesRecord = snapshot.data!;
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 35.0,
                                height: 35.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.network(
                                  equipeAEquipesRecord.logo,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                equipeAEquipesRecord.nomEquipe,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Bebas Neue',
                                      color: const Color(0xEE000000),
                                      fontSize: 10.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ].addToStart(const SizedBox(height: 5.0)),
                          );
                        },
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'wmnkrplm' /* - */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Bebas Neue',
                            color: const Color(0xEE000000),
                            fontSize: 50.0,
                            letterSpacing: 3.0,
                          ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                      child: StreamBuilder<EquipesRecord>(
                        stream: EquipesRecord.getDocument(
                            matchInfoContainerMatchRecord.teamB!),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
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
                          final equipeBEquipesRecord = snapshot.data!;
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 35.0,
                                height: 35.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.network(
                                  equipeBEquipesRecord.logo,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                equipeBEquipesRecord.nomEquipe,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Bebas Neue',
                                      color: const Color(0xEE000000),
                                      fontSize: 10.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ].addToStart(const SizedBox(height: 5.0)),
                          );
                        },
                      ),
                    ),
                  ]
                      .divide(const SizedBox(width: 10.0))
                      .addToStart(const SizedBox(width: 10.0))
                      .addToEnd(const SizedBox(width: 10.0)),
                ),
              ),
              Container(
                height: MediaQuery.sizeOf(context).height * 0.025,
                decoration: const BoxDecoration(
                  color: Color(0x80EAE3E3),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                    topLeft: Radius.circular(0.0),
                    topRight: Radius.circular(0.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        matchInfoContainerMatchRecord.matchInfosU19.journee,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Bebas Neue',
                              color: const Color(0xA7050000),
                              fontSize: 6.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                      const SizedBox(
                        height: 100.0,
                        child: VerticalDivider(
                          thickness: 1.0,
                          indent: 5.0,
                          endIndent: 5.0,
                          color: Color(0xA4726B6B),
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                        child: Icon(
                          Icons.location_pin,
                          color: Color(0xA7050000),
                          size: 10.0,
                        ),
                      ),
                      Text(
                        matchInfoContainerMatchRecord.matchInfosU19.stade,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Bebas Neue',
                              color: const Color(0xA7050000),
                              fontSize: 6.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                      const SizedBox(
                        height: 100.0,
                        child: VerticalDivider(
                          thickness: 1.0,
                          indent: 5.0,
                          endIndent: 5.0,
                          color: Color(0xA4726B6B),
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                        child: Icon(
                          Icons.access_time,
                          color: Color(0xA7050000),
                          size: 10.0,
                        ),
                      ),
                      Text(
                        matchInfoContainerMatchRecord.matchInfosU19.heure,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Bebas Neue',
                              color: const Color(0xA7050000),
                              fontSize: 6.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
