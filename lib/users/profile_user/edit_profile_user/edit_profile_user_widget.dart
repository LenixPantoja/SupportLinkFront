import '/components/divider/divider_widget.dart';
import '/components/header_administrator/header_administrator_widget.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'edit_profile_user_model.dart';
export 'edit_profile_user_model.dart';

class EditProfileUserWidget extends StatefulWidget {
  const EditProfileUserWidget({super.key});

  @override
  State<EditProfileUserWidget> createState() => _EditProfileUserWidgetState();
}

class _EditProfileUserWidgetState extends State<EditProfileUserWidget> {
  late EditProfileUserModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditProfileUserModel());

    _model.fullNameTextFieldTextController1 ??= TextEditingController();
    _model.fullNameTextFieldFocusNode1 ??= FocusNode();

    _model.fullNameTextFieldTextController2 ??= TextEditingController();
    _model.fullNameTextFieldFocusNode2 ??= FocusNode();

    _model.addressTextFieldTextController ??= TextEditingController();
    _model.addressTextFieldFocusNode ??= FocusNode();

    _model.emailTextFieldTextController ??= TextEditingController();
    _model.emailTextFieldFocusNode ??= FocusNode();

    _model.phoneTextFieldTextController ??= TextEditingController();
    _model.phoneTextFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.headerAdministratorModel,
                              updateCallback: () => safeSetState(() {}),
                              updateOnChange: true,
                              child: const HeaderAdministratorWidget(),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .textFieldBachGround,
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 20.0, 0.0),
                                        child: Wrap(
                                          spacing: 20.0,
                                          runSpacing: 20.0,
                                          alignment: WrapAlignment.start,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.start,
                                          direction: Axis.horizontal,
                                          runAlignment: WrapAlignment.start,
                                          verticalDirection:
                                              VerticalDirection.down,
                                          clipBehavior: Clip.none,
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      20.0,
                                                                      0.0,
                                                                      20.0,
                                                                      0.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              context.pushNamed(
                                                                'TicketsUser',
                                                                extra: <String,
                                                                    dynamic>{
                                                                  kTransitionInfoKey:
                                                                      const TransitionInfo(
                                                                    hasTransition:
                                                                        true,
                                                                    transitionType:
                                                                        PageTransitionType
                                                                            .bottomToTop,
                                                                    duration: Duration(
                                                                        milliseconds:
                                                                            300),
                                                                  ),
                                                                },
                                                              );
                                                            },
                                                            child:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .subHeaderModel,
                                                              updateCallback: () =>
                                                                  safeSetState(
                                                                      () {}),
                                                              child:
                                                                  const SubHeaderWidget(
                                                                title:
                                                                    'My perfil',
                                                                showBackBtn:
                                                                    true,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Wrap(
                                                      spacing: 24.0,
                                                      runSpacing: 24.0,
                                                      alignment:
                                                          WrapAlignment.start,
                                                      crossAxisAlignment:
                                                          WrapCrossAlignment
                                                              .start,
                                                      direction:
                                                          Axis.horizontal,
                                                      runAlignment:
                                                          WrapAlignment.center,
                                                      verticalDirection:
                                                          VerticalDirection
                                                              .down,
                                                      clipBehavior: Clip.none,
                                                      children: [
                                                        Container(
                                                          width:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .stretch,
                                                                children: [
                                                                  SingleChildScrollView(
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children:
                                                                          [
                                                                        Container(
                                                                          width:
                                                                              100.0,
                                                                          height:
                                                                              100.0,
                                                                          clipBehavior:
                                                                              Clip.antiAlias,
                                                                          decoration:
                                                                              const BoxDecoration(
                                                                            shape:
                                                                                BoxShape.circle,
                                                                          ),
                                                                          child:
                                                                              CachedNetworkImage(
                                                                            fadeInDuration:
                                                                                const Duration(milliseconds: 500),
                                                                            fadeOutDuration:
                                                                                const Duration(milliseconds: 500),
                                                                            imageUrl:
                                                                                'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHx1c2VyfGVufDB8fHx8MTY5OTQxODQ1OHww&ixlib=rb-4.0.3&q=80&w=1080',
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        Wrap(
                                                                          spacing:
                                                                              20.0,
                                                                          runSpacing:
                                                                              16.0,
                                                                          alignment:
                                                                              WrapAlignment.start,
                                                                          crossAxisAlignment:
                                                                              WrapCrossAlignment.start,
                                                                          direction:
                                                                              Axis.horizontal,
                                                                          runAlignment:
                                                                              WrapAlignment.start,
                                                                          verticalDirection:
                                                                              VerticalDirection.down,
                                                                          clipBehavior:
                                                                              Clip.none,
                                                                          children: [
                                                                            Container(
                                                                              width: 300.0,
                                                                              decoration: const BoxDecoration(),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Photo Profile',
                                                                                        style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Change photo profile use',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              color: FlutterFlowTheme.of(context).neutral500,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ].divide(const SizedBox(height: 4.0)),
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              width: 600.0,
                                                                              decoration: const BoxDecoration(),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Wrap(
                                                                          spacing:
                                                                              20.0,
                                                                          runSpacing:
                                                                              16.0,
                                                                          alignment:
                                                                              WrapAlignment.start,
                                                                          crossAxisAlignment:
                                                                              WrapCrossAlignment.start,
                                                                          direction:
                                                                              Axis.horizontal,
                                                                          runAlignment:
                                                                              WrapAlignment.start,
                                                                          verticalDirection:
                                                                              VerticalDirection.down,
                                                                          clipBehavior:
                                                                              Clip.none,
                                                                          children: [
                                                                            Container(
                                                                              width: 300.0,
                                                                              decoration: const BoxDecoration(),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Nombres',
                                                                                        style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Text(
                                                                                        ' ',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              color: FlutterFlowTheme.of(context).neutral500,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ].divide(const SizedBox(height: 4.0)),
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              width: 600.0,
                                                                              decoration: const BoxDecoration(),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  SizedBox(
                                                                                    width: 400.0,
                                                                                    child: TextFormField(
                                                                                      controller: _model.fullNameTextFieldTextController1,
                                                                                      focusNode: _model.fullNameTextFieldFocusNode1,
                                                                                      onChanged: (_) => EasyDebounce.debounce(
                                                                                        '_model.fullNameTextFieldTextController1',
                                                                                        const Duration(milliseconds: 500),
                                                                                        () => safeSetState(() {}),
                                                                                      ),
                                                                                      autofocus: false,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        hintText: 'Ingrese nombres',
                                                                                        hintStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              color: FlutterFlowTheme.of(context).neutral300,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        enabledBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).neutral100,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(4.0),
                                                                                        ),
                                                                                        focusedBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(4.0),
                                                                                        ),
                                                                                        errorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(4.0),
                                                                                        ),
                                                                                        focusedErrorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(4.0),
                                                                                        ),
                                                                                        contentPadding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      maxLength: 25,
                                                                                      maxLengthEnforcement: MaxLengthEnforcement.none,
                                                                                      cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                      validator: _model.fullNameTextFieldTextController1Validator.asValidator(context),
                                                                                    ),
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Max 25 character',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              color: FlutterFlowTheme.of(context).neutral400,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Wrap(
                                                                          spacing:
                                                                              20.0,
                                                                          runSpacing:
                                                                              16.0,
                                                                          alignment:
                                                                              WrapAlignment.start,
                                                                          crossAxisAlignment:
                                                                              WrapCrossAlignment.start,
                                                                          direction:
                                                                              Axis.horizontal,
                                                                          runAlignment:
                                                                              WrapAlignment.start,
                                                                          verticalDirection:
                                                                              VerticalDirection.down,
                                                                          clipBehavior:
                                                                              Clip.none,
                                                                          children: [
                                                                            Container(
                                                                              width: 300.0,
                                                                              decoration: const BoxDecoration(),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Apellidos',
                                                                                        style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Text(
                                                                                        ' ',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              color: FlutterFlowTheme.of(context).neutral500,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ].divide(const SizedBox(height: 4.0)),
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              width: 600.0,
                                                                              decoration: const BoxDecoration(),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  SizedBox(
                                                                                    width: 400.0,
                                                                                    child: TextFormField(
                                                                                      controller: _model.fullNameTextFieldTextController2,
                                                                                      focusNode: _model.fullNameTextFieldFocusNode2,
                                                                                      onChanged: (_) => EasyDebounce.debounce(
                                                                                        '_model.fullNameTextFieldTextController2',
                                                                                        const Duration(milliseconds: 500),
                                                                                        () => safeSetState(() {}),
                                                                                      ),
                                                                                      autofocus: false,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        hintText: 'Ingrese apellidos',
                                                                                        hintStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              color: FlutterFlowTheme.of(context).neutral300,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        enabledBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).neutral100,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(4.0),
                                                                                        ),
                                                                                        focusedBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(4.0),
                                                                                        ),
                                                                                        errorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(4.0),
                                                                                        ),
                                                                                        focusedErrorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(4.0),
                                                                                        ),
                                                                                        contentPadding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      maxLength: 25,
                                                                                      maxLengthEnforcement: MaxLengthEnforcement.none,
                                                                                      cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                      validator: _model.fullNameTextFieldTextController2Validator.asValidator(context),
                                                                                    ),
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Max 25 character',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              color: FlutterFlowTheme.of(context).neutral400,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        wrapWithModel(
                                                                          model:
                                                                              _model.dividerModel1,
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              const DividerWidget(
                                                                            titleInLeftSide:
                                                                                false,
                                                                          ),
                                                                        ),
                                                                        Wrap(
                                                                          spacing:
                                                                              20.0,
                                                                          runSpacing:
                                                                              16.0,
                                                                          alignment:
                                                                              WrapAlignment.start,
                                                                          crossAxisAlignment:
                                                                              WrapCrossAlignment.start,
                                                                          direction:
                                                                              Axis.horizontal,
                                                                          runAlignment:
                                                                              WrapAlignment.start,
                                                                          verticalDirection:
                                                                              VerticalDirection.down,
                                                                          clipBehavior:
                                                                              Clip.none,
                                                                          children: [
                                                                            Container(
                                                                              width: 300.0,
                                                                              decoration: const BoxDecoration(),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Profesion',
                                                                                        style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ].divide(const SizedBox(height: 4.0)),
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              width: 600.0,
                                                                              decoration: const BoxDecoration(),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  SizedBox(
                                                                                    width: 400.0,
                                                                                    child: TextFormField(
                                                                                      controller: _model.addressTextFieldTextController,
                                                                                      focusNode: _model.addressTextFieldFocusNode,
                                                                                      onChanged: (_) => EasyDebounce.debounce(
                                                                                        '_model.addressTextFieldTextController',
                                                                                        const Duration(milliseconds: 500),
                                                                                        () => safeSetState(() {}),
                                                                                      ),
                                                                                      autofocus: false,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        hintText: 'Ingrese profesión',
                                                                                        hintStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              color: FlutterFlowTheme.of(context).neutral300,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        enabledBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).neutral100,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(4.0),
                                                                                        ),
                                                                                        focusedBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(4.0),
                                                                                        ),
                                                                                        errorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(4.0),
                                                                                        ),
                                                                                        focusedErrorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(4.0),
                                                                                        ),
                                                                                        contentPadding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                      validator: _model.addressTextFieldTextControllerValidator.asValidator(context),
                                                                                    ),
                                                                                  ),
                                                                                ].divide(const SizedBox(height: 10.0)),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        wrapWithModel(
                                                                          model:
                                                                              _model.dividerModel2,
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              const DividerWidget(
                                                                            titleInLeftSide:
                                                                                false,
                                                                          ),
                                                                        ),
                                                                        Wrap(
                                                                          spacing:
                                                                              20.0,
                                                                          runSpacing:
                                                                              16.0,
                                                                          alignment:
                                                                              WrapAlignment.start,
                                                                          crossAxisAlignment:
                                                                              WrapCrossAlignment.start,
                                                                          direction:
                                                                              Axis.horizontal,
                                                                          runAlignment:
                                                                              WrapAlignment.start,
                                                                          verticalDirection:
                                                                              VerticalDirection.down,
                                                                          clipBehavior:
                                                                              Clip.none,
                                                                          children: [
                                                                            Container(
                                                                              width: 300.0,
                                                                              decoration: const BoxDecoration(),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Correo',
                                                                                        style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Correo electronico',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              color: FlutterFlowTheme.of(context).neutral500,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ].divide(const SizedBox(height: 4.0)),
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              width: 600.0,
                                                                              decoration: const BoxDecoration(),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  SizedBox(
                                                                                    width: 400.0,
                                                                                    child: TextFormField(
                                                                                      controller: _model.emailTextFieldTextController,
                                                                                      focusNode: _model.emailTextFieldFocusNode,
                                                                                      onChanged: (_) => EasyDebounce.debounce(
                                                                                        '_model.emailTextFieldTextController',
                                                                                        const Duration(milliseconds: 500),
                                                                                        () => safeSetState(() {}),
                                                                                      ),
                                                                                      autofocus: false,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        hintText: 'Input Email',
                                                                                        hintStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              color: FlutterFlowTheme.of(context).neutral300,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        enabledBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).neutral100,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(4.0),
                                                                                        ),
                                                                                        focusedBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(4.0),
                                                                                        ),
                                                                                        errorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(4.0),
                                                                                        ),
                                                                                        focusedErrorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(4.0),
                                                                                        ),
                                                                                        contentPadding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                      validator: _model.emailTextFieldTextControllerValidator.asValidator(context),
                                                                                    ),
                                                                                  ),
                                                                                ].divide(const SizedBox(height: 10.0)),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        wrapWithModel(
                                                                          model:
                                                                              _model.dividerModel3,
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              const DividerWidget(
                                                                            titleInLeftSide:
                                                                                false,
                                                                          ),
                                                                        ),
                                                                        Wrap(
                                                                          spacing:
                                                                              20.0,
                                                                          runSpacing:
                                                                              16.0,
                                                                          alignment:
                                                                              WrapAlignment.start,
                                                                          crossAxisAlignment:
                                                                              WrapCrossAlignment.start,
                                                                          direction:
                                                                              Axis.horizontal,
                                                                          runAlignment:
                                                                              WrapAlignment.start,
                                                                          verticalDirection:
                                                                              VerticalDirection.down,
                                                                          clipBehavior:
                                                                              Clip.none,
                                                                          children: [
                                                                            Container(
                                                                              width: 300.0,
                                                                              decoration: const BoxDecoration(),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Telefono - celular',
                                                                                        style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Phone Number',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              color: FlutterFlowTheme.of(context).neutral500,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ].divide(const SizedBox(height: 4.0)),
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              width: 600.0,
                                                                              decoration: const BoxDecoration(),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  SizedBox(
                                                                                    width: 400.0,
                                                                                    child: TextFormField(
                                                                                      controller: _model.phoneTextFieldTextController,
                                                                                      focusNode: _model.phoneTextFieldFocusNode,
                                                                                      onChanged: (_) => EasyDebounce.debounce(
                                                                                        '_model.phoneTextFieldTextController',
                                                                                        const Duration(milliseconds: 500),
                                                                                        () => safeSetState(() {}),
                                                                                      ),
                                                                                      autofocus: false,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        hintText: 'Input Phone Number',
                                                                                        hintStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              color: FlutterFlowTheme.of(context).neutral300,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        enabledBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).neutral100,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(4.0),
                                                                                        ),
                                                                                        focusedBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(4.0),
                                                                                        ),
                                                                                        errorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(4.0),
                                                                                        ),
                                                                                        focusedErrorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(4.0),
                                                                                        ),
                                                                                        contentPadding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                      validator: _model.phoneTextFieldTextControllerValidator.asValidator(context),
                                                                                    ),
                                                                                  ),
                                                                                ].divide(const SizedBox(height: 10.0)),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            FFButtonWidget(
                                                                              onPressed: () async {
                                                                                context.pushNamed('Home');
                                                                              },
                                                                              text: 'Guardar cambios',
                                                                              options: FFButtonOptions(
                                                                                width: 200.0,
                                                                                height: 50.0,
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 13.0, 24.0, 13.0),
                                                                                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                textStyle: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      color: FlutterFlowTheme.of(context).white0,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                                elevation: 0.0,
                                                                                borderSide: const BorderSide(
                                                                                  color: Colors.transparent,
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              height: 24.0)),
                                                                    ),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        16.0)),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                height: 24.0)),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ]
                                                    .divide(
                                                        const SizedBox(height: 24.0))
                                                    .addToStart(
                                                        const SizedBox(height: 12.0))
                                                    .addToEnd(
                                                        const SizedBox(height: 24.0)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ]
                                        .divide(const SizedBox(height: 20.0))
                                        .addToStart(const SizedBox(height: 20.0))
                                        .addToEnd(const SizedBox(height: 20.0)),
                                  ),
                                ),
                              ),
                            ),
                          ],
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
    );
  }
}
