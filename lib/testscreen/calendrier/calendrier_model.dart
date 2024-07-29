import '/components/app_bar2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/navbar/nav_barr/nav_barr_widget.dart';
import 'calendrier_widget.dart' show CalendrierWidget;
import 'package:flutter/material.dart';

class CalendrierModel extends FlutterFlowModel<CalendrierWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for divisionChoiceChips widget.
  FormFieldController<List<String>>? divisionChoiceChipsValueController;
  String? get divisionChoiceChipsValue =>
      divisionChoiceChipsValueController?.value?.firstOrNull;
  set divisionChoiceChipsValue(String? val) =>
      divisionChoiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for GroupesJeunes widget.
  FormFieldController<List<String>>? groupesJeunesValueController;
  String? get groupesJeunesValue =>
      groupesJeunesValueController?.value?.firstOrNull;
  set groupesJeunesValue(String? val) =>
      groupesJeunesValueController?.value = val != null ? [val] : [];
  // State field(s) for GroupesEcoles widget.
  FormFieldController<List<String>>? groupesEcolesValueController;
  String? get groupesEcolesValue =>
      groupesEcolesValueController?.value?.firstOrNull;
  set groupesEcolesValue(String? val) =>
      groupesEcolesValueController?.value = val != null ? [val] : [];
  // State field(s) for ageHonneur widget.
  FormFieldController<List<String>>? ageHonneurValueController;
  String? get ageHonneurValue => ageHonneurValueController?.value?.firstOrNull;
  set ageHonneurValue(String? val) =>
      ageHonneurValueController?.value = val != null ? [val] : [];
  // State field(s) for agePH widget.
  FormFieldController<List<String>>? agePHValueController;
  String? get agePHValue => agePHValueController?.value?.firstOrNull;
  set agePHValue(String? val) =>
      agePHValueController?.value = val != null ? [val] : [];
  // State field(s) for ageJeunes widget.
  FormFieldController<List<String>>? ageJeunesValueController;
  String? get ageJeunesValue => ageJeunesValueController?.value?.firstOrNull;
  set ageJeunesValue(String? val) =>
      ageJeunesValueController?.value = val != null ? [val] : [];
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
