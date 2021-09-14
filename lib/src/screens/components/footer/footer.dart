import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _textTheme = Theme.of(context).textTheme;
    // final constPadding = EdgeInsets.symmetric(horizontal: size.width * 0.04);
    return Container(
      height: _size.height * 0.14,
      width: _size.width,
      alignment: Alignment.center,
      color: Colors.black,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          footerBuilder(
            size: _size,
            textTheme: _textTheme,
            title: "title",
            subTitle: ['Jjje', 'hhehhe', 'Jjje', 'hhehhe'],
          ),
          footerBuilder(
            size: _size,
            textTheme: _textTheme,
            title: "title",
            subTitle: ['Jjje', 'hhehhe', 'Jjje', 'hhehhe'],
          ),
          footerBuilder(
            size: _size,
            textTheme: _textTheme,
            title: "title",
            subTitle: [
              'titletitletitle',
              'title title title',
              'titletitl etitle etitle',
              'titletit letitle'
            ],
          ),
          footerBuilder(
            size: _size,
            textTheme: _textTheme,
            title: "title",
            subTitle: [
              'titletitletitle',
              'title title title',
              'titletitl etitle etitle',
              'titletit letitle'
            ],
          ),
          footerBuilder(
            size: _size,
            textTheme: _textTheme,
            title: "title",
            subTitle: [
              'titleti tletitle tletitle tletitle',
              'title title title',
              'titletitl etitle etitle',
              'titletit letitle'
            ],
          ),
          footerBuilder(
            size: _size,
            textTheme: _textTheme,
            title: "title",
            subTitle: [
              'titleti tletitle tletitle tletitle',
              'title title title',
              'titletitl etitle etitle',
              'titletit letitle'
            ],
          ),
        ],
      ),
    );
  }

  Widget footerBuilder({
    required Size size,
    required TextTheme textTheme,
    required String title,
    required List<String> subTitle,
  }) {
    return Expanded(
      flex: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(height: size.height * 0.01),
          Text(
            "OUR COMPANY",
            style: textTheme.bodyText2!.copyWith(
              color: Colors.white60,
              letterSpacing: 3.75,
            ),
          ),
          ...List.generate(subTitle.length, (index) {
            return Text(
              subTitle[index],
              style: textTheme.caption!.copyWith(
                color: Colors.white,
                letterSpacing: 0.75,
              ),
            );
          }),
        ],
      ),
    );
  }
}
