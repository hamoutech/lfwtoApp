import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'equipe_model.dart';
export 'equipe_model.dart';

class EquipeWidget extends StatefulWidget {
  const EquipeWidget({
    super.key,
    int? index,
    this.logo,
    this.nomequipe,
    this.point,
    this.matchjoues,
    this.butspour,
    this.butscontre,
    this.differnece,
  }) : index = index ?? 0;

  final int index;
  final String? logo;
  final String? nomequipe;
  final int? point;
  final int? matchjoues;
  final int? butspour;
  final int? butscontre;
  final int? differnece;

  @override
  State<EquipeWidget> createState() => _EquipeWidgetState();
}

class _EquipeWidgetState extends State<EquipeWidget> {
  late EquipeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EquipeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        decoration: const BoxDecoration(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 0.09,
              height: MediaQuery.sizeOf(context).height * 0.04,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).info,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).info,
                ),
              ),
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    (widget.index + 1).toString(),
                    '1',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Bebas Neue',
                        color: Colors.black,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.4,
              height: MediaQuery.sizeOf(context).height * 0.04,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).info,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).info,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 30.0,
                    height: 30.0,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      widget.logo!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    widget.nomequipe!,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Bebas Neue',
                          color: Colors.black,
                          letterSpacing: 0.0,
                        ),
                  ),
                ].divide(const SizedBox(width: 8.0)),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.09,
              height: MediaQuery.sizeOf(context).height * 0.04,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).info,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).info,
                ),
              ),
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    widget.point?.toString(),
                    '-',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Bebas Neue',
                        color: Colors.black,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.09,
              height: MediaQuery.sizeOf(context).height * 0.04,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).info,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).info,
                ),
              ),
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    widget.matchjoues?.toString(),
                    '0',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Bebas Neue',
                        color: Colors.black,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.09,
              height: MediaQuery.sizeOf(context).height * 0.04,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).info,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).info,
                ),
              ),
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    widget.butspour?.toString(),
                    '0',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Bebas Neue',
                        color: Colors.black,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.09,
              height: MediaQuery.sizeOf(context).height * 0.04,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).info,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).info,
                ),
              ),
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Text(
                  widget.butscontre!.toString(),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Bebas Neue',
                        color: Colors.black,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.09,
              height: MediaQuery.sizeOf(context).height * 0.04,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).info,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).info,
                ),
              ),
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    widget.differnece?.toString(),
                    '-',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Bebas Neue',
                        color: Colors.black,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
