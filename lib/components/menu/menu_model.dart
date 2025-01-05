import '/components/menu_item/menu_item_widget.dart';
import '/components/sub_menu_item/sub_menu_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'menu_widget.dart' show MenuWidget;
import 'package:flutter/material.dart';

class MenuModel extends FlutterFlowModel<MenuWidget> {
  ///  Local state fields for this component.

  bool subMenuOrders = false;

  bool showUpgrade = true;

  ///  State fields for stateful widgets in this component.

  // Model for MenuItem component.
  late MenuItemModel menuItemModel1;
  // Model for MenuItem component.
  late MenuItemModel menuItemModel2;
  // Model for MenuItem component.
  late MenuItemModel menuItemModel3;
  // Model for SubMenuItem component.
  late SubMenuItemModel subMenuItemModel1;
  // Model for SubMenuItem component.
  late SubMenuItemModel subMenuItemModel2;
  // Model for SubMenuItem component.
  late SubMenuItemModel subMenuItemModel3;
  // Model for MenuItem component.
  late MenuItemModel menuItemModel4;
  // Model for MenuItem component.
  late MenuItemModel menuItemModel5;

  @override
  void initState(BuildContext context) {
    menuItemModel1 = createModel(context, () => MenuItemModel());
    menuItemModel2 = createModel(context, () => MenuItemModel());
    menuItemModel3 = createModel(context, () => MenuItemModel());
    subMenuItemModel1 = createModel(context, () => SubMenuItemModel());
    subMenuItemModel2 = createModel(context, () => SubMenuItemModel());
    subMenuItemModel3 = createModel(context, () => SubMenuItemModel());
    menuItemModel4 = createModel(context, () => MenuItemModel());
    menuItemModel5 = createModel(context, () => MenuItemModel());
  }

  @override
  void dispose() {
    menuItemModel1.dispose();
    menuItemModel2.dispose();
    menuItemModel3.dispose();
    subMenuItemModel1.dispose();
    subMenuItemModel2.dispose();
    subMenuItemModel3.dispose();
    menuItemModel4.dispose();
    menuItemModel5.dispose();
  }
}
