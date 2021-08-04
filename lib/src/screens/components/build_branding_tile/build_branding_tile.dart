import 'package:flutter/material.dart';

import '../../../../core/constants/constant_colors.dart';
import '../../../widgets/primary_button.dart';

class BuildBrandingTile extends StatelessWidget {
  const BuildBrandingTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _textTheme = Theme.of(context).textTheme;
    return Container(
      height: _size.height * 0.45,
      width: _size.width,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Start building your resume today,\nland your dream job tomorrow",
            textAlign: TextAlign.center,
            style: _textTheme.headline2!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          PrimaryButton(
            title: "Build My Resume",
            textColor: ConstantColors.primaryIndigo,
            backgroundColor: Colors.white,
            onTap: () {},
          )
        ],
      ),
      color: ConstantColors.primaryIndigo,
    );
  }
}
