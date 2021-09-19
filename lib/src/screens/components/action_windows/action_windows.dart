import 'package:flutter/material.dart';
import '../../../widgets/dashed_react.dart';

class ActionWindos extends StatelessWidget {
  const ActionWindos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100,
        width: 100,
        child: DashedRect(
          gap: 1,
          strokeWidth: 1,
        ),
      ),
      flex: 2,
    );
  }
}
