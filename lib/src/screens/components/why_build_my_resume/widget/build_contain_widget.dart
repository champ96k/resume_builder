import 'package:flutter/material.dart';

class BuildContainWidget extends StatelessWidget {
  final ImageProvider<Object> image;
  final String title;
  final String subTitle;

  const BuildContainWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _textTheme = Theme.of(context).textTheme;
    final constSpacing = _size.height * 0.015;
    return Flexible(
      flex: 2,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: _size.width * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
              height: _size.height * 0.06,
              fit: BoxFit.cover,
              image: image,
            ),
            SizedBox(height: constSpacing),
            Text(
              title,
              style: _textTheme.titleLarge!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: constSpacing),
            Text(
              subTitle,
              style: _textTheme.titleMedium!.copyWith(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
