import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resume_builder/src/screens/components/footer/model/footer_social_model.dart';

class Constants {
  Constants._();

  static List<FooterSocailModel> socialLink = [
    FooterSocailModel(
      iconData: FontAwesomeIcons.twitter,
      socialURL: 'https://twitter.com/champ_96k',
    ),
    FooterSocailModel(
      iconData: FontAwesomeIcons.linkedin,
      socialURL: 'https://www.linkedin.com/in/tushar-nikam-a29a97131/',
    ),
    FooterSocailModel(
      iconData: FontAwesomeIcons.github,
      socialURL: 'https://github.com/champ96k',
    ),
    FooterSocailModel(
      iconData: FontAwesomeIcons.weebly,
      socialURL: 'https://champ96k.github.io/',
    ),
    FooterSocailModel(
      iconData: FontAwesomeIcons.coffee,
      socialURL: 'https://www.buymeacoffee.com/champ96k',
    ),
  ];
}
