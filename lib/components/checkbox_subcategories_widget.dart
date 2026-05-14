import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'checkbox_subcategories_model.dart';
export 'checkbox_subcategories_model.dart';

class CheckboxSubcategoriesWidget extends StatefulWidget {
  const CheckboxSubcategoriesWidget({super.key});

  @override
  State<CheckboxSubcategoriesWidget> createState() =>
      _CheckboxSubcategoriesWidgetState();
}

class _CheckboxSubcategoriesWidgetState
    extends State<CheckboxSubcategoriesWidget> {
  late CheckboxSubcategoriesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckboxSubcategoriesModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Builder(
        builder: (context) {
          if (!_model.toggle) {
            return Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 10.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    _model.toggle = !_model.toggle;
                    safeSetState(() {});
                  },
                  child: Icon(
                    Icons.check_box_outline_blank,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24.0,
                  ),
                ),
              ),
            );
          } else {
            return Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 10.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    _model.toggle = !_model.toggle;
                    safeSetState(() {});
                  },
                  child: Icon(
                    Icons.check_box_outlined,
                    color: Color(0xFF1A1A1A),
                    size: 24.0,
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
