import '/auth/modal_update_password/modal_update_password_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'user_menu_adminstrator_model.dart';
export 'user_menu_adminstrator_model.dart';

class UserMenuAdminstratorWidget extends StatefulWidget {
  const UserMenuAdminstratorWidget({super.key});

  @override
  State<UserMenuAdminstratorWidget> createState() =>
      _UserMenuAdminstratorWidgetState();
}

class _UserMenuAdminstratorWidgetState
    extends State<UserMenuAdminstratorWidget> {
  late UserMenuAdminstratorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserMenuAdminstratorModel());

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
      width: 280.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        boxShadow: const [
          BoxShadow(
            blurRadius: 16.0,
            color: Color(0x1B080B1F),
            offset: Offset(
              0.0,
              6.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MouseRegion(
              opaque: false,
              cursor: MouseCursor.defer ?? MouseCursor.defer,
              onEnter: ((event) async {
                safeSetState(() => _model.mouseRegionHovered1 = true);
              }),
              onExit: ((event) async {
                safeSetState(() => _model.mouseRegionHovered1 = false);
              }),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(
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
                child: Container(
                  width: double.infinity,
                  height: 54.0,
                  decoration: BoxDecoration(
                    color: valueOrDefault<Color>(
                      _model.mouseRegionHovered1
                          ? FlutterFlowTheme.of(context).secondaryBackground
                          : FlutterFlowTheme.of(context).primaryBackground,
                      FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.person_3_sharp,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Text(
                        'Perfil',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Plus Jakarta Sans',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ]
                        .divide(const SizedBox(width: 16.0))
                        .addToStart(const SizedBox(width: 16.0))
                        .addToEnd(const SizedBox(width: 16.0)),
                  ),
                ),
              ),
            ),
            MouseRegion(
              opaque: false,
              cursor: MouseCursor.defer ?? MouseCursor.defer,
              onEnter: ((event) async {
                safeSetState(() => _model.mouseRegionHovered2 = true);
              }),
              onExit: ((event) async {
                safeSetState(() => _model.mouseRegionHovered2 = false);
              }),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('EditProfileAdministrator');
                },
                child: Container(
                  width: double.infinity,
                  height: 54.0,
                  decoration: BoxDecoration(
                    color: valueOrDefault<Color>(
                      _model.mouseRegionHovered2
                          ? FlutterFlowTheme.of(context).secondaryBackground
                          : FlutterFlowTheme.of(context).primaryBackground,
                      FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.mailBulk,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Text(
                        'Notificador',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Plus Jakarta Sans',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ]
                        .divide(const SizedBox(width: 16.0))
                        .addToStart(const SizedBox(width: 16.0))
                        .addToEnd(const SizedBox(width: 16.0)),
                  ),
                ),
              ),
            ),
            MouseRegion(
              opaque: false,
              cursor: MouseCursor.defer ?? MouseCursor.defer,
              onEnter: ((event) async {
                safeSetState(() => _model.mouseRegionHovered3 = true);
              }),
              onExit: ((event) async {
                safeSetState(() => _model.mouseRegionHovered3 = false);
              }),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('EditProfileAdministrator');
                },
                child: Container(
                  width: double.infinity,
                  height: 54.0,
                  decoration: BoxDecoration(
                    color: valueOrDefault<Color>(
                      _model.mouseRegionHovered3
                          ? FlutterFlowTheme.of(context).secondaryBackground
                          : FlutterFlowTheme.of(context).primaryBackground,
                      FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.ticketAlt,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Text(
                        'Mis tickets',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Plus Jakarta Sans',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ]
                        .divide(const SizedBox(width: 16.0))
                        .addToStart(const SizedBox(width: 16.0))
                        .addToEnd(const SizedBox(width: 16.0)),
                  ),
                ),
              ),
            ),
            MouseRegion(
              opaque: false,
              cursor: MouseCursor.defer ?? MouseCursor.defer,
              onEnter: ((event) async {
                safeSetState(() => _model.mouseRegionHovered4 = true);
              }),
              onExit: ((event) async {
                safeSetState(() => _model.mouseRegionHovered4 = false);
              }),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    enableDrag: false,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: MediaQuery.viewInsetsOf(context),
                        child: const ModalUpdatePasswordWidget(),
                      );
                    },
                  ).then((value) => safeSetState(() {}));
                },
                child: Container(
                  width: double.infinity,
                  height: 54.0,
                  decoration: BoxDecoration(
                    color: valueOrDefault<Color>(
                      _model.mouseRegionHovered4
                          ? FlutterFlowTheme.of(context).secondaryBackground
                          : FlutterFlowTheme.of(context).primaryBackground,
                      FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.lock,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 27.0,
                      ),
                      Text(
                        'Cambiar contraseña',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Plus Jakarta Sans',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ]
                        .divide(const SizedBox(width: 16.0))
                        .addToStart(const SizedBox(width: 16.0))
                        .addToEnd(const SizedBox(width: 16.0)),
                  ),
                ),
              ),
            ),
            MouseRegion(
              opaque: false,
              cursor: MouseCursor.defer ?? MouseCursor.defer,
              onEnter: ((event) async {
                safeSetState(() => _model.mouseRegionHovered5 = true);
              }),
              onExit: ((event) async {
                safeSetState(() => _model.mouseRegionHovered5 = false);
              }),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.goNamed('LoginPage');
                },
                child: Container(
                  width: double.infinity,
                  height: 54.0,
                  decoration: BoxDecoration(
                    color: valueOrDefault<Color>(
                      _model.mouseRegionHovered5
                          ? FlutterFlowTheme.of(context).secondaryBackground
                          : FlutterFlowTheme.of(context).primaryBackground,
                      FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.power_settings_new_sharp,
                        color: FlutterFlowTheme.of(context).error,
                        size: 24.0,
                      ),
                      Text(
                        'Salir',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: FlutterFlowTheme.of(context).error,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ]
                        .divide(const SizedBox(width: 16.0))
                        .addToStart(const SizedBox(width: 16.0))
                        .addToEnd(const SizedBox(width: 16.0)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
