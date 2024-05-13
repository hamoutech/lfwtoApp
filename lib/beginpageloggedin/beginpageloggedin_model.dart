import '/flutter_flow/flutter_flow_util.dart';
import 'beginpageloggedin_widget.dart' show BeginpageloggedinWidget;
import 'package:flutter/material.dart';

class BeginpageloggedinModel extends FlutterFlowModel<BeginpageloggedinWidget> {
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
