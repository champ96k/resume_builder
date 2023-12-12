import 'package:flutter/material.dart';
import 'package:resume_builder/core/constants/constants_images.dart';

import 'widget/image_builder.dart';

class BuildHelperBody extends StatefulWidget {
  const BuildHelperBody({Key? key}) : super(key: key);

  @override
  _BuildHelperBodyState createState() => _BuildHelperBodyState();
}

class _BuildHelperBodyState extends State<BuildHelperBody> {
  static bool _isFirstVisible = true;
  static bool _isSecondVisible = false;
  static bool _isThirdVisible = false;
  static int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _textTheme = Theme.of(context).textTheme;
    return Container(
      height: size.height,
      width: size.width,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                """Land your dream job with the help\nof our resume builder""",
                textAlign: TextAlign.center,
                style: _textTheme.displaySmall!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Image(
                        image: coverImages[_currentIndex],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: size.height * 0.07),
                        ImageBuilder(
                          visible: _isFirstVisible,
                          onTap: () {
                            setState(() {
                              _currentIndex = 0;
                              _isFirstVisible = true;
                              _isSecondVisible = false;
                              _isThirdVisible = false;
                            });
                          },
                          title: "Intuition Resume Builder",
                          subTitle:
                              """Build your resume easily with our step by step creator.""",
                          icon: Icons.menu_book,
                        ),
                        ImageBuilder(
                          visible: _isSecondVisible,
                          onTap: () {
                            setState(() {
                              _currentIndex = 1;
                              _isFirstVisible = false;
                              _isSecondVisible = true;
                              _isThirdVisible = false;
                            });
                          },
                          title: "A Resume Tailored to your",
                          subTitle:
                              """Get tips on tailoring your resume for your specific industry.""",
                          icon: Icons.badge_outlined,
                        ),
                        ImageBuilder(
                          visible: _isThirdVisible,
                          onTap: () {
                            setState(() {
                              _currentIndex = 2;
                              _isFirstVisible = false;
                              _isSecondVisible = false;
                              _isThirdVisible = true;
                            });
                          },
                          title: "Free download",
                          subTitle:
                              """That’s right: free. No catch, no paywall when it’s time to download.""",
                          icon: Icons.download,
                        ),
                      ],
                    ),
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
