// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<bool> checkLogin(
  String email,
  String password,
) async {
  final supabase = Supabase.instance.client;

  final user = await supabase
      .from('users')
      .select()
      .eq('email', email)
      .limit(1)
      .single();

  if (user == null) {
    return false;
  }

  String loginPasswordHashed = await hashPassword(password);

  if (user['password_hash'] == loginPasswordHashed) {
    FFAppState().currentUser = UserStruct.fromMap(user);
    return true;
  }

  return false;
}
