import '/components/app_bar1_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/navbar/nav_barr/nav_barr_widget.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  bool viewmore = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Slide-article widget.
  PageController? slideArticleController;

  int get slideArticleCurrentIndex => slideArticleController != null &&
          slideArticleController!.hasClients &&
          slideArticleController!.page != null
      ? slideArticleController!.page!.round()
      : 0;
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
