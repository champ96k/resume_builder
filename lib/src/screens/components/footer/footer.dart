import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _textTheme = Theme.of(context).textTheme;
    return Container(
      height: _size.height * 0.1,
      width: _size.width,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: _size.width * 0.1),
      color: Colors.black,
      child: Row(
        children: [
          Text(
            "Copyrights © 2021 All Rights Reserved by Tushar Nikam.",
            style: _textTheme.bodyText1!.copyWith(
              color: Colors.white60,
              letterSpacing: 0.75,
            ),
          ),
          const Spacer(),
          _footerTextBuilder(_textTheme, _size, title: 'Twitter'),
          _footerTextBuilder(_textTheme, _size, title: 'Send Us a Mail'),
          _footerTextBuilder(_textTheme, _size, title: 'Privacy Policy'),
          _footerTextBuilder(_textTheme, _size, title: 'About Us'),
          _footerTextBuilder(_textTheme, _size, title: 'Affiliate'),
        ],
      ),
    );
  }

  Widget _footerTextBuilder(
    TextTheme _textTheme,
    Size _size, {
    required String title,
  }) {
    return Row(
      children: [
        SizedBox(width: _size.width * 0.015),
        InkWell(
          hoverColor: Colors.red,
          focusColor: Colors.red,
          onTap: () {},
          child: Text(
            title,
            style: _textTheme.bodyText1!.copyWith(
              color: Colors.white60,
              letterSpacing: 1.75,
            ),
          ),
        ),
        SizedBox(width: _size.width * 0.015),
      ],
    );
  }
}
