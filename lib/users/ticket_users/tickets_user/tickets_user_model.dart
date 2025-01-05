import '/components/divider/divider_widget.dart';
import '/components/heade_user/heade_user_widget.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tickets_user_widget.dart' show TicketsUserWidget;
import 'package:flutter/material.dart';

class TicketsUserModel extends FlutterFlowModel<TicketsUserWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeadeUser component.
  late HeadeUserModel headeUserModel;
  // Model for SubHeader component.
  late SubHeaderModel subHeaderModel;
  // State field(s) for SearchTextField widget.
  FocusNode? searchTextFieldFocusNode;
  TextEditingController? searchTextFieldTextController;
  String? Function(BuildContext, String?)?
      searchTextFieldTextControllerValidator;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for txtAffairOpen widget.
  FocusNode? txtAffairOpenFocusNode;
  TextEditingController? txtAffairOpenTextController;
  String? Function(BuildContext, String?)? txtAffairOpenTextControllerValidator;
  // State field(s) for txtAffairPending widget.
  FocusNode? txtAffairPendingFocusNode;
  TextEditingController? txtAffairPendingTextController;
  String? Function(BuildContext, String?)?
      txtAffairPendingTextControllerValidator;
  // State field(s) for txtAffairClosedTicket widget.
  FocusNode? txtAffairClosedTicketFocusNode;
  TextEditingController? txtAffairClosedTicketTextController;
  String? Function(BuildContext, String?)?
      txtAffairClosedTicketTextControllerValidator;
  // State field(s) for txtPriority widget.
  FocusNode? txtPriorityFocusNode;
  TextEditingController? txtPriorityTextController;
  String? Function(BuildContext, String?)? txtPriorityTextControllerValidator;
  // State field(s) for txtGroup widget.
  FocusNode? txtGroupFocusNode;
  TextEditingController? txtGroupTextController;
  String? Function(BuildContext, String?)? txtGroupTextControllerValidator;
  // State field(s) for txtType widget.
  FocusNode? txtTypeFocusNode;
  TextEditingController? txtTypeTextController;
  String? Function(BuildContext, String?)? txtTypeTextControllerValidator;
  // Model for Divider component.
  late DividerModel dividerModel1;
  // State field(s) for txtDescriptionTicket widget.
  FocusNode? txtDescriptionTicketFocusNode;
  TextEditingController? txtDescriptionTicketTextController;
  String? Function(BuildContext, String?)?
      txtDescriptionTicketTextControllerValidator;
  // Model for Divider component.
  late DividerModel dividerModel2;
  // Model for Divider component.
  late DividerModel dividerModel3;
  // Model for Divider component.
  late DividerModel dividerModel4;
  // State field(s) for txtCommentResponse widget.
  FocusNode? txtCommentResponseFocusNode;
  TextEditingController? txtCommentResponseTextController;
  String? Function(BuildContext, String?)?
      txtCommentResponseTextControllerValidator;
  // Model for Divider component.
  late DividerModel dividerModel5;
  // Model for Divider component.
  late DividerModel dividerModel6;
  // State field(s) for MessageTextField widget.
  FocusNode? messageTextFieldFocusNode;
  TextEditingController? messageTextFieldTextController;
  String? Function(BuildContext, String?)?
      messageTextFieldTextControllerValidator;
  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];

  @override
  void initState(BuildContext context) {
    headeUserModel = createModel(context, () => HeadeUserModel());
    subHeaderModel = createModel(context, () => SubHeaderModel());
    dividerModel1 = createModel(context, () => DividerModel());
    dividerModel2 = createModel(context, () => DividerModel());
    dividerModel3 = createModel(context, () => DividerModel());
    dividerModel4 = createModel(context, () => DividerModel());
    dividerModel5 = createModel(context, () => DividerModel());
    dividerModel6 = createModel(context, () => DividerModel());
  }

  @override
  void dispose() {
    headeUserModel.dispose();
    subHeaderModel.dispose();
    searchTextFieldFocusNode?.dispose();
    searchTextFieldTextController?.dispose();

    tabBarController?.dispose();
    txtAffairOpenFocusNode?.dispose();
    txtAffairOpenTextController?.dispose();

    txtAffairPendingFocusNode?.dispose();
    txtAffairPendingTextController?.dispose();

    txtAffairClosedTicketFocusNode?.dispose();
    txtAffairClosedTicketTextController?.dispose();

    txtPriorityFocusNode?.dispose();
    txtPriorityTextController?.dispose();

    txtGroupFocusNode?.dispose();
    txtGroupTextController?.dispose();

    txtTypeFocusNode?.dispose();
    txtTypeTextController?.dispose();

    dividerModel1.dispose();
    txtDescriptionTicketFocusNode?.dispose();
    txtDescriptionTicketTextController?.dispose();

    dividerModel2.dispose();
    dividerModel3.dispose();
    dividerModel4.dispose();
    txtCommentResponseFocusNode?.dispose();
    txtCommentResponseTextController?.dispose();

    dividerModel5.dispose();
    dividerModel6.dispose();
    messageTextFieldFocusNode?.dispose();
    messageTextFieldTextController?.dispose();
  }
}
