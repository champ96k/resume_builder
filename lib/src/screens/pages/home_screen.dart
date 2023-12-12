import 'package:flutter/material.dart';
import 'package:resume_builder/src/screens/components/app_bar/top_appbar.dart';
import 'package:resume_builder/src/screens/components/build_branding_tile/build_branding_tile.dart';
import 'package:resume_builder/src/screens/components/build_header/build_header.dart';
import 'package:resume_builder/src/screens/components/build_templates/build_helper_body.dart';
import 'package:resume_builder/src/screens/components/build_templates/build_templates_title.dart';
import 'package:resume_builder/src/screens/components/cover_builder/left_cover_builder.dart';
import 'package:resume_builder/src/screens/components/cover_builder/right_cover_builder.dart';
import 'package:resume_builder/src/screens/components/footer/footer.dart';
import 'package:resume_builder/src/screens/components/show_templates/show_templates.dart';
import 'package:resume_builder/src/screens/components/why_build_my_resume/why_build_my_resume.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            ///[Appbar] header
            TopAppBar(),

            ///cover screen
            BuildHeader(),

            ///Resume helper, show [feture of website]
            BuildHelperBody(),

            ///Build resume showcase title
            BuildTemplatesTitle(),

            ///List of [Resume] templates
            ShowTemplates(),

            ///`Why me` header and description
            WhyBuildMyResume(),

            ///Start building branding text
            BuildBrandingTile(),

            ///`try our resume` builder header
            RightCoverBuilder(),

            ///profesional resume for effective job interview
            LeftCoverBuilder(),

            ///Footer
            Footer(),
          ],
        ),
      ),
    );
  }
}
