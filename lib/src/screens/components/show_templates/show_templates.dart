import 'package:flutter/material.dart';
import 'package:resume_builder/core/app_configs/screen_names.dart';

class ShowTemplates extends StatelessWidget {
  const ShowTemplates({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: _size.width * 0.05),
      child: LayoutBuilder(
        builder: (context, constarints) {
          return GridView.builder(
            shrinkWrap: true,
            itemCount: 5,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: constarints.maxWidth >= 1200
                  ? 4
                  : (constarints.maxWidth >= 767 && constarints.maxWidth < 1200)
                      ? 3
                      : 1,
              childAspectRatio: 4 / 5,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(ScreenNames.editResumeScreen);
                  },
                  child: Container(
                    color: Colors.brown,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
