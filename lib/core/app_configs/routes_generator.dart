import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members
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
