import '/components/app_bar2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/navbar/nav_barr/nav_barr_widget.dart';
import 'pv_discipline_widget.dart' show PvDisciplineWidget;
import 'package:flutter/material.dart';

class PvDisciplineModel extends FlutterFlowModel<PvDisciplineWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for NavBarr component.
  late NavBarrModel navBarrModel;
  // Model for appBar2 component.
  late AppBar2Model appBar2Model;

  @override
  void initState(BuildContext context) {
    navBarrModel = createModel(context, () => NavBarrModel());
    appBar2Model = createModel(context, () => AppBar2Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navBarrModel.dispose();
    appBar2Model.dispose();
  }
}
