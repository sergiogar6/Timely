import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'business_widget.dart' show BusinessWidget;
import 'package:flutter/material.dart';

class BusinessModel extends FlutterFlowModel<BusinessWidget> {
  ///  Local state fields for this page.

  List<ServiceStruct> services = [];
  void addToServices(ServiceStruct item) => services.add(item);
  void removeFromServices(ServiceStruct item) => services.remove(item);
  void removeAtIndexFromServices(int index) => services.removeAt(index);
  void insertAtIndexInServices(int index, ServiceStruct item) =>
      services.insert(index, item);
  void updateServicesAtIndex(int index, Function(ServiceStruct) updateFn) =>
      services[index] = updateFn(services[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getBusinessServices] action in Business widget.
  List<dynamic>? outputServices;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
