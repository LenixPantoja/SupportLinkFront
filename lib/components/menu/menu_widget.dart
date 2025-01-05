import '/components/menu_item/menu_item_widget.dart';
import '/components/sub_menu_item/sub_menu_item_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'menu_model.dart';
export 'menu_model.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({
    super.key,
    required this.activePageName,
    bool? pageIsInSubMenu,
    this.subMenuName,
  }) : pageIsInSubMenu = pageIsInSubMenu ?? false;

  final String? activePageName;
  final bool pageIsInSubMenu;
  final String? subMenuName;

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> with TickerProviderStateMixin {
  late MenuModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuModel());

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      constraints: const BoxConstraints(
        minWidth: 90.0,
        maxWidth: 290.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: const BoxDecoration(),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: Image.asset(
                      'assets/images/favicon.png',
                      width: 50.0,
                      height: 50.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                  tabletLandscape: false,
                ))
                  Container(
                    height: 50.0,
                    decoration: const BoxDecoration(),
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                  ),
              ].divide(const SizedBox(width: 4.0)),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (widget.activePageName == 'Dashboard') {
                                    context.pushNamed('Home');
                                  }
                                },
                                child: wrapWithModel(
                                  model: _model.menuItemModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: MenuItemWidget(
                                    isActivePage:
                                        widget.activePageName == 'Dashboard',
                                    text: 'Dashboard',
                                    icon: Icon(
                                      Icons.grid_view,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 24.0,
                                    ),
                                    hasNumberTag: false,
                                    hasSubMenu: false,
                                    subMenuExpanded: false,
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (Navigator.of(context).canPop()) {
                                    context.pop();
                                  }
                                  context.pushNamed(
                                    'TicketAdministrator',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.menuItemModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: MenuItemWidget(
                                    isActivePage: false,
                                    text: 'Tickets',
                                    icon: Icon(
                                      Icons.attach_email,
                                      color:
                                          FlutterFlowTheme.of(context).gray400,
                                      size: 24.0,
                                    ),
                                    hasNumberTag: false,
                                    number: 1,
                                    tagColor:
                                        FlutterFlowTheme.of(context).primary,
                                    hasSubMenu: false,
                                    subMenuExpanded: false,
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.subMenuOrders =
                                          !_model.subMenuOrders;
                                      safeSetState(() {});
                                    },
                                    child: wrapWithModel(
                                      model: _model.menuItemModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MenuItemWidget(
                                        isActivePage: false,
                                        text: 'Administrador',
                                        icon: Icon(
                                          Icons.airplay,
                                          color: FlutterFlowTheme.of(context)
                                              .gray400,
                                          size: 24.0,
                                        ),
                                        hasNumberTag: false,
                                        number: 5,
                                        tagColor: FlutterFlowTheme.of(context)
                                            .secondary,
                                        hasSubMenu: true,
                                        subMenuExpanded: _model.subMenuOrders,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0x80EFF3FA),
                                      borderRadius: BorderRadius.circular(2.0),
                                    ),
                                    child: Visibility(
                                      visible: _model.subMenuOrders,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                width: 50.0,
                                                height: 1.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .neutral200,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                              ),
                                              if (responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                                tabletLandscape: false,
                                              ))
                                                Container(
                                                  width: 200.0,
                                                  height: 1.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .neutral200,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                  ),
                                                ),
                                            ],
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.goNamed('Contactos');
                                            },
                                            child: wrapWithModel(
                                              model: _model.subMenuItemModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: SubMenuItemWidget(
                                                text: 'Contactos',
                                                icon: Icon(
                                                  Icons.groups,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 18.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                'Groups',
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      const TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                    duration: Duration(
                                                        milliseconds: 0),
                                                  ),
                                                },
                                              );
                                            },
                                            child: wrapWithModel(
                                              model: _model.subMenuItemModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: SubMenuItemWidget(
                                                text: 'Grupos',
                                                icon: FaIcon(
                                                  FontAwesomeIcons.networkWired,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 18.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                'Types',
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      const TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                    duration: Duration(
                                                        milliseconds: 0),
                                                  ),
                                                },
                                              );
                                            },
                                            child: wrapWithModel(
                                              model: _model.subMenuItemModel3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: SubMenuItemWidget(
                                                text: 'Tipos',
                                                icon: FaIcon(
                                                  FontAwesomeIcons.tag,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 18.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ).animateOnPageLoad(animationsMap[
                                          'columnOnPageLoadAnimation']!),
                                    ),
                                  ),
                                ],
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.goNamed('TicketsUser');
                                },
                                child: wrapWithModel(
                                  model: _model.menuItemModel4,
                                  updateCallback: () => safeSetState(() {}),
                                  child: MenuItemWidget(
                                    isActivePage: false,
                                    text: 'Estadisticas',
                                    icon: Icon(
                                      Icons.analytics_outlined,
                                      color:
                                          FlutterFlowTheme.of(context).gray400,
                                      size: 24.0,
                                    ),
                                    hasNumberTag: true,
                                    number: 3,
                                    tagColor:
                                        FlutterFlowTheme.of(context).tertiary,
                                    hasSubMenu: false,
                                    subMenuExpanded: false,
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.goNamed(
                                    'EditProfileAdministrator',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.menuItemModel5,
                                  updateCallback: () => safeSetState(() {}),
                                  child: MenuItemWidget(
                                    isActivePage: false,
                                    text: 'Monitoreo',
                                    icon: Icon(
                                      Icons.gamepad,
                                      color:
                                          FlutterFlowTheme.of(context).gray400,
                                      size: 24.0,
                                    ),
                                    hasNumberTag: false,
                                    number: 3,
                                    tagColor:
                                        FlutterFlowTheme.of(context).tertiary,
                                    hasSubMenu: false,
                                    subMenuExpanded: false,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ].divide(const SizedBox(height: 8.0)),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                        tabletLandscape: false,
                      ))
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (_model.showUpgrade)
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  await launchURL(
                                      'https://pagar.ualabis.com.co/order/39d3c615a1cf0bf6487a04f530c4234a0534af8950e14352');
                                },
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .textFieldBachGround,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Suscribirse',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w900,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Flexible(
                                                  child: Text(
                                                    'Raeliar pago',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          lineHeight: 1.3,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ].divide(const SizedBox(height: 8.0)),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(1.0, -1.0),
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 8.0,
                                          buttonSize: 32.0,
                                          hoverColor: Colors.transparent,
                                          icon: Icon(
                                            Icons.close_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 14.0,
                                          ),
                                          onPressed: () async {
                                            _model.showUpgrade = false;
                                            safeSetState(() {});
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                          ],
                        ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('LoginPage');
                        },
                        child: Container(
                          height: 50.0,
                          decoration: const BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 50.0,
                                height: 50.0,
                                decoration: const BoxDecoration(),
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Icon(
                                    Icons.logout,
                                    color: FlutterFlowTheme.of(context).error,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                                tabletLandscape: false,
                              ))
                                Container(
                                  width: 200.0,
                                  height: 50.0,
                                  decoration: const BoxDecoration(),
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Logout',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ].divide(const SizedBox(height: 24.0)).addToStart(const SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
