import '/backend/schema/structs/index.dart';
import '/client/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'appointments_widget.dart' show AppointmentsWidget;
import 'package:flutter/material.dart';

class AppointmentsModel extends FlutterFlowModel<AppointmentsWidget> {
  ///  Local state fields for this page.

  List<AppointmentStruct> appointments = [];
  void addToAppointments(AppointmentStruct item) => appointments.add(item);
  void removeFromAppointments(AppointmentStruct item) =>
      appointments.remove(item);
  void removeAtIndexFromAppointments(int index) => appointments.removeAt(index);
  void insertAtIndexInAppointments(int index, AppointmentStruct item) =>
      appointments.insert(index, item);
  void updateAppointmentsAtIndex(
          int index, Function(AppointmentStruct) updateFn) =>
      appointments[index] = updateFn(appointments[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getAppointments] action in Appointments widget.
  List<dynamic>? appointmentsOutput;
  // Model for Navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
  }
}
