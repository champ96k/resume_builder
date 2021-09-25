import 'package:flutter/material.dart';
import 'package:resume_builder/core/app_theme/style.dart';
import 'package:resume_builder/gen/colors.gen.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _constSpacing = size.width * 0.03;
    return Container(
      height: size.height * 0.1,
      width: size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
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
            child: const Text("Free Resume Builder"),
          ),
          const Spacer(),
          SizedBox(width: _constSpacing),
          InkWell(
            onTap: () {},
            child: const Text("Home"),
          ),
          SizedBox(width: _constSpacing),
          InkWell(
            hoverColor: ColorName.primaryIndigo,
            onTap: () {},
            child: const Text("Templates"),
          ),
          SizedBox(width: _constSpacing),
          InkWell(
            hoverColor: ColorName.primaryIndigo,
            onTap: () {},
            child: const Text("About Us"),
          ),
          SizedBox(width: _constSpacing),
          OutlinedButton(
            style: outlineButtonStyle,
            onPressed: () {},
            child: const Text("Create New Resume"),
          ),
          SizedBox(width: _constSpacing),
        ],
      ),
    );
  }
}
