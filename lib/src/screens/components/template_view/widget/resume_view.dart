import 'package:flutter/material.dart';

class ResumeView extends StatelessWidget {
  const ResumeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      height: _size.height * 1.2,
      width: _size.width,
      color: Colors.yellow,
    );
  }
}
