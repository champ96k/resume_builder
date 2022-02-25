import 'package:flutter/material.dart';

class FooterSocailModel {
  final IconData iconData;
  final String socialURL;
  final Color color;

  FooterSocailModel({
    required this.iconData,
    required this.socialURL,
    this.color = Colors.transparent,
  });
}
