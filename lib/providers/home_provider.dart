import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier {
  int _onTap = 0;
  int _pressedId = -1; // Track the pressed ID

  bool isPressed(int id) => _pressedId == id;

  int get onTap => _onTap;

  void updateOnTap() {
    _onTap = 1;
    notifyListeners();
  }

  void pressed(int id) {
    _pressedId = id; // Mark the specific idea as pressed
    notifyListeners();
  }

  void offPressed() {
    _pressedId = -1; // Reset pressed state
    notifyListeners();
  }
}
