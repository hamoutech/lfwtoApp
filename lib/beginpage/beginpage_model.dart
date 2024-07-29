import '/flutter_flow/flutter_flow_util.dart';
import 'beginpage_widget.dart' show BeginpageWidget;
import 'package:flutter/material.dart';

class BeginpageModel extends FlutterFlowModel<BeginpageWidget> {
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
