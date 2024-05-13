import '/components/app_bar2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/navbar/nav_barr/nav_barr_widget.dart';
import 'match_day_live_widget.dart' show MatchDayLiveWidget;
import 'package:flutter/material.dart';

class MatchDayLiveModel extends FlutterFlowModel<MatchDayLiveWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

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
    tabBarController?.dispose();
    navBarrModel.dispose();
    appBar2Model.dispose();
  }
}
