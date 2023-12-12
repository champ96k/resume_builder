import 'package:flutter/material.dart';

class FooterTextBuilder extends StatelessWidget {
  final String title;
  final List<Widget> children;
  const FooterTextBuilder({
    Key? key,
    required this.title,
    this.children = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;
    final _size = MediaQuery.of(context).size;
    return Row(
      children: [
        Text(
          title,
          style: _textTheme.bodyLarge!.copyWith(
            color: Colors.white60,
            letterSpacing: 1.75,
          ),
        ),
        SizedBox(width: _size.width * 0.02),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: children,
        )
      ],
    );
  }
}
