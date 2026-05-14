import '/backend/schema/structs/index.dart';
import '/client/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  List<CategoryStruct> categories = [];
  void addToCategories(CategoryStruct item) => categories.add(item);
  void removeFromCategories(CategoryStruct item) => categories.remove(item);
  void removeAtIndexFromCategories(int index) => categories.removeAt(index);
  void insertAtIndexInCategories(int index, CategoryStruct item) =>
      categories.insert(index, item);
  void updateCategoriesAtIndex(int index, Function(CategoryStruct) updateFn) =>
      categories[index] = updateFn(categories[index]);

  List<BusinessStruct> business = [];
  void addToBusiness(BusinessStruct item) => business.add(item);
  void removeFromBusiness(BusinessStruct item) => business.remove(item);
  void removeAtIndexFromBusiness(int index) => business.removeAt(index);
  void insertAtIndexInBusiness(int index, BusinessStruct item) =>
      business.insert(index, item);
  void updateBusinessAtIndex(int index, Function(BusinessStruct) updateFn) =>
      business[index] = updateFn(business[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getCategories] action in Home widget.
  List<dynamic>? categoriesOutput;
  // Stores action output result for [Custom Action - getRecommendedBusinesses] action in Home widget.
  List<dynamic>? recommendedBusinessOutput;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for Navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    navbarModel.dispose();
  }
}
