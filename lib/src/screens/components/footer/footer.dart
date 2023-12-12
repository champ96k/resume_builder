import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resume_builder/core/constants/constant_text.dart';
import 'package:resume_builder/src/screens/components/footer/footer_constant.dart';
import 'package:url_launcher/url_launcher.dart';

import 'components/footer_text_builder.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _textTheme = Theme.of(context).textTheme;
    return Container(
      height: _size.height * 0.1,
      width: _size.width,
      alignment: Alignment.center,
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: _size.width * 0.04),
        child: Row(
          children: [
            Text(
              FooterConstant.copyrightsText,
              style: _textTheme.bodyLarge!.copyWith(
                color: Colors.white60,
                letterSpacing: 0.75,
              ),
            ),
            const Spacer(),
            _footerTextBuilder(_textTheme, _size,
                title: FooterConstant.privacyPolicy),
            _footerTextBuilder(_textTheme, _size,
                title: FooterConstant.aboutUs),
            _footerTextBuilder(_textTheme, _size,
                title: FooterConstant.affiliate),
            const Spacer(),
            FooterTextBuilder(
              title: FooterConstant.followMe,
              children: List.generate(
                socialLink.length,
                (index) => InkWell(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16.0, top: 6.0),
                    child: FaIcon(
                      socialLink[index].iconData,
                      size: 16.0,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () => _launchUrl(socialLink[index].socialURL),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _footerTextBuilder(
    TextTheme _textTheme,
    Size _size, {
    required String title,
    Function()? onTap,
  }) {
    return Row(
      children: [
        SizedBox(width: _size.width * 0.015),
        InkWell(
          hoverColor: Colors.red,
          focusColor: Colors.red,
          onTap: onTap,
          child: Text(
            title,
            style: _textTheme.bodyLarge!.copyWith(
              color: Colors.white60,
              letterSpacing: 1.75,
            ),
          ),
        ),
        SizedBox(width: _size.width * 0.015),
      ],
    );
  }

  Future<void> _launchUrl(String _url) async {
    if (!await launchUrl(Uri.parse(_url))) {
      throw Exception('Could not launch $_url');
    }
  }
}
