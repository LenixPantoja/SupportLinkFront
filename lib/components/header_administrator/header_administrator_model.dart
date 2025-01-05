import '/flutter_flow/flutter_flow_util.dart';
import 'header_administrator_widget.dart' show HeaderAdministratorWidget;
import 'package:flutter/material.dart';

class HeaderAdministratorModel
    extends FlutterFlowModel<HeaderAdministratorWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
