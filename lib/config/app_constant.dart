import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomColors {
  static const Color primaryColor = Color(0xff263238);
  static const Color whiteColor = Color.fromARGB(255, 231, 235, 237);
}

class CustomFonts {
  static TextStyle primayTextStyle = GoogleFonts.lato(color: CustomColors.primaryColor);
  static TextStyle subTextStyle = GoogleFonts.lato(color: CustomColors.whiteColor);
}

class ImageAsset {
  static const indonesianFlag = 'assets/001-indonesia.png';
  static const unitedStatesFlag = 'assets/002-united-states.png';
  static const germanyFlag = 'assets/003-germany.png';
  static const italyFlag = 'assets/004-italy.png';
  static const southKoreaFlag = 'assets/005-south-korea.png';
  static const japanFlag = 'assets/006-japan.png';
  static const finlandFlag = 'assets/007-finland.png';
  static const covidPrev1 = 'assets/image1pv.png';
  static const covidPrev2 = 'assets/image2pv.png';
  static const covidPrev3 = 'assets/image3pv.png';
  static const covidNews1 = 'assets/Imagens_1.png';
  static const covidNews2 = 'assets/Imagens_2.png';
  static const covidNews3 = 'assets/Imagens_3.png';
  static const covidNews4 = 'assets/Imagens_4.png';
  static const splashImage = 'assets/splash.jpg';
}

class DummyData {
  static List dataCovid = [
    {
      'country': 'Indonesia',
      'affected': '6813429',
      'recovered': '6646827',
      'flag': ImageAsset.indonesianFlag,
    },
    {
      'country': 'Japan',
      'affected': '33803572',
      'recovered': '33594987',
      'flag': ImageAsset.japanFlag,
    },
    {
      'country': 'South Korea',
      'affected': '34571873',
      'recovered': '34535939',
      'flag': ImageAsset.southKoreaFlag,
    },
    {
      'country': 'Italy',
      'affected': '26126792',
      'recovered': '25774213',
      'flag': ImageAsset.italyFlag,
    },
    {
      'country': 'German',
      'affected': '38510163',
      'recovered': '38240600',
      'flag': ImageAsset.germanyFlag,
    },
    {
      'country': 'Finland',
      'affected': '1487090',
      'recovered': '1475237',
      'flag': ImageAsset.finlandFlag,
    },
    {
      'country': 'United States',
      'affected': '108907214',
      'recovered': '106754190',
      'flag': ImageAsset.unitedStatesFlag,
    },
  ];

  static List preventionData = [
    {
      'title': 'Use medical mask',
      'subtitle': 'When go to outside',
      'image': ImageAsset.covidPrev1,
    },
    {
      'title': 'Bring hand sanitizer',
      'subtitle': 'When go to outside',
      'image': ImageAsset.covidPrev2,
    },
    {
      'title': 'Avoid physical contact',
      'subtitle': 'When go to outside',
      'image': ImageAsset.covidPrev3,
    },
  ];

  static List newsData = [
    {
      'title': 'At least 23 Italian doctors have died',
      'subtitle': 'Mauris tempus, dolor et posuere ornare, magna diam mattis elit, a vestibulum ex ligula et urna.',
      'company': 'BBC in Covid News',
      'time': '17 September .  4 min read ',
      'image': ImageAsset.covidNews1,
    },
    {
      'title': 'COVID-19: towards controlling of a pandemic',
      'subtitle': 'Mauris tempus, dolor et posuere ornare, magna diam mattis elit, a vestibulum ex ligula et urna.',
      'company': 'Times  in CovoronaVirus',
      'time': '20 September .  5 min read ',
      'image': ImageAsset.covidNews2,
    },
    {
      'title': 'The coronavirus COVID-19 pandemic',
      'subtitle': 'Mauris tempus, dolor et posuere ornare, magna diam mattis elit, a vestibulum ex ligula et urna.',
      'company': 'FoxSport',
      'time': '27 September .  10 min read ',
      'image': ImageAsset.covidNews3,
    },
    {
      'title': 'How the COVID-19 Pandemic Could End',
      'subtitle': 'Mauris tempus, dolor et posuere ornare, magna diam mattis elit, a vestibulum ex ligula et urna.',
      'company': 'CNN in Covid Update',
      'time': '30 September .  16 min read ',
      'image': ImageAsset.covidNews4,
    },
  ];
}
