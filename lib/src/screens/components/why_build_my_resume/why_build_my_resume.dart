import 'package:flutter/material.dart';
import 'package:resume_builder/gen/assets.gen.dart';

import 'widget/build_contain_widget.dart';

class WhyBuildMyResume extends StatelessWidget {
  const WhyBuildMyResume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _textTheme = Theme.of(context).textTheme;
    return Container(
      height: size.height * 0.6,
      width: size.width,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: size.height * 0.2,
            alignment: Alignment.center,
            width: size.width,
            child: Text(
              "Why build my resume with Resume.com?",
              textAlign: TextAlign.center,
              style: _textTheme.displaySmall!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BuildContainWidget(
                  image: Assets.images.icons.freeIcon,
                  subTitle:
                      """No gimmicks, no freemium features, no joke. Get everything you need to build a professional resume that shows off your best qualities to help you land your next job.""",
                  title: "We’re actually free",
                ),
                BuildContainWidget(
                  image: Assets.images.icons.templatesIcon,
                  subTitle:
                      """Rest assured that the templates you find on Resume.com are the best around. Based on data from what employers want to see in candidates, we’ve created our templates with hiring in mind.""",
                  title: "Data-Driven Templates",
                ),
                BuildContainWidget(
                  image: Assets.images.icons.scanIcon,
                  subTitle:
                      """With your resume ready for top employers, easily share with millions of interested employers on Indeed, the world’s #1 job site.""",
                  title: "Get Seen",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
