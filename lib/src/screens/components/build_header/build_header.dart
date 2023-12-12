import 'package:flutter/material.dart';
import 'package:resume_builder/gen/assets.gen.dart';
import 'package:resume_builder/gen/colors.gen.dart';
import 'package:resume_builder/src/widgets/primary_button.dart';

class BuildHeader extends StatelessWidget {
  const BuildHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _textTheme = Theme.of(context).textTheme;
    final _constSpacing = size.height * 0.02;
    return Container(
      height: size.height * 0.9,
      width: size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: size.width * 0.08),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Build a professional resume for free",
                    style: _textTheme.displayMedium!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: _constSpacing),
                  Text(
                    """Create your resume easily with our free builder\nand professional templates""",
                    style: _textTheme.titleLarge!.copyWith(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.75,
                    ),
                  ),
                  SizedBox(height: _constSpacing / 0.4),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PrimaryButton(
                        width: size.width * 0.12,
                        title: "Get Started",
                        onTap: () {},
                      ),
                      SizedBox(width: size.width * 0.03),
                      PrimaryButton(
                        title: "Create New Resume",
                        onTap: () {},
                        backgroundColor: Colors.transparent,
                        borderColor: ColorName.primaryIndigo,
                        textColor: ColorName.primaryIndigo,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Image(
                height: size.height * 0.9,
                image: Assets.images.banner,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
