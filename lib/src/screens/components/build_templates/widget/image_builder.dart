import 'package:flutter/material.dart';

class ImageBuilder extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;
  final bool visible;
  final Function()? onTap;

  const ImageBuilder({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.icon,
    required this.onTap,
    this.visible = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: _size.height * 0.13,
        width: _size.width * 0.4,
        alignment: Alignment.center,
        child: ListTile(
          contentPadding: const EdgeInsets.all(16.0),
          tileColor:
              visible ? Colors.indigo.withOpacity(0.06) : Colors.transparent,
          title: Text(
            title,
            style: _textTheme.headline5!.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          leading: Icon(icon),
          subtitle: Visibility(
            visible: visible,
            child: Text(
              subTitle,
              style: _textTheme.subtitle2,
            ),
          ),
        ),
      ),
    );
  }
}
