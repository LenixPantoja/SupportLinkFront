import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'menu_item_model.dart';
export 'menu_item_model.dart';

class MenuItemWidget extends StatefulWidget {
  const MenuItemWidget({
    super.key,
    bool? isActivePage,
    required this.text,
    required this.icon,
    bool? hasNumberTag,
    int? number,
    Color? tagColor,
    bool? hasSubMenu,
    bool? subMenuExpanded,
  })  : isActivePage = isActivePage ?? false,
        hasNumberTag = hasNumberTag ?? false,
        number = number ?? 0,
        tagColor = tagColor ?? const Color(0xFF6C94E5),
        hasSubMenu = hasSubMenu ?? false,
        subMenuExpanded = subMenuExpanded ?? false;

  final bool isActivePage;
  final String? text;
  final Widget? icon;
  final bool hasNumberTag;
  final int number;
  final Color tagColor;
  final bool hasSubMenu;
  final bool subMenuExpanded;

  @override
  State<MenuItemWidget> createState() => _MenuItemWidgetState();
}

class _MenuItemWidgetState extends State<MenuItemWidget> {
  late MenuItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
      }),
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          color: valueOrDefault<Color>(
            () {
              if (widget.isActivePage) {
                return FlutterFlowTheme.of(context).brand100;
              } else if (!widget.isActivePage && _model.mouseRegionHovered) {
                return FlutterFlowTheme.of(context).neutral100;
              } else {
                return const Color(0x00FFFFFF);
              }
            }(),
            const Color(0x00FFFFFF),
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 50.0,
              height: 50.0,
              decoration: const BoxDecoration(),
              child: widget.icon!,
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
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                        child: Text(
                          widget.text!,
                          maxLines: 1,
                          style: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                                fontFamily: 'Plus Jakarta Sans',
                                color: valueOrDefault<Color>(
                                  widget.isActivePage
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  FlutterFlowTheme.of(context).secondaryText,
                                ),
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ),
                    ),
                    if (widget.hasSubMenu)
                      SizedBox(
                        width: 24.0,
                        height: 24.0,
                        child: Stack(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          children: [
                            if (widget.subMenuExpanded)
                              Icon(
                                Icons.keyboard_arrow_up,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 20.0,
                              ),
                            if (!widget.subMenuExpanded)
                              Icon(
                                Icons.keyboard_arrow_down_sharp,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 20.0,
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
    );
  }
}
