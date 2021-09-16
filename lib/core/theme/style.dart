import 'package:flutter/material.dart';
import '../constants/constant_colors.dart';

///
/// `AVOID defining a class that contains only static members`.
/// Creating classes with the sole purpose of providing utility or
/// otherwise static methods is discouraged. Dart allows functions
/// to exist outside of classes for this very reason
/// `https://dart-lang.github.io/linter/lints/avoid_classes_with_only_static_members.html`
///

final ButtonStyle outlineButtonStyle = OutlinedButton.styleFrom(
  primary: ConstantColors.primaryIndigo,
  shadowColor: ConstantColors.primaryIndigo,
  padding: const EdgeInsets.all(16.0),
  textStyle: const TextStyle(
    color: ConstantColors.primaryIndigo,
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
          color: ConstantColors.primaryIndigo,
        );
      }
      return BorderSide(
        width: 1.0,
        color: ConstantColors.primaryIndigo.withOpacity(0.7),
      );
    },
  ),
);
