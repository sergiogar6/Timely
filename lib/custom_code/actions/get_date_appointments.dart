// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<dynamic>> getDateAppointments(
  DateTime date,
  int businessId,
) async {
  final supabase = Supabase.instance.client;

  final startOfDay = DateTime(
    date.year,
    date.month,
    date.day,
  );

  final endOfDay = startOfDay.add(
    const Duration(days: 1),
  );

  final res = await supabase
      .from('appointments')
      .select()
      .eq('business_id', businessId)
      .gte(
        'start_datetime',
        startOfDay.toIso8601String(),
      )
      .lt(
        'start_datetime',
        endOfDay.toIso8601String(),
      )
      .order('start_datetime');

  return res;
}
