import '/components/header_administrator/header_administrator_widget.dart';
import '/components/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'groups_widget.dart' show GroupsWidget;
import 'package:flutter/material.dart';

class GroupsModel extends FlutterFlowModel<GroupsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;
  // Model for HeaderAdministrator component.
  late HeaderAdministratorModel headerAdministratorModel;

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
  }
}
