import '../../../backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'modal_create_ticket_user_model.dart';
export 'modal_create_ticket_user_model.dart';
import 'package:http/http.dart' as http;


class ModalCreateTicketUserWidget extends StatefulWidget {
  const ModalCreateTicketUserWidget({super.key});

  @override
  State<ModalCreateTicketUserWidget> createState() =>
      _ModalCreateTicketUserWidgetState();
}

class _ModalCreateTicketUserWidgetState
    extends State<ModalCreateTicketUserWidget> {
  late ModalCreateTicketUserModel _model;
  List<dynamic> typesList = [];
  List<dynamic> groupsList = [];
  List<dynamic> priorityList = [];

  List<FFUploadedFile> uploadedFiles = [];


  String? selectedType;
  String? selectedGroup;
  int? idType=0;
  int? idGroup=0;
  int? idPriority=0;


  Future<void> _fetchTypes() async {
    try {
      ApiGetTipoSolicitud apiCall = ApiGetTipoSolicitud();
      List<dynamic> dataTypes = await apiCall.fetchTypeRequest();
      // Save in
      setState(() {
        typesList = dataTypes;
        // Get information of content api response
        
      });
    } catch (e) {
      print("Error al obtener los typos: $e");
      // Puedes mostrar un mensaje de error en la UI si es necesario.
    }
  }

  Future<void> _fetchGroups() async {
    try {
      ApiGetGroups apiCall = ApiGetGroups();
      List<dynamic> dataGroups = await apiCall.fetchGroups();
      // Save in
      setState(() {
        groupsList = dataGroups;
        // Get information of content api response
        
      });
    } catch (e) {
      print("Error al obtener los grupos: $e");
      // Puedes mostrar un mensaje de error en la UI si es necesario.
    }
  }

  Future<void> _fetchPriority() async {
    try {
      ApiGetPriority apiCall = ApiGetPriority();
      List<dynamic> dataPriority = await apiCall.fetchPriority();
      // Save in
      setState(() {
        priorityList = dataPriority;
        // Get information of content api response
        
      });
    } catch (e) {
      print("Error al obtener los grupos: $e");
      // Puedes mostrar un mensaje de error en la UI si es necesario.
    }
  }
  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();

    _fetchTypes();
    _fetchGroups();
    _fetchPriority();

    _model = createModel(context, () => ModalCreateTicketUserModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    _model.messageTextFieldTextController ??= TextEditingController();
    _model.messageTextFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(0.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 2.0,
          sigmaY: 2.0,
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).bgModal,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Spacer(),
              Expanded(
                flex: 4,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      Spacer(),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 10.0, 0.0),
                                            child: FlutterFlowIconButton(
                                              borderRadius: 20.0,
                                              borderWidth: 1.0,
                                              buttonSize: 40.0,
                                              icon: Icon(
                                                Icons.close,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 24.0,
                                              ),
                                              onPressed: () async {
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 20.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Flexible(
                                              child: Text(
                                                'Nuevo ticket',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 32.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 20.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.stretch,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Flexible(
                                                        child: Text(
                                                          'Asunto',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  TextFormField(
                                                    controller:
                                                        _model.textController1,
                                                    focusNode: _model
                                                        .textFieldFocusNode,
                                                    onChanged: (_) =>
                                                        EasyDebounce.debounce(
                                                      '_model.textController1',
                                                      Duration(
                                                          milliseconds: 500),
                                                      () => safeSetState(() {}),
                                                    ),
                                                    autofocus: false,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      isDense: false,
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintText:
                                                          'Asunto del ticket',
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .neutral500,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .neutral100,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                      ),
                                                      contentPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    cursorColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    validator: _model
                                                        .textController1Validator
                                                        .asValidator(context),
                                                  ),
                                                ].divide(SizedBox(height: 8.0)),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 20.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.stretch,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Flexible(
                                                        child: Text(
                                                          'Tipo de solicitud',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  FlutterFlowDropDown<String>(
                                                    controller: _model.dropDownValueController1 ??= FormFieldController<String>(null),
                                                    options: typesList.isEmpty
                                                        ? ['Cargando...']  // Si los tipos están vacíos, mostrar "Cargando..."
                                                        : typesList.map<String>((type) => type['Type_ticket_name'] as String).toList(),  // Mostrar los nombres
                                                    onChanged: (val) {
                                                      setState(() {
                                                        selectedType = val;
                                                      });
                                                      
                                                      // Get `id` of types:
                                                      int? selectedId = typesList.firstWhere((type) => type['Type_ticket_name'] == val)['id'];
                                                      idType = selectedId; // Assign id at variable
                                                      print("ID seleccionado: $selectedId");
                                                    },
                                                    width: 200.0,
                                                    height: 40.0,
                                                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      fontFamily: 'Plus Jakarta Sans',
                                                      letterSpacing: 0.0,
                                                    ),
                                                    hintText: 'Seleccionar tipo',
                                                    icon: Icon(
                                                      Icons.keyboard_arrow_down_rounded,
                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor: Colors.transparent,
                                                    borderWidth: 0.0,
                                                    borderRadius: 8.0,
                                                    margin: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                    hidesUnderline: true,
                                                    isOverButton: false,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  ),
                                                  // Mostrar el tipo seleccionado
                                                  if (selectedType != null)
                                                    Text('Tipo seleccionado: $selectedType'),
                                                ].divide(SizedBox(height: 8.0)),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 20.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.stretch,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Flexible(
                                                        child: Text(
                                                          'Grupo',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  FlutterFlowDropDown<String>(
                                                    controller: _model
                                                            .dropDownValueController2 ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options: groupsList.isEmpty
                                                        ? ['Cargando...']  // Si los tipos están vacíos, mostrar "Cargando..."
                                                        : groupsList.map<String>((type) => type['Name_Group'] as String).toList(),  // Mostrar los nombres
                                                    onChanged: (val) {
                                                      setState(() {
                                                        selectedGroup = val;
                                                      });
                                                      
                                                      // Get `id` of groups:
                                                      int? selecteGroupdId = groupsList.firstWhere((type) => type['Name_Group'] == val)['Id_Group'];
                                                      idGroup = selecteGroupdId;
                                                      print("ID seleccionadoGrupo: $selecteGroupdId");
                                                    },
                                                    width: 200.0,
                                                    height: 40.0,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintText:
                                                        'Seleccionar prioridad',
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderWidth: 0.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 0.0,
                                                                12.0, 0.0),
                                                    hidesUnderline: true,
                                                    isOverButton: false,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  ),
                                                ].divide(SizedBox(height: 8.0)),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 16.0)),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 32.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 20.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.stretch,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Flexible(
                                                        child: Text(
                                                          'Prioridad',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  FlutterFlowDropDown<String>(
                                                    controller: _model
                                                            .dropDownValueController3 ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options: priorityList.isEmpty
                                                        ? ['Cargando...']  // Si los tipos están vacíos, mostrar "Cargando..."
                                                        : priorityList.map<String>((type) => type['Priority_name'] as String).toList(),  // Mostrar los nombres
                                                    onChanged: (val) {
                                                      setState(() {
                                                        selectedType = val;
                                                      });
                                                      
                                                      // Get `id` of prioridad:
                                                      int? selectedPriodityId = priorityList.firstWhere((type) => type['Priority_name'] == val)['Priority_id'];
                                                      idPriority = selectedPriodityId;
                                                      print("ID seleccionadoPrioridad: $selectedPriodityId");
                                                    },
                                                    width: 200.0,
                                                    height: 40.0,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintText: 'Select...',
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderWidth: 0.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 0.0,
                                                                12.0, 0.0),
                                                    hidesUnderline: true,
                                                    isOverButton: false,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  ),
                                                ].divide(SizedBox(height: 8.0)),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 20.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.stretch,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Flexible(
                                                        child: Text(
                                                          'Descripción',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    width: double.infinity,
                                                    height: 500.0,
                                                    decoration: BoxDecoration(),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(20.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .stretch,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                border:
                                                                    Border.all(
                                                                  color:
                                                                      valueOrDefault<
                                                                          Color>(
                                                                    _model.messageTextFieldTextController.text !=
                                                                                null &&
                                                                            _model.messageTextFieldTextController.text !=
                                                                                ''
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .primary
                                                                        : FlutterFlowTheme.of(context)
                                                                            .neutral100,
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .neutral100,
                                                                  ),
                                                                ),
                                                              ),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          250.0,
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            _model.messageTextFieldTextController,
                                                                        focusNode:
                                                                            _model.messageTextFieldFocusNode,
                                                                        onChanged:
                                                                            (_) =>
                                                                                EasyDebounce.debounce(
                                                                          '_model.messageTextFieldTextController',
                                                                          Duration(
                                                                              milliseconds: 500),
                                                                          () =>
                                                                              safeSetState(() {}),
                                                                        ),
                                                                        autofocus:
                                                                            false,
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          labelStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          hintText:
                                                                              'Write message down here ...',
                                                                          hintStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                color: FlutterFlowTheme.of(context).neutral400,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          enabledBorder:
                                                                              InputBorder.none,
                                                                          focusedBorder:
                                                                              InputBorder.none,
                                                                          errorBorder:
                                                                              InputBorder.none,
                                                                          focusedErrorBorder:
                                                                              InputBorder.none,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        maxLines:
                                                                            30,
                                                                        cursorColor:
                                                                            FlutterFlowTheme.of(context).primaryText,
                                                                        validator: _model
                                                                            .messageTextFieldTextControllerValidator
                                                                            .asValidator(context),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  FlutterFlowIconButton(
  borderColor: Colors.transparent,
  borderRadius: 20.0,
  borderWidth: 1.0,
  buttonSize: 40.0,
  icon: Icon(
    Icons.attach_file,
    color: FlutterFlowTheme.of(context).neutral500,
    size: 20.0,
  ),
  onPressed: () async {
    final selectedFiles = await selectFiles(
      multiFile: true, // Habilitar selección de múltiples archivos
    );
    if (selectedFiles != null) {
      safeSetState(() => _model.isDataUploading = true);
      try {
        uploadedFiles.addAll(
          selectedFiles.map((file) => FFUploadedFile(
                name: file.storagePath.split('/').last,
                bytes: file.bytes,
              )),
        );
        // Muestra un mensaje de éxito
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Archivos cargados correctamente."),
            duration: Duration(milliseconds: 1500),
          ),
        );
      } finally {
        safeSetState(() => _model.isDataUploading = false);
      }
    }
  },
),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        16.0)),
                                                              ),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 16.0)),
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(height: 8.0)),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 16.0)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
  padding: EdgeInsets.all(20.0),
  child: Row(
    mainAxisSize: MainAxisSize.max,
    children: [
      Expanded(
        child: FFButtonWidget(
          onPressed: () async {
            dataUser userData = dataUser();
            
            // Crear un objeto de multipart request
            var uri = Uri.parse(
                '${ServicesBackendGroup.getBaseUrl()}/api/Ticket/tickets/');
            var request = http.MultipartRequest('POST', uri);
            int id_agent_default=2;
            // Agregar datos del ticket
            request.fields.addAll({
              "ticket_affair": _model.textController1.text,
              "ticket_description": _model.messageTextFieldTextController.text,
              "ticket_user_contact": userData.idUser.toString(),
              "ticket_user_agent": id_agent_default.toString(),
              "ticket_group": idGroup.toString(),
              "ticket_priority": idPriority.toString(),
              "ticket_state": "1", // Por defecto en estado abierto
              "ticket_type": idType.toString(),
            });

            // Agregar archivos adjuntos
            for (var file in uploadedFiles) {
              request.files.add(http.MultipartFile.fromBytes(
                'files', // Nombre del campo en la API
                file.bytes!,
                filename: file.name,
              ));
            }

            // Enviar la solicitud
            var response = await request.send();

            // Leer y decodificar la respuesta
            final responseString = await response.stream.bytesToString();
            print('Respuesta del servidor: $responseString');

            // Manejar la respuesta
            if (response.statusCode == 201) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'Ticket creado correctamente con archivos adjuntos!',
                    style: FlutterFlowTheme.of(context)
                        .titleLarge
                        .override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: FlutterFlowTheme.of(context).white0,
                        ),
                  ),
                  duration: Duration(milliseconds: 3000),
                  backgroundColor: FlutterFlowTheme.of(context).success,
                ),
              );
              Navigator.pop(context); // Cerrar la pantalla
            } else {
              print('Error: ${response.statusCode}');
              print('Detalles del error: $responseString'); // Mostrar detalles del error
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Error al crear el ticket.'),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          text: 'Guardar',
          options: FFButtonOptions(
            width: 250.0,
            height: 50.0,
            padding:
                EdgeInsetsDirectional.fromSTEB(24.0, 13.0, 24.0, 13.0),
            iconPadding:
                EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            color: FlutterFlowTheme.of(context).primary,
            textStyle: FlutterFlowTheme.of(context)
                .titleLarge
                .override(
                  fontFamily: 'Plus Jakarta Sans',
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  letterSpacing: 0.0,
                ),
            elevation: 0.0,
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    ],
  ),
),

                            ],
                          ),
                        ),
                      ),
                    ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      Spacer(),
                  ],
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
