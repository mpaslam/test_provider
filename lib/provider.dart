import 'package:flutter/material.dart';

class NameModel extends ChangeNotifier {
  String _name = "John Doe";

  String get name => _name;

  void changeName(String newName) {
    _name = newName;
    notifyListeners(); // Notify listeners when the state changes

  }
}