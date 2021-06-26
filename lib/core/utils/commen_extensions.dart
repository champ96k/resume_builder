import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension ExString on String {
  bool isValidPhoneNumer() {
    if (isEmpty) {
      return false;
    } else {
      final pattern = r'^(\+\d{1,3}[- ]?)?\d{10}$';
      final regex = RegExp(pattern);
      return regex.hasMatch(this);
    }
  }

  void showSnackBar(BuildContext context, {int milliseconds = 1400}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(this),
        duration: Duration(
          milliseconds: milliseconds,
        ),
      ),
    );
  }

  String formatDate({String defaultFormat = "dd-MMMM-yyyy"}) {
    try {
      if (this == "" || this == "null") {
        return "";
      }
      final formatter = DateFormat(defaultFormat);
      return formatter.format(DateTime.parse(this).toLocal());
    } on Exception catch (e) {
      debugPrint(e.toString());
      return "";
    }
  }
}

extension DateTimeExt on DateTime {
  int get daysSince => difference(DateTime.now()).inDays;
  int get hoursSince => difference(DateTime.now()).inHours;
  int get minutesSince => difference(DateTime.now()).inMinutes;
  int get secondsSince => difference(DateTime.now()).inSeconds;
}
