import '/backend/backend.dart';
import '/components/app_bar1_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/navbar/nav_barr/nav_barr_widget.dart';
import '/flutter_flow/request_manager.dart';

import 'match_day_widget.dart' show MatchDayWidget;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class MatchDayModel extends FlutterFlowModel<MatchDayWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for division widget.
  FormFieldController<List<String>>? divisionValueController;
  String? get divisionValue => divisionValueController?.value?.firstOrNull;
  set divisionValue(String? val) =>
      divisionValueController?.value = val != null ? [val] : [];
  List<MatchRecord>? matchregarderPreviousSnapshot;
  // Stores action output result for [Backend Call - Read Document] action in MATCHREGARDER widget.
  EquipesRecord? teamA;
  // Stores action output result for [Backend Call - Read Document] action in MATCHREGARDER widget.
  EquipesRecord? teamB;
  // Model for NavBarr component.
  late NavBarrModel navBarrModel;
  // Model for appBar1 component.
  late AppBar1Model appBar1Model;

  /// Query cache managers for this widget.

  final _matchdayManager = StreamRequestManager<List<MatchRecord>>();
  Stream<List<MatchRecord>> matchday({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<MatchRecord>> Function() requestFn,
  }) =>
      _matchdayManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearMatchdayCache() => _matchdayManager.clear();
  void clearMatchdayCacheKey(String? uniqueKey) =>
      _matchdayManager.clearRequest(uniqueKey);

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

    /// Dispose query cache managers for this widget.

    clearMatchdayCache();
  }
}
