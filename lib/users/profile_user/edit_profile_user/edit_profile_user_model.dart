import '/components/divider/divider_widget.dart';
import '/components/header_administrator/header_administrator_widget.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'edit_profile_user_widget.dart' show EditProfileUserWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProfileUserModel extends FlutterFlowModel<EditProfileUserWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderAdministrator component.
  late HeaderAdministratorModel headerAdministratorModel;
  // Model for SubHeader component.
  late SubHeaderModel subHeaderModel;
  // State field(s) for FullNameTextField widget.
  FocusNode? fullNameTextFieldFocusNode1;
  TextEditingController? fullNameTextFieldTextController1;
  String? Function(BuildContext, String?)?
      fullNameTextFieldTextController1Validator;
  // State field(s) for FullNameTextField widget.
  FocusNode? fullNameTextFieldFocusNode2;
  TextEditingController? fullNameTextFieldTextController2;
  String? Function(BuildContext, String?)?
      fullNameTextFieldTextController2Validator;
  // Model for Divider component.
  late DividerModel dividerModel1;
  // State field(s) for AddressTextField widget.
  FocusNode? addressTextFieldFocusNode;
  TextEditingController? addressTextFieldTextController;
  String? Function(BuildContext, String?)?
      addressTextFieldTextControllerValidator;
  // Model for Divider component.
  late DividerModel dividerModel2;
  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode;
  TextEditingController? emailTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailTextFieldTextControllerValidator;
  // Model for Divider component.
  late DividerModel dividerModel3;
  // State field(s) for PhoneTextField widget.
  FocusNode? phoneTextFieldFocusNode;
  TextEditingController? phoneTextFieldTextController;
  String? Function(BuildContext, String?)?
      phoneTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    headerAdministratorModel =
        createModel(context, () => HeaderAdministratorModel());
    subHeaderModel = createModel(context, () => SubHeaderModel());
    dividerModel1 = createModel(context, () => DividerModel());
    dividerModel2 = createModel(context, () => DividerModel());
    dividerModel3 = createModel(context, () => DividerModel());
  }

  @override
  void dispose() {
    headerAdministratorModel.dispose();
    subHeaderModel.dispose();
    fullNameTextFieldFocusNode1?.dispose();
    fullNameTextFieldTextController1?.dispose();

    fullNameTextFieldFocusNode2?.dispose();
    fullNameTextFieldTextController2?.dispose();

    dividerModel1.dispose();
    addressTextFieldFocusNode?.dispose();
    addressTextFieldTextController?.dispose();

    dividerModel2.dispose();
    emailTextFieldFocusNode?.dispose();
    emailTextFieldTextController?.dispose();

    dividerModel3.dispose();
    phoneTextFieldFocusNode?.dispose();
    phoneTextFieldTextController?.dispose();
  }
}
