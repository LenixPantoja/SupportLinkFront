import '/components/address_row/address_row_widget.dart';
import '/components/header_administrator/header_administrator_widget.dart';
import '/components/menu/menu_widget.dart';
import '/components/review_card/review_card_widget.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'detail_building_widget.dart' show DetailBuildingWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetailBuildingModel extends FlutterFlowModel<DetailBuildingWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;
  // Model for HeaderAdministrator component.
  late HeaderAdministratorModel headerAdministratorModel;
  // Model for SubHeader component.
  late SubHeaderModel subHeaderModel;
  // Model for AddressRow component.
  late AddressRowModel addressRowModel1;
  // Model for AddressRow component.
  late AddressRowModel addressRowModel2;
  // Model for ReviewCard component.
  late ReviewCardModel reviewCardModel1;
  // Model for ReviewCard component.
  late ReviewCardModel reviewCardModel2;
  // Model for ReviewCard component.
  late ReviewCardModel reviewCardModel3;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    headerAdministratorModel =
        createModel(context, () => HeaderAdministratorModel());
    subHeaderModel = createModel(context, () => SubHeaderModel());
    addressRowModel1 = createModel(context, () => AddressRowModel());
    addressRowModel2 = createModel(context, () => AddressRowModel());
    reviewCardModel1 = createModel(context, () => ReviewCardModel());
    reviewCardModel2 = createModel(context, () => ReviewCardModel());
    reviewCardModel3 = createModel(context, () => ReviewCardModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    headerAdministratorModel.dispose();
    subHeaderModel.dispose();
    addressRowModel1.dispose();
    addressRowModel2.dispose();
    reviewCardModel1.dispose();
    reviewCardModel2.dispose();
    reviewCardModel3.dispose();
  }
}
