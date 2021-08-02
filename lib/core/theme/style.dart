import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members
class ThemeStyle {
  static ButtonStyle outlineButtonStyle = OutlinedButton.styleFrom(
    primary: Colors.indigo,
    shadowColor: Colors.indigoAccent,
    padding: const EdgeInsets.all(16.0),
    textStyle: const TextStyle(
      color: Colors.indigo,
    ),
    minimumSize: const Size(88, 36),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  ).copyWith(
    side: MaterialStateProperty.resolveWith<BorderSide>(
      (states) {
        if (states.contains(MaterialState.pressed)) {
          return const BorderSide(
            width: 1.0,
            color: Colors.indigo,
          );
        }
        return BorderSide(
          width: 1.0,
          color: Colors.indigo.withOpacity(0.7),
        );
      },
    ),
  );
}
