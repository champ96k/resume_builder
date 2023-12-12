import 'package:flutter/material.dart';
import 'package:resume_builder/core/enum/templates_enum.dart';
import 'package:resume_builder/src/screens/components/action_windows/action_windows.dart';
import 'package:resume_builder/src/screens/components/app_bar/edit_screen_appbar.dart';
import 'package:resume_builder/src/screens/components/footer/footer.dart';
import 'package:resume_builder/src/screens/components/template_view/template_view.dart';

class EditResumeScreen extends StatelessWidget {
  const EditResumeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EditScreenAppBar(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ActionWindos(
                  templates: TEMPLATES.five,
                ),
                TemplateView(),
              ],
            ),
            //footer
            Footer(),
          ],
        ),
      ),
    );
  }
}
