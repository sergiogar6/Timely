// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future bookService(
  int serviceId,
  int clientId,
  int employeeId,
  DateTime startDate,
  DateTime endDate,
  String startTime,
  int duration,
) async {
  String onlyDateStart = startDate.toString().substring(0, 10);

  DateTime startDateFinal = DateTime.parse("$onlyDateStart $startTime");
  DateTime endDateFinal = startDateFinal.add(Duration(minutes: duration));

  final supabase = Supabase.instance.client;

  await supabase.from("appointments").insert({
    "client_id": clientId,
    "service_id": serviceId,
    "employee_id": employeeId,
    "start_datetime": startDateFinal.toIso8601String(),
    "end_datetime": endDateFinal.toIso8601String(),
    "status": "Pendiente"
  });
}
