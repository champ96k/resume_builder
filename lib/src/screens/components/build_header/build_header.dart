import 'package:flutter/material.dart';
import '../../../../core/constants/constants_images.dart';
import '../../../../core/theme/style.dart';

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
                    style: _textTheme.headline2!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: _constSpacing),
                  Text(
                    """Create your resume easily with our free builder\nand professional templates""",
                    style: _textTheme.headline6!.copyWith(
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: _constSpacing),
                  OutlinedButton(
                    style: ThemeStyle.outlineButtonStyle,
                    onPressed: () {},
                    child: const Text("Create New Resume"),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Image(
                height: size.height * 0.9,
                image: const AssetImage(ConstantImages.bannerImage),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
