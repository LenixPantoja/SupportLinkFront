import '/components/calendar_widget.dart';
import '/components/header_administrator/header_administrator_widget.dart';
import '/components/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'dart:ui';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ticket_administrator_model.dart';
export 'ticket_administrator_model.dart';

class TicketAdministratorWidget extends StatefulWidget {
  const TicketAdministratorWidget({super.key});

  @override
  State<TicketAdministratorWidget> createState() =>
      _TicketAdministratorWidgetState();
}

class _TicketAdministratorWidgetState extends State<TicketAdministratorWidget>
    with TickerProviderStateMixin {
  late TicketAdministratorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TicketAdministratorModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
          child: Container(
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
                      if ((FFAppState().drawer &&
                              (MediaQuery.sizeOf(context).width <=
                                  kBreakpointSmall)) ||
                          (!FFAppState().drawer &&
                              (MediaQuery.sizeOf(context).width >
                                  kBreakpointSmall)))
                        wrapWithModel(
                          model: _model.menuModel,
                          updateCallback: () => safeSetState(() {}),
                          updateOnChange: true,
                          child: MenuWidget(
                            activePageName: 'Dashboard',
                            pageIsInSubMenu: false,
                          ),
                        ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.headerAdministratorModel,
                              updateCallback: () => safeSetState(() {}),
                              updateOnChange: true,
                              child: HeaderAdministratorWidget(),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 20.0, 20.0, 20.0),
                              child: Container(
                                width: double.infinity,
                                height: 150.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  elevation: 10.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                              width: 200.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Priridad',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                  FlutterFlowDropDown<String>(
                                                    controller: _model
                                                            .dropDownValueController1 ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options: [
                                                      'Baja',
                                                      'Media',
                                                      'Alta'
                                                    ],
                                                    onChanged: (val) =>
                                                        safeSetState(() => _model
                                                                .dropDownValue1 =
                                                            val),
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
                                                    hintText: '--',
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
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 200.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Agente',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                  FlutterFlowDropDown<String>(
                                                    controller: _model
                                                            .dropDownValueController2 ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options: [
                                                      'Lenix Pantoja',
                                                      'Yazmin Teran',
                                                      'Thamara Pantoja Teran'
                                                    ],
                                                    onChanged: (val) =>
                                                        safeSetState(() => _model
                                                                .dropDownValue2 =
                                                            val),
                                                    width: 200.0,
                                                    height: 40.0,
                                                    searchHintTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Plus Jakarta Sans',
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                    searchTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Plus Jakarta Sans',
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintText: '--',
                                                    searchHintText: 'Buscar',
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
                                                    isSearchable: true,
                                                    isMultiSelect: false,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 200.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Grupo',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                  FlutterFlowDropDown<String>(
                                                    controller: _model
                                                            .dropDownValueController3 ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options: [
                                                      'Sistemas',
                                                      'Mantenimiento',
                                                      'Infraestructura'
                                                    ],
                                                    onChanged: (val) =>
                                                        safeSetState(() => _model
                                                                .dropDownValue3 =
                                                            val),
                                                    width: 200.0,
                                                    height: 40.0,
                                                    searchHintTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Plus Jakarta Sans',
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                    searchTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Plus Jakarta Sans',
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintText: '--',
                                                    searchHintText: 'Buscar...',
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
                                                    isSearchable: true,
                                                    isMultiSelect: false,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 200.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Estado',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                  FlutterFlowDropDown<String>(
                                                    controller: _model
                                                            .dropDownValueController4 ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options: [
                                                      'Option 1',
                                                      'Option 2',
                                                      'Option 3'
                                                    ],
                                                    onChanged: (val) =>
                                                        safeSetState(() => _model
                                                                .dropDownValue4 =
                                                            val),
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
                                                    hintText: '--',
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
                                                ],
                                              ),
                                            ),
                                            FFButtonWidget(
                                              onPressed: () {
                                                print('Button pressed ...');
                                              },
                                              text: 'Filtrar',
                                              icon: Icon(
                                                Icons.filter_alt,
                                                size: 20.0,
                                              ),
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                              width: 200.0,
                                              height: 50.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Builder(
                                                    builder: (context) =>
                                                        FFButtonWidget(
                                                      onPressed: () async {
                                                        await showAlignedDialog(
                                                          context: context,
                                                          isGlobal: false,
                                                          avoidOverflow: false,
                                                          targetAnchor:
                                                              AlignmentDirectional(
                                                                      -1.0, 1.0)
                                                                  .resolve(
                                                                      Directionality.of(
                                                                          context)),
                                                          followerAnchor:
                                                              AlignmentDirectional(
                                                                      -1.0,
                                                                      -1.0)
                                                                  .resolve(
                                                                      Directionality.of(
                                                                          context)),
                                                          builder:
                                                              (dialogContext) {
                                                            return Material(
                                                              color: Colors
                                                                  .transparent,
                                                              child:
                                                                  GestureDetector(
                                                                onTap: () {
                                                                  FocusScope.of(
                                                                          dialogContext)
                                                                      .unfocus();
                                                                  FocusManager
                                                                      .instance
                                                                      .primaryFocus
                                                                      ?.unfocus();
                                                                },
                                                                child:
                                                                    CalendarWidget(),
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      },
                                                      text:
                                                          'Desde: 2025-01-201',
                                                      icon: Icon(
                                                        Icons
                                                            .calendar_month_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 25.0,
                                                      ),
                                                      options: FFButtonOptions(
                                                        height: 40.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    16.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      18.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        elevation: 0.0,
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 200.0,
                                              height: 50.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Builder(
                                                    builder: (context) =>
                                                        FFButtonWidget(
                                                      onPressed: () async {
                                                        await showAlignedDialog(
                                                          context: context,
                                                          isGlobal: false,
                                                          avoidOverflow: false,
                                                          targetAnchor:
                                                              AlignmentDirectional(
                                                                      -1.0, 1.0)
                                                                  .resolve(
                                                                      Directionality.of(
                                                                          context)),
                                                          followerAnchor:
                                                              AlignmentDirectional(
                                                                      -1.0,
                                                                      -1.0)
                                                                  .resolve(
                                                                      Directionality.of(
                                                                          context)),
                                                          builder:
                                                              (dialogContext) {
                                                            return Material(
                                                              color: Colors
                                                                  .transparent,
                                                              child:
                                                                  GestureDetector(
                                                                onTap: () {
                                                                  FocusScope.of(
                                                                          dialogContext)
                                                                      .unfocus();
                                                                  FocusManager
                                                                      .instance
                                                                      .primaryFocus
                                                                      ?.unfocus();
                                                                },
                                                                child:
                                                                    CalendarWidget(),
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      },
                                                      text: 'Hasta: 2025-12-05',
                                                      icon: Icon(
                                                        Icons
                                                            .calendar_month_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 25.0,
                                                      ),
                                                      options: FFButtonOptions(
                                                        height: 40.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    16.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        elevation: 0.0,
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 200.0,
                                              height: 50.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                            ),
                                            Container(
                                              width: 200.0,
                                              height: 50.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                            ),
                                            FFButtonWidget(
                                              onPressed: () {
                                                print('Button pressed ...');
                                              },
                                              text: '.',
                                              icon: Icon(
                                                Icons.filter_alt,
                                                size: 20.0,
                                              ),
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              showLoadingIndicator: false,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
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
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  12.0,
                                                                  5.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 5.0,
                                                              color: Color(
                                                                  0x34111417),
                                                              offset: Offset(
                                                                0.0,
                                                                2.0,
                                                              ),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                          ),
                                                        ),
                                                        child: ListView(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .stretch,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          5.0,
                                                                          20.0),
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        100.0,
                                                                    height:
                                                                        300.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .only(
                                                                        bottomLeft:
                                                                            Radius.circular(10.0),
                                                                        bottomRight:
                                                                            Radius.circular(10.0),
                                                                        topLeft:
                                                                            Radius.circular(10.0),
                                                                        topRight:
                                                                            Radius.circular(10.0),
                                                                      ),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0x00FFFFFF),
                                                                      ),
                                                                    ),
                                                                    child: Card(
                                                                      clipBehavior:
                                                                          Clip.antiAliasWithSaveLayer,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      elevation:
                                                                          5.0,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            16.0),
                                                                        child:
                                                                            InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            context.pushNamed(
                                                                              'TicketView',
                                                                              extra: <String, dynamic>{
                                                                                kTransitionInfoKey: TransitionInfo(
                                                                                  hasTransition: true,
                                                                                  transitionType: PageTransitionType.topToBottom,
                                                                                  duration: Duration(milliseconds: 300),
                                                                                ),
                                                                              },
                                                                            );
                                                                          },
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  children: [
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.ticketAlt,
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            size: 40.0,
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(10.0, 4.0, 24.0, 10.0),
                                                                                      child: Text(
                                                                                        'Ticket: # 32158',
                                                                                        maxLines: 1,
                                                                                        style: FlutterFlowTheme.of(context).headlineMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              fontSize: 20.0,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 4.0, 24.0, 10.0),
                                                                                child: Text(
                                                                                  'Hematologia advia 2120 alarma de laser perox bajaHematologia advia 2120 alarma de laser perox baja',
                                                                                  maxLines: 1,
                                                                                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        fontSize: 15.0,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Icon(
                                                                                                Icons.person_sharp,
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                size: 24.0,
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  'PEPITO PEREZ LOPEZ',
                                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                                        fontSize: 15.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 24.0, 0.0),
                                                                                          child: Text(
                                                                                            'Creado el  2024-01-01 a las 05:59:55 PM',
                                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.normal,
                                                                                                  decoration: TextDecoration.underline,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                        FlutterFlowIconButton(
                                                                                          borderColor: Colors.transparent,
                                                                                          borderRadius: 8.0,
                                                                                          buttonSize: 60.0,
                                                                                          icon: Icon(
                                                                                            Icons.delete_outlined,
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            size: 30.0,
                                                                                          ),
                                                                                          onPressed: () {
                                                                                            print('IconButton pressed ...');
                                                                                          },
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                                                                                    child: Container(
                                                                                      width: 400.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                      ),
                                                                                      child: Card(
                                                                                        clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                        elevation: 5.0,
                                                                                        shape: RoundedRectangleBorder(
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                                          children: [
                                                                                            FlutterFlowDropDown<String>(
                                                                                              controller: _model.dropDownValueController5 ??= FormFieldController<String>(null),
                                                                                              options: [
                                                                                                'Baja',
                                                                                                'Media',
                                                                                                'Alta'
                                                                                              ],
                                                                                              onChanged: (val) => safeSetState(() => _model.dropDownValue5 = val),
                                                                                              width: 200.0,
                                                                                              height: 30.0,
                                                                                              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              hintText: 'Prioridad: - -',
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
                                                                                            FlutterFlowDropDown<String>(
                                                                                              controller: _model.dropDownValueController6 ??= FormFieldController<String>(null),
                                                                                              options: [
                                                                                                'Lenix Pantoja',
                                                                                                'Yazmin Teran',
                                                                                                'Thamara Pantoja Teran'
                                                                                              ],
                                                                                              onChanged: (val) => safeSetState(() => _model.dropDownValue6 = val),
                                                                                              width: 200.0,
                                                                                              height: 30.0,
                                                                                              searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              hintText: 'Agente: - -',
                                                                                              searchHintText: 'Buscar',
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
                                                                                              isSearchable: true,
                                                                                              isMultiSelect: false,
                                                                                            ),
                                                                                            FlutterFlowDropDown<String>(
                                                                                              controller: _model.dropDownValueController7 ??= FormFieldController<String>(null),
                                                                                              options: [
                                                                                                'Sistemas',
                                                                                                'Mantenimiento',
                                                                                                'Infraestructura'
                                                                                              ],
                                                                                              onChanged: (val) => safeSetState(() => _model.dropDownValue7 = val),
                                                                                              width: 200.0,
                                                                                              height: 30.0,
                                                                                              searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              hintText: 'Grupo: - -',
                                                                                              searchHintText: 'Buscar...',
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
                                                                                              isSearchable: true,
                                                                                              isMultiSelect: false,
                                                                                            ),
                                                                                            FlutterFlowDropDown<String>(
                                                                                              controller: _model.dropDownValueController8 ??= FormFieldController<String>(null),
                                                                                              options: [
                                                                                                'Abierto',
                                                                                                'Pendiente',
                                                                                                'Cerrado'
                                                                                              ],
                                                                                              onChanged: (val) => safeSetState(() => _model.dropDownValue8 = val),
                                                                                              width: 200.0,
                                                                                              height: 30.0,
                                                                                              searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              hintText: 'Estado: - -',
                                                                                              searchHintText: 'Buscar...',
                                                                                              searchCursorColor: FlutterFlowTheme.of(context).secondaryBackground,
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
                                                                                              isSearchable: true,
                                                                                              isMultiSelect: false,
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                                                                                              child: FFButtonWidget(
                                                                                                onPressed: () async {
                                                                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                                                                    SnackBar(
                                                                                                      content: Text(
                                                                                                        'Ticket actualizaod ¡',
                                                                                                        style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                                              color: FlutterFlowTheme.of(context).white0,
                                                                                                              letterSpacing: 0.0,
                                                                                                            ),
                                                                                                        textAlign: TextAlign.center,
                                                                                                      ),
                                                                                                      duration: Duration(milliseconds: 1650),
                                                                                                      backgroundColor: FlutterFlowTheme.of(context).success,
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                                text: 'Actualizar',
                                                                                                options: FFButtonOptions(
                                                                                                  width: 170.0,
                                                                                                  height: 30.0,
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                                        color: Colors.white,
                                                                                                        letterSpacing: 0.0,
                                                                                                      ),
                                                                                                  elevation: 2.0,
                                                                                                  borderSide: BorderSide(
                                                                                                    color: Colors.transparent,
                                                                                                    width: 1.0,
                                                                                                  ),
                                                                                                  borderRadius: BorderRadius.circular(40.0),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          5.0,
                                                                          30.0),
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        100.0,
                                                                    height:
                                                                        350.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .only(
                                                                        bottomLeft:
                                                                            Radius.circular(10.0),
                                                                        bottomRight:
                                                                            Radius.circular(10.0),
                                                                        topLeft:
                                                                            Radius.circular(10.0),
                                                                        topRight:
                                                                            Radius.circular(10.0),
                                                                      ),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0x00FFFFFF),
                                                                      ),
                                                                    ),
                                                                    child: Card(
                                                                      clipBehavior:
                                                                          Clip.antiAliasWithSaveLayer,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      elevation:
                                                                          5.0,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            16.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                        child: FaIcon(
                                                                                          FontAwesomeIcons.ticketAlt,
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          size: 40.0,
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 4.0, 24.0, 10.0),
                                                                                    child: Text(
                                                                                      'Ticket: # 32145',
                                                                                      maxLines: 1,
                                                                                      style: FlutterFlowTheme.of(context).headlineMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontSize: 20.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 4.0, 24.0, 10.0),
                                                                              child: Text(
                                                                                'PAGINA SIOS DE PASTO SALUD CAIDA',
                                                                                maxLines: 1,
                                                                                style: FlutterFlowTheme.of(context).headlineMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      fontSize: 15.0,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Icon(
                                                                                              Icons.person_sharp,
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                'PEPITO PEREZ LOPEZ',
                                                                                                style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                      fontSize: 15.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 24.0, 0.0),
                                                                                        child: Text(
                                                                                          'Creado el  2024-01-01 a las 05:59:55 PM',
                                                                                          style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                fontSize: 16.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.normal,
                                                                                                decoration: TextDecoration.underline,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                      FlutterFlowIconButton(
                                                                                        borderColor: Colors.transparent,
                                                                                        borderRadius: 8.0,
                                                                                        buttonSize: 60.0,
                                                                                        icon: Icon(
                                                                                          Icons.delete_outlined,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          size: 30.0,
                                                                                        ),
                                                                                        onPressed: () {
                                                                                          print('IconButton pressed ...');
                                                                                        },
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                                                                                  child: Container(
                                                                                    width: 400.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    ),
                                                                                    child: Card(
                                                                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                      elevation: 5.0,
                                                                                      shape: RoundedRectangleBorder(
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                                        children: [
                                                                                          FlutterFlowDropDown<String>(
                                                                                            controller: _model.dropDownValueController9 ??= FormFieldController<String>(null),
                                                                                            options: [
                                                                                              'Baja',
                                                                                              'Media',
                                                                                              'Alta'
                                                                                            ],
                                                                                            onChanged: (val) => safeSetState(() => _model.dropDownValue9 = val),
                                                                                            width: 200.0,
                                                                                            height: 40.0,
                                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            hintText: 'Prioridad: - -',
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
                                                                                          FlutterFlowDropDown<String>(
                                                                                            controller: _model.dropDownValueController10 ??= FormFieldController<String>(null),
                                                                                            options: [
                                                                                              'Lenix Pantoja',
                                                                                              'Yazmin Teran',
                                                                                              'Thamara Pantoja Teran'
                                                                                            ],
                                                                                            onChanged: (val) => safeSetState(() => _model.dropDownValue10 = val),
                                                                                            width: 200.0,
                                                                                            height: 40.0,
                                                                                            searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            hintText: 'Agente: - -',
                                                                                            searchHintText: 'Buscar',
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
                                                                                            isSearchable: true,
                                                                                            isMultiSelect: false,
                                                                                          ),
                                                                                          FlutterFlowDropDown<String>(
                                                                                            controller: _model.dropDownValueController11 ??= FormFieldController<String>(null),
                                                                                            options: [
                                                                                              'Sistemas',
                                                                                              'Mantenimiento',
                                                                                              'Infraestructura'
                                                                                            ],
                                                                                            onChanged: (val) => safeSetState(() => _model.dropDownValue11 = val),
                                                                                            width: 200.0,
                                                                                            height: 40.0,
                                                                                            searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            hintText: 'Grupo: - -',
                                                                                            searchHintText: 'Buscar...',
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
                                                                                            isSearchable: true,
                                                                                            isMultiSelect: false,
                                                                                          ),
                                                                                          FlutterFlowDropDown<String>(
                                                                                            controller: _model.dropDownValueController12 ??= FormFieldController<String>(null),
                                                                                            options: [
                                                                                              'Abierto',
                                                                                              'Pendiente',
                                                                                              'Cerrado'
                                                                                            ],
                                                                                            onChanged: (val) => safeSetState(() => _model.dropDownValue12 = val),
                                                                                            width: 200.0,
                                                                                            height: 40.0,
                                                                                            searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            hintText: 'Estado: - -',
                                                                                            searchHintText: 'Buscar...',
                                                                                            searchCursorColor: FlutterFlowTheme.of(context).secondaryBackground,
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
                                                                                            isSearchable: true,
                                                                                            isMultiSelect: false,
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                                                                                            child: FFButtonWidget(
                                                                                              onPressed: () async {
                                                                                                ScaffoldMessenger.of(context).showSnackBar(
                                                                                                  SnackBar(
                                                                                                    content: Text(
                                                                                                      'Ticket actualizaod ¡',
                                                                                                      style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                                            color: FlutterFlowTheme.of(context).white0,
                                                                                                            letterSpacing: 0.0,
                                                                                                          ),
                                                                                                      textAlign: TextAlign.center,
                                                                                                    ),
                                                                                                    duration: Duration(milliseconds: 1650),
                                                                                                    backgroundColor: FlutterFlowTheme.of(context).success,
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                              text: 'Actualizar',
                                                                                              options: FFButtonOptions(
                                                                                                width: 170.0,
                                                                                                height: 40.0,
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                      color: Colors.white,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                elevation: 2.0,
                                                                                                borderSide: BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(40.0),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          5.0,
                                                                          30.0),
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        100.0,
                                                                    height:
                                                                        350.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .only(
                                                                        bottomLeft:
                                                                            Radius.circular(10.0),
                                                                        bottomRight:
                                                                            Radius.circular(10.0),
                                                                        topLeft:
                                                                            Radius.circular(10.0),
                                                                        topRight:
                                                                            Radius.circular(10.0),
                                                                      ),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0x00FFFFFF),
                                                                      ),
                                                                    ),
                                                                    child: Card(
                                                                      clipBehavior:
                                                                          Clip.antiAliasWithSaveLayer,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      elevation:
                                                                          5.0,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            16.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                        child: FaIcon(
                                                                                          FontAwesomeIcons.ticketAlt,
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          size: 40.0,
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 4.0, 24.0, 10.0),
                                                                                    child: Text(
                                                                                      'Ticket: # 32136',
                                                                                      maxLines: 1,
                                                                                      style: FlutterFlowTheme.of(context).headlineMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontSize: 20.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 4.0, 24.0, 10.0),
                                                                              child: Text(
                                                                                'CAMBIO DE TECLADO DEL AREA DE PROCESO',
                                                                                maxLines: 1,
                                                                                style: FlutterFlowTheme.of(context).headlineMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      fontSize: 20.0,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Icon(
                                                                                              Icons.person_sharp,
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                'PEPITO PEREZ LOPEZ',
                                                                                                style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                      fontSize: 15.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 24.0, 0.0),
                                                                                        child: Text(
                                                                                          'Creado el  2024-01-01 a las 05:59:55 PM',
                                                                                          style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                fontSize: 16.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.normal,
                                                                                                decoration: TextDecoration.underline,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                      FlutterFlowIconButton(
                                                                                        borderColor: Colors.transparent,
                                                                                        borderRadius: 8.0,
                                                                                        buttonSize: 60.0,
                                                                                        icon: Icon(
                                                                                          Icons.delete_outlined,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          size: 30.0,
                                                                                        ),
                                                                                        onPressed: () {
                                                                                          print('IconButton pressed ...');
                                                                                        },
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                                                                                  child: Container(
                                                                                    width: 400.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    ),
                                                                                    child: Card(
                                                                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                      elevation: 5.0,
                                                                                      shape: RoundedRectangleBorder(
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                                        children: [
                                                                                          FlutterFlowDropDown<String>(
                                                                                            controller: _model.dropDownValueController13 ??= FormFieldController<String>(null),
                                                                                            options: [
                                                                                              'Baja',
                                                                                              'Media',
                                                                                              'Alta'
                                                                                            ],
                                                                                            onChanged: (val) => safeSetState(() => _model.dropDownValue13 = val),
                                                                                            width: 200.0,
                                                                                            height: 40.0,
                                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            hintText: 'Prioridad: - -',
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
                                                                                          FlutterFlowDropDown<String>(
                                                                                            controller: _model.dropDownValueController14 ??= FormFieldController<String>(null),
                                                                                            options: [
                                                                                              'Lenix Pantoja',
                                                                                              'Yazmin Teran',
                                                                                              'Thamara Pantoja Teran'
                                                                                            ],
                                                                                            onChanged: (val) => safeSetState(() => _model.dropDownValue14 = val),
                                                                                            width: 200.0,
                                                                                            height: 40.0,
                                                                                            searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            hintText: 'Agente: - -',
                                                                                            searchHintText: 'Buscar',
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
                                                                                            isSearchable: true,
                                                                                            isMultiSelect: false,
                                                                                          ),
                                                                                          FlutterFlowDropDown<String>(
                                                                                            controller: _model.dropDownValueController15 ??= FormFieldController<String>(null),
                                                                                            options: [
                                                                                              'Sistemas',
                                                                                              'Mantenimiento',
                                                                                              'Infraestructura'
                                                                                            ],
                                                                                            onChanged: (val) => safeSetState(() => _model.dropDownValue15 = val),
                                                                                            width: 200.0,
                                                                                            height: 40.0,
                                                                                            searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            hintText: 'Grupo: - -',
                                                                                            searchHintText: 'Buscar...',
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
                                                                                            isSearchable: true,
                                                                                            isMultiSelect: false,
                                                                                          ),
                                                                                          FlutterFlowDropDown<String>(
                                                                                            controller: _model.dropDownValueController16 ??= FormFieldController<String>(null),
                                                                                            options: [
                                                                                              'Abierto',
                                                                                              'Pendiente',
                                                                                              'Cerrado'
                                                                                            ],
                                                                                            onChanged: (val) => safeSetState(() => _model.dropDownValue16 = val),
                                                                                            width: 200.0,
                                                                                            height: 40.0,
                                                                                            searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            hintText: 'Estado: - -',
                                                                                            searchHintText: 'Buscar...',
                                                                                            searchCursorColor: FlutterFlowTheme.of(context).secondaryBackground,
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
                                                                                            isSearchable: true,
                                                                                            isMultiSelect: false,
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                                                                                            child: FFButtonWidget(
                                                                                              onPressed: () async {
                                                                                                ScaffoldMessenger.of(context).showSnackBar(
                                                                                                  SnackBar(
                                                                                                    content: Text(
                                                                                                      'Ticket actualizaod ¡',
                                                                                                      style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                                            color: FlutterFlowTheme.of(context).white0,
                                                                                                            letterSpacing: 0.0,
                                                                                                          ),
                                                                                                      textAlign: TextAlign.center,
                                                                                                    ),
                                                                                                    duration: Duration(milliseconds: 1650),
                                                                                                    backgroundColor: FlutterFlowTheme.of(context).success,
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                              text: 'Actualizar',
                                                                                              options: FFButtonOptions(
                                                                                                width: 170.0,
                                                                                                height: 40.0,
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                      color: Colors.white,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                elevation: 2.0,
                                                                                                borderSide: BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(40.0),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ).animateOnPageLoad(
                                                          animationsMap[
                                                              'containerOnPageLoadAnimation']!),
                                                    ),
                                                  ]
                                                      .divide(SizedBox(
                                                          height: 24.0))
                                                      .addToStart(SizedBox(
                                                          height: 12.0))
                                                      .addToEnd(SizedBox(
                                                          height: 24.0)),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ]
                                        .divide(SizedBox(height: 20.0))
                                        .addToStart(SizedBox(height: 20.0))
                                        .addToEnd(SizedBox(height: 20.0)),
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
