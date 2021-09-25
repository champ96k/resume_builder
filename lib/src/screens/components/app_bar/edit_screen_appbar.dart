import 'package:flutter/material.dart';
import 'package:resume_builder/gen/colors.gen.dart';
import 'package:resume_builder/src/widgets/primary_button.dart';

class EditScreenAppBar extends StatelessWidget {
  const EditScreenAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _textTheme = Theme.of(context).textTheme;
    final _constSpacing = _size.width * 0.03;
    return Container(
      height: _size.height * 0.1,
      width: _size.width,
      decoration: BoxDecoration(
        color: ColorName.primaryDarkBlue,
        boxShadow: [
          const BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(width: _constSpacing),
          InkWell(
            hoverColor: ColorName.primaryIndigo,
            onTap: () {},
            child: Text(
              "Free Resume Builder",
              style: _textTheme.headline6!.copyWith(
                color: Colors.white,
                letterSpacing: 3.0,
              ),
            ),
          ),
          const Spacer(),
          PrimaryButton(
            width: _size.width * 0.12,
            title: "Reset",
            backgroundColor: ColorName.primaryIndigo,
            textColor: Colors.white,
            onTap: () {},
          ),
          SizedBox(width: _size.width * 0.03),
          PrimaryButton(
            title: "Download",
            onTap: () {},
            borderColor: Colors.white,
            textColor: Colors.white,
            backgroundColor: Colors.transparent,
          ),
          SizedBox(width: _constSpacing),
        ],
      ),
    );
  }
}
