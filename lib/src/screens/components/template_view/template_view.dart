import 'package:flutter/material.dart';

class TemplateView extends StatelessWidget {
  const TemplateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.yellow,
      ),
      flex: 2,
    );
  }
}
