import 'package:flutter/material.dart';

import '../components/app_bar/top_appbar.dart';
import '../components/build_branding_tile/build_branding_tile.dart';
import '../components/build_header/build_header.dart';
import '../components/build_templates/build_helper_body.dart';
import '../components/build_templates/build_templates_title.dart';
import '../components/cover_builder/left_cover_builder.dart';
import '../components/cover_builder/right_cover_builder.dart';
import '../components/footer/footer.dart';
import '../components/show_templates/show_templates.dart';
import '../components/why_build_my_resume/why_build_my_resume.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: [
            //Appbar
            const TopAppBar(),

            ///cover screen
            const BuildHeader(),

            ///Resume helper
            const BuildHelperBody(),

            const BuildTemplatesTitle(),

            //show Templates
            const ShowTemplates(),

            const WhyBuildMyResume(),

            const BuildBrandingTile(),

            const RightCoverBuilder(),

            const LeftCoverBuilder(),

            //Footer
            const Footer(),
          ],
        ),
      ),
    );
  }
}
