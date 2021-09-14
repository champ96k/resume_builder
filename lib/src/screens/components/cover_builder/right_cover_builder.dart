import 'package:flutter/material.dart';

import '../../../../core/constants/constant_colors.dart';
import '../../../../core/constants/constants_images.dart';
import '../../../widgets/primary_button.dart';

class RightCoverBuilder extends StatelessWidget {
  const RightCoverBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _textTheme = Theme.of(context).textTheme;
    return Container(
      color: Colors.grey.withOpacity(0.3),
      height: _size.height * 0.8,
      width: _size.width,
      alignment: Alignment.center,
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              child: Image(
                height: _size.height * 0.7,
                fit: BoxFit.fitHeight,
                image: const AssetImage(ConstantImages.resumeCoverImage),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(right: _size.width * 0.03),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    """Try our professional Resume builder now!""",
                    textAlign: TextAlign.start,
                    style: _textTheme.headline3!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: _size.height * 0.02),
                  Text(
                    """Only 2% of resumes make it past the first round. Be in the top 2%. Use professional field-tested resume templates that follow the exact ‘resume rules’ employers look for. Easy to use and done within minutes - try now for free!""",
                    textAlign: TextAlign.start,
                    style: _textTheme.subtitle1!.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: _size.height * 0.04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PrimaryButton(
                        width: _size.width * 0.12,
                        title: "Build My Resume",
                        textColor: Colors.white,
                        backgroundColor: ConstantColors.primaryIndigo,
                        onTap: () {},
                      ),
                      SizedBox(width: _size.width * 0.025),
                      PrimaryButton(
                        width: _size.width * 0.12,
                        title: "Resume example",
                        backgroundColor: Colors.transparent,
                        borderColor: ConstantColors.primaryIndigo,
                        textColor: ConstantColors.primaryIndigo,
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
