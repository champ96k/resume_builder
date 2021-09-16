import 'package:flutter/material.dart';
import '../../../../core/constants/constant_colors.dart';
import '../../../../core/theme/style.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _constSpacing = size.width * 0.03;
    return Container(
      height: size.height * 0.1,
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.white,
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
            hoverColor: ConstantColors.primaryIndigo,
            onTap: () {},
            child: const Text("Free resume builder"),
          ),
          const Spacer(),
          SizedBox(width: _constSpacing),
          InkWell(
            onTap: () {},
            child: const Text("Home"),
          ),
          SizedBox(width: _constSpacing),
          InkWell(
            hoverColor: ConstantColors.primaryIndigo,
            onTap: () {},
            child: const Text("Templates"),
          ),
          SizedBox(width: _constSpacing),
          InkWell(
            hoverColor: ConstantColors.primaryIndigo,
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
