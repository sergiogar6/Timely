import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'appointments_business_widget.dart' show AppointmentsBusinessWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class AppointmentsBusinessModel
    extends FlutterFlowModel<AppointmentsBusinessWidget> {
  ///  Local state fields for this page.

  DateTimeRange? selectedDay;

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

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay1;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay2;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay1 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    calendarSelectedDay2 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }
}
