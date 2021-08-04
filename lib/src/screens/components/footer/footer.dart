import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _textTheme = Theme.of(context).textTheme;
    // final constPadding = EdgeInsets.symmetric(horizontal: size.width * 0.04);
    return Container(
      height: _size.height * 0.4,
      width: _size.width,
      alignment: Alignment.center,
      color: Colors.black,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Text(
                  "Container resume resume ",
                  style: _textTheme.bodyText2!.copyWith(
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Container resume resume ",
                  style: _textTheme.bodyText2!.copyWith(
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Container resume resume ",
                  style: _textTheme.bodyText2!.copyWith(
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Container resume resume ",
                  style: _textTheme.bodyText2!.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(),
          ),
          Expanded(
            flex: 2,
            child: Container(),
          ),
          Expanded(
            flex: 2,
            child: Container(),
          ),
        ],
      ),
    );
  }
}
