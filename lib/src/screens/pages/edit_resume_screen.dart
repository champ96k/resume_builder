import 'package:flutter/material.dart';

import '../components/action_windows/action_windows.dart';
import '../components/app_bar/edit_screen_appbar.dart';
import '../components/footer/footer.dart';
import '../components/template_view/template_view.dart';

class EditResumeScreen extends StatelessWidget {
  const EditResumeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: [
            //Appbar
            const EditScreenAppBar(),
            Container(
              height: _size.height * 1.4,
              width: _size.width,
              margin: EdgeInsetsDirectional.all(16.0),
              child: Row(
                children: [
                  ActionWindos(),
                  TemplateView(),
                ],
              ),
            ),
            //footer
            const Footer(),
          ],
        ),
      ),
    );
  }
}
