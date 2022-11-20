import 'package:flutter/material.dart';

class MyTheme {
  MyTheme._();

  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.indigo,
        brightness: Brightness.light,
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );
}
