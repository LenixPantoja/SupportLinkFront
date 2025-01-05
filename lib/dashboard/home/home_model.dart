import '/components/header_administrator/header_administrator_widget.dart';
import '/components/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
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
