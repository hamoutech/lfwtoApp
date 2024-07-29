import '/flutter_flow/flutter_flow_util.dart';
import 'matchday_ads_widget.dart' show MatchdayAdsWidget;
import 'package:flutter/material.dart';

class MatchdayAdsModel extends FlutterFlowModel<MatchdayAdsWidget> {
  ///  Local state fields for this page.

  bool timeOut = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
