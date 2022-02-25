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
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: [
            ///[Appbar] header
            const TopAppBar(),

            ///cover screen
            const BuildHeader(),

            ///Resume helper, show [feture of website]
            const BuildHelperBody(),

            ///Build resume showcase title
            const BuildTemplatesTitle(),

            ///List of [Resume] templates
            const ShowTemplates(),

            ///`Why me` header and description
            const WhyBuildMyResume(),

            ///Start building branding text
            const BuildBrandingTile(),

            ///`try our resume` builder header
            const RightCoverBuilder(),

            ///profesional resume for effective job interview
            const LeftCoverBuilder(),

            ///Footer
            const Footer(),
          ],
        ),
      ),
    );
  }
}
