import 'package:flutter/material.dart';

class ShowTemplates extends StatelessWidget {
  const ShowTemplates({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constarints) {
        return GridView.builder(
          shrinkWrap: true,
          itemCount: 22,
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
              child: Container(
                height: 30,
                width: 30,
                color: Colors.brown,
              ),
            );
          },
        );
      },
    );
  }
}
