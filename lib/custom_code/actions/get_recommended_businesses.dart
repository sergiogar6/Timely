// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<dynamic>> getRecommendedBusinesses(int? limitNumber) async {
  final supabase = Supabase.instance.client;

  final res = await supabase.rpc(
    'get_random_businesses',
    params: {'max_results': limitNumber},
  );

  return res;
}
