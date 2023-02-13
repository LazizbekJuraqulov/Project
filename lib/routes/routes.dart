import 'package:finish/pages/spleshScreen.dart';
import 'package:flutter/material.dart';

class RoutesPage {
  static getRoters(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) {
          return SpleshScreen();
        });

      default:
    }
  }
}
