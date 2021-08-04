import 'package:flutter/material.dart';

class BuildTemplatesTitle extends StatelessWidget {
  const BuildTemplatesTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _textTheme = Theme.of(context).textTheme;
    return Container(
      height: size.height * 0.3,
      alignment: Alignment.center,
      width: size.width,
      child: Text(
        "Every detail on your resume, built to perfection",
        textAlign: TextAlign.center,
        style: _textTheme.headline3!.copyWith(
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
