import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      // case ScreenNames.homeScreen:
      //   return MaterialPageRoute(
      //     builder: (context) => const HomeScreen(),
      //   );
      //   break;

      default:
        return MaterialPageRoute(
          builder: (context) => Container(),
        );
    }
  }
}
