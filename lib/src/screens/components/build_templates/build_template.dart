import 'package:flutter/material.dart';

class BuildTemplate extends StatelessWidget {
  const BuildTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // final constPadding = EdgeInsets.symmetric(horizontal: size.width * 0.04);
    return Container(
      height: size.height * 0.2,
      width: size.width,
      color: Colors.pink,
    );
  }
}
