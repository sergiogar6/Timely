import '/flutter_flow/flutter_flow_util.dart';
import '/pages/login_component/login_component_widget.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  Local state fields for this page.

  bool loginFailed = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Custom Action - checkLogin] action in Button widget.
  bool? userLogin;
  // Model for LoginComponent component.
  late LoginComponentModel loginComponentModel;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    loginComponentModel = createModel(context, () => LoginComponentModel());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    loginComponentModel.dispose();
  }
}
