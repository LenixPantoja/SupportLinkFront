import '/components/header_administrator/header_administrator_widget.dart';
import '/components/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'ticket_administrator_widget.dart' show TicketAdministratorWidget;
import 'package:flutter/material.dart';

class TicketAdministratorModel
    extends FlutterFlowModel<TicketAdministratorWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;
  // Model for HeaderAdministrator component.
  late HeaderAdministratorModel headerAdministratorModel;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // State field(s) for DropDown widget.
  String? dropDownValue5;
  FormFieldController<String>? dropDownValueController5;
  // State field(s) for DropDown widget.
  String? dropDownValue6;
  FormFieldController<String>? dropDownValueController6;
  // State field(s) for DropDown widget.
  String? dropDownValue7;
  FormFieldController<String>? dropDownValueController7;
  // State field(s) for DropDown widget.
  String? dropDownValue8;
  FormFieldController<String>? dropDownValueController8;
  // State field(s) for DropDown widget.
  String? dropDownValue9;
  FormFieldController<String>? dropDownValueController9;
  // State field(s) for DropDown widget.
  String? dropDownValue10;
  FormFieldController<String>? dropDownValueController10;
  // State field(s) for DropDown widget.
  String? dropDownValue11;
  FormFieldController<String>? dropDownValueController11;
  // State field(s) for DropDown widget.
  String? dropDownValue12;
  FormFieldController<String>? dropDownValueController12;
  // State field(s) for DropDown widget.
  String? dropDownValue13;
  FormFieldController<String>? dropDownValueController13;
  // State field(s) for DropDown widget.
  String? dropDownValue14;
  FormFieldController<String>? dropDownValueController14;
  // State field(s) for DropDown widget.
  String? dropDownValue15;
  FormFieldController<String>? dropDownValueController15;
  // State field(s) for DropDown widget.
  String? dropDownValue16;
  FormFieldController<String>? dropDownValueController16;

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
