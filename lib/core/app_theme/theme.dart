import 'package:flutter/material.dart';

ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.indigo,
      brightness: Brightness.light,
    );

ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
    );
