import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  UserStruct _currentUser = UserStruct();
  UserStruct get currentUser => _currentUser;
  set currentUser(UserStruct value) {
    _currentUser = value;
  }

  void updateCurrentUserStruct(Function(UserStruct) updateFn) {
    updateFn(_currentUser);
  }
}
