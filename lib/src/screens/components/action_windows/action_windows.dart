import 'package:flutter/material.dart';
import 'package:resume_builder/core/constants/templates_enum.dart';
import 'widget/empty_action.dart';

class ActionWindos extends StatelessWidget {
  final TEMPLATES? templates;
  const ActionWindos({Key? key, this.templates}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: _size.height * 0.03,
          horizontal: _size.width * 0.03,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Action Window"),
            SizedBox(height: _size.height * 0.03),
            EmptyAction(),
          ],
        ),
      ),
      flex: 2,
    );
  }
}
