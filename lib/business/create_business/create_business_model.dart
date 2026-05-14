import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_business_widget.dart' show CreateBusinessWidget;
import 'package:flutter/material.dart';

class CreateBusinessModel extends FlutterFlowModel<CreateBusinessWidget> {
  ///  Local state fields for this page.

  List<CategoryStruct> categories = [];
  void addToCategories(CategoryStruct item) => categories.add(item);
  void removeFromCategories(CategoryStruct item) => categories.remove(item);
  void removeAtIndexFromCategories(int index) => categories.removeAt(index);
  void insertAtIndexInCategories(int index, CategoryStruct item) =>
      categories.insert(index, item);
  void updateCategoriesAtIndex(int index, Function(CategoryStruct) updateFn) =>
      categories[index] = updateFn(categories[index]);

  List<SubcategoryStruct> subcategories = [];
  void addToSubcategories(SubcategoryStruct item) => subcategories.add(item);
  void removeFromSubcategories(SubcategoryStruct item) =>
      subcategories.remove(item);
  void removeAtIndexFromSubcategories(int index) =>
      subcategories.removeAt(index);
  void insertAtIndexInSubcategories(int index, SubcategoryStruct item) =>
      subcategories.insert(index, item);
  void updateSubcategoriesAtIndex(
          int index, Function(SubcategoryStruct) updateFn) =>
      subcategories[index] = updateFn(subcategories[index]);

  int? selectedCategory;

  List<SubcategoryStruct> selectedSubcategories = [];
  void addToSelectedSubcategories(SubcategoryStruct item) =>
      selectedSubcategories.add(item);
  void removeFromSelectedSubcategories(SubcategoryStruct item) =>
      selectedSubcategories.remove(item);
  void removeAtIndexFromSelectedSubcategories(int index) =>
      selectedSubcategories.removeAt(index);
  void insertAtIndexInSelectedSubcategories(
          int index, SubcategoryStruct item) =>
      selectedSubcategories.insert(index, item);
  void updateSelectedSubcategoriesAtIndex(
          int index, Function(SubcategoryStruct) updateFn) =>
      selectedSubcategories[index] = updateFn(selectedSubcategories[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();
  }
}
