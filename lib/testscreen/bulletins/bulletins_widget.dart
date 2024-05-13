import '/components/app_bar2_widget.dart';
import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/navbar/nav_barr/nav_barr_widget.dart';
import 'package:flutter/material.dart';
import 'bulletins_model.dart';
export 'bulletins_model.dart';

class BulletinsWidget extends StatefulWidget {
  const BulletinsWidget({
    super.key,
    required this.pdflink,
  });

  final String? pdflink;

  @override
  State<BulletinsWidget> createState() => _BulletinsWidgetState();
}

class _BulletinsWidgetState extends State<BulletinsWidget> {
  late BulletinsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BulletinsModel());

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
        title: 'Bulletins',
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
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 90.0, 0.0, 90.0),
                  child: FlutterFlowPdfViewer(
                    networkPath:
                        'https://lfwto.dz/uploads/files/bo/fichier_bo_Bo_n12_du_14012024.pdf',
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    horizontalScroll: false,
                  ),
                ),
                wrapWithModel(
                  model: _model.appBar2Model,
                  updateCallback: () => setState(() {}),
                  child: AppBar2Widget(
                    title: FFLocalizations.of(context).getText(
                      '8xkq4ocn' /* BULLETIN OFFICIEL */,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
