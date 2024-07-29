import '/components/app_bar2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/navbar/nav_barr/nav_barr_widget.dart';
import 'resultats_widget.dart' show ResultatsWidget;
import 'package:flutter/material.dart';

class ResultatsModel extends FlutterFlowModel<ResultatsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for division widget.
  FormFieldController<List<String>>? divisionValueController;
  String? get divisionValue => divisionValueController?.value?.firstOrNull;
  set divisionValue(String? val) =>
      divisionValueController?.value = val != null ? [val] : [];
  // State field(s) for dayDropDown widget.
  String? dayDropDownValue;
  FormFieldController<String>? dayDropDownValueController;
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
