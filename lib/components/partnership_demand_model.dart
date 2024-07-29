import '/flutter_flow/flutter_flow_util.dart';
import 'partnership_demand_widget.dart' show PartnershipDemandWidget;
import 'package:flutter/material.dart';

class PartnershipDemandModel extends FlutterFlowModel<PartnershipDemandWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for partnerNameField widget.
  FocusNode? partnerNameFieldFocusNode;
  TextEditingController? partnerNameFieldTextController;
  String? Function(BuildContext, String?)?
      partnerNameFieldTextControllerValidator;
  // State field(s) for partnerDescriptiomField widget.
  FocusNode? partnerDescriptiomFieldFocusNode;
  TextEditingController? partnerDescriptiomFieldTextController;
  String? Function(BuildContext, String?)?
      partnerDescriptiomFieldTextControllerValidator;
  // State field(s) for partnerLPhoneield widget.
  FocusNode? partnerLPhoneieldFocusNode;
  TextEditingController? partnerLPhoneieldTextController;
  String? Function(BuildContext, String?)?
      partnerLPhoneieldTextControllerValidator;
  // State field(s) for partnerLinkField widget.
  FocusNode? partnerLinkFieldFocusNode1;
  TextEditingController? partnerLinkFieldTextController1;
  String? Function(BuildContext, String?)?
      partnerLinkFieldTextController1Validator;
  // State field(s) for partnerLinkField widget.
  FocusNode? partnerLinkFieldFocusNode2;
  TextEditingController? partnerLinkFieldTextController2;
  String? Function(BuildContext, String?)?
      partnerLinkFieldTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    partnerNameFieldFocusNode?.dispose();
    partnerNameFieldTextController?.dispose();

    partnerDescriptiomFieldFocusNode?.dispose();
    partnerDescriptiomFieldTextController?.dispose();

    partnerLPhoneieldFocusNode?.dispose();
    partnerLPhoneieldTextController?.dispose();

    partnerLinkFieldFocusNode1?.dispose();
    partnerLinkFieldTextController1?.dispose();

    partnerLinkFieldFocusNode2?.dispose();
    partnerLinkFieldTextController2?.dispose();
  }
}
