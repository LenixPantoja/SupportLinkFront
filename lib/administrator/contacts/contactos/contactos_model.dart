import '/components/header_administrator/header_administrator_widget.dart';
import '/components/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'contactos_widget.dart' show ContactosWidget;
import 'package:flutter/material.dart';

class ContactosModel extends FlutterFlowModel<ContactosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;
  // Model for HeaderAdministrator component.
  late HeaderAdministratorModel headerAdministratorModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    headerAdministratorModel =
        createModel(context, () => HeaderAdministratorModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    headerAdministratorModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
