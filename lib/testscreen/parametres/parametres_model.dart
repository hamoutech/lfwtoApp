import '/components/app_bar1_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/navbar/nav_barr/nav_barr_widget.dart';
import 'parametres_widget.dart' show ParametresWidget;
import 'package:flutter/material.dart';

class ParametresModel extends FlutterFlowModel<ParametresWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for NavBarr component.
  late NavBarrModel navBarrModel;
  // Model for appBar1 component.
  late AppBar1Model appBar1Model;

  @override
  void initState(BuildContext context) {
    navBarrModel = createModel(context, () => NavBarrModel());
    appBar1Model = createModel(context, () => AppBar1Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navBarrModel.dispose();
    appBar1Model.dispose();
  }
}
