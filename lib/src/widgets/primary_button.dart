import 'package:flutter/material.dart';
import 'package:resume_builder/gen/colors.gen.dart';

class PrimaryButton extends StatelessWidget {
  final double? height;
  final double? width;
  final String title;
  final Function()? onTap;
  final Color? backgroundColor;
  final Color borderColor;
  final double radius;
  final Color textColor;
  final double fontSize;
  final Color hoverColor;

  final FontWeight fontWeight;

  const PrimaryButton({
    Key? key,
    this.height,
    this.width,
    this.hoverColor = Colors.orange,
    required this.title,
    required this.onTap,
    this.radius = 0.0,
    this.borderColor = Colors.transparent,
    this.textColor = Colors.white,
    this.backgroundColor = ColorName.primaryIndigo,
    this.fontSize = 16.0,
    this.fontWeight = FontWeight.w500,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return InkWell(
      hoverColor: hoverColor.withOpacity(0.2),
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: height ?? _size.height * 0.06,
        width: width ?? _size.width * 0.16,
        child: Text(
          title,
          style: TextStyle(
            fontSize: fontSize,
            letterSpacing: 1.75,
            color: textColor,
            fontWeight: fontWeight,
          ),
        ),
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(
            width: 1.0,
            color: borderColor,
          ),
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
