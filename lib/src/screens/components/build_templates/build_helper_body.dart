import 'package:flutter/material.dart';
import '../../../../core/constants/constants_images.dart';

class BuildHelperBody extends StatelessWidget {
  const BuildHelperBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _textTheme = Theme.of(context).textTheme;
    return Container(
      height: size.height,
      width: size.width,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                """Land your dream job with the help\nof our resume builder""",
                textAlign: TextAlign.center,
                style: _textTheme.headline3!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      //  color: Colors.purple,
                      child: const Image(
                        image: AssetImage(ConstantImages.coverImage1),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: size.height * 0.07),
                        Container(
                          height: size.height * 0.13,
                          width: size.width * 0.4,
                          alignment: Alignment.center,
                          child: ListTile(
                            contentPadding: const EdgeInsets.all(16.0),
                            tileColor: Colors.indigo.withOpacity(0.06),
                            title: Text(
                              "Intuition Resume Builder",
                              style: _textTheme.headline5!.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            leading: const Icon(Icons.restaurant_menu),
                            subtitle: const Text(
                              """Build your resume easily with our step by step creator""",
                            ),
                          ),
                        ),
                        Container(
                          height: size.height * 0.13,
                          width: size.width * 0.4,
                          alignment: Alignment.center,
                          child: ListTile(
                            contentPadding: const EdgeInsets.all(16.0),
                            tileColor: Colors.transparent,
                            title: Text(
                              "A Resume Tailored to your ",
                              style: _textTheme.headline5!.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            leading: const Icon(Icons.badge),
                            subtitle: const Text(
                              """That's right: free no catch, no paywall when it's time to download""",
                            ),
                          ),
                        ),
                        Container(
                          height: size.height * 0.13,
                          width: size.width * 0.4,
                          alignment: Alignment.center,
                          child: ListTile(
                            contentPadding: const EdgeInsets.all(16.0),
                            tileColor: Colors.transparent,
                            title: Text(
                              "Free download",
                              style: _textTheme.headline5!.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            leading: const Icon(Icons.download),
                            subtitle: const Text(
                              """Build your resume easily with our step by step creator""",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
