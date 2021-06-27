import 'package:flutter/material.dart';
import '../components/app_bar/top_appbar.dart';
import '../components/build_header/build_header.dart';
import '../components/build_templates/build_template.dart';
import '../components/footer/footer.dart';
import '../components/show_templates/show_templates.dart';

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

            ///Stand out with resume `BuildHeader`
            const BuildHeader(),

            ///Resume Template `Build templates`
            const BuildTemplate(),

            //show Templates
            const ShowTemplates(),

            //Footer
            const Footer(),
          ],
        ),
      ),
    );
  }
}
