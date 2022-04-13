import 'package:flutter/material.dart';
import 'package:resume_builder/core/enum/templates_enum.dart';
import 'package:resume_builder/src/screens/components/template_view/widget/resume_view.dart';

class TemplateView extends StatelessWidget {
  final TEMPLATES? templates;
  const TemplateView({Key? key, this.templates}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: _size.height * 0.03,
          horizontal: _size.width * 0.03,
        ),
        child: Column(
          children: [
            Row(
              children: [
                const Text("Template View"),
                const Spacer(),
                const Text("No. of Page: 1"),
              ],
            ),
            SizedBox(height: _size.height * 0.03),
            const ResumeView(),
          ],
        ),
      ),
      flex: 2,
    );
  }
}
