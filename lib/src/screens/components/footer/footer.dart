import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // final constPadding = EdgeInsets.symmetric(horizontal: size.width * 0.04);
    return Container(
      height: size.height * 0.1,
      width: size.width,
      color: Colors.indigo,
    );
  }
}
