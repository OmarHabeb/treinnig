import 'package:flutter/material.dart';

class NavigationHelper {
  static void goToReplacement(BuildContext context, screen) {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => screen,
        ));
  }

  static void pushScreen(BuildContext context, screen) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => screen,
        ));
  }
}
