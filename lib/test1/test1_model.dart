import '/components/app_bar_ligue_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/navbar/nav_barr/nav_barr_widget.dart';
import 'test1_widget.dart' show Test1Widget;
import 'package:flutter/material.dart';

class Test1Model extends FlutterFlowModel<Test1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for appBarLigue component.
  late AppBarLigueModel appBarLigueModel;
  // Model for NavBarr component.
  late NavBarrModel navBarrModel;

  @override
  void initState(BuildContext context) {
    appBarLigueModel = createModel(context, () => AppBarLigueModel());
    navBarrModel = createModel(context, () => NavBarrModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    appBarLigueModel.dispose();
    navBarrModel.dispose();
  }
}
