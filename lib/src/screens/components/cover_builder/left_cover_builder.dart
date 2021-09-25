import 'package:flutter/material.dart';
import 'package:resume_builder/gen/assets.gen.dart';
import 'package:resume_builder/gen/colors.gen.dart';
import 'package:resume_builder/src/widgets/primary_button.dart';

class LeftCoverBuilder extends StatelessWidget {
  const LeftCoverBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _textTheme = Theme.of(context).textTheme;
    return Container(
      color: ColorName.secondaryIndigo,
      height: _size.height * 0.8,
      width: _size.width,
      alignment: Alignment.center,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(left: _size.width * 0.04),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    """START BUILDING YOUR CAREER""",
                    textAlign: TextAlign.start,
                    style: _textTheme.subtitle2!.copyWith(
                      color: ColorName.golden,
                      letterSpacing: 0.75,
                      wordSpacing: 0.75,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: _size.height * 0.01),
                  Text(
                    """Professional resumes\nfor effective job\ninterviews""",
                    textAlign: TextAlign.start,
                    style: _textTheme.headline3!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: _size.height * 0.02),
                  Text(
                    """A great job application leads to a good interview. An\namazing resume is what makes it all possible. Start off strong\nwith the hiring manager by creating a positive professional\nimage. A job interview can be much easier if they have a\nfavorable view of your CV and cover letter.""",
                    textAlign: TextAlign.start,
                    style: _textTheme.subtitle1!.copyWith(
                      color: Colors.white,
                      wordSpacing: 0.75,
                    ),
                  ),
                  SizedBox(height: _size.height * 0.04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PrimaryButton(
                        width: _size.width * 0.12,
                        title: "Get Started",
                        backgroundColor: Colors.blue,
                        textColor: Colors.white,
                        onTap: () {},
                      ),
                      SizedBox(width: _size.width * 0.03),
                      PrimaryButton(
                        title: "Create New Resume",
                        onTap: () {},
                        borderColor: Colors.white,
                        textColor: Colors.white,
                        backgroundColor: Colors.transparent,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Image(
              height: _size.height * 0.7,
              fit: BoxFit.fitHeight,
              image: Assets.images.resumeCover2,
            ),
          ),
        ],
      ),
    );
  }
}
