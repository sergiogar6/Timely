// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future createUser(
  String name,
  String email,
  String password,
  String phone,
) async {
  final supabase = Supabase.instance.client;

  final password_hash = await hashPassword(password);

  await supabase.from('users').insert({
    'name': name,
    'email': email,
    'phone': phone,
    'password_hash': password_hash
  });
}
