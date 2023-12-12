import 'package:flutter/material.dart';
import 'package:resume_builder/gen/colors.gen.dart';

final ButtonStyle outlineButtonStyle = OutlinedButton.styleFrom(
  foregroundColor: ColorName.primaryIndigo,
  shadowColor: ColorName.primaryIndigo,
  padding: const EdgeInsets.all(16.0),
  textStyle: const TextStyle(
    color: ColorName.primaryIndigo,
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
          color: ColorName.primaryIndigo,
        );
      }
      return BorderSide(
        width: 1.0,
        color: ColorName.primaryIndigo.withOpacity(0.7),
      );
    },
  ),
);
