import 'package:flutter/material.dart';

class StateAnimation extends ChangeNotifier {
  bool isRotation = false;
  double angle = 0.2;
  Color color = Colors.green.shade500;

  void rotation() {
    if (isRotation == true) {
      angle -= 0.2;
      color = Colors.green.shade100;
    } else {
      color = Colors.green.shade500;
      angle += 0.2;
    }
    notifyListeners();
  }

  void testRotation() {
    if (isRotation == true) {
      isRotation = false;
    } else {
      isRotation = true;
    }
    notifyListeners();
  }
}
