import 'package:covidery/components/country_card.dart';
import 'package:covidery/components/news_card.dart';
import 'package:covidery/components/prevention_card.dart';
import 'package:covidery/config/app_constant.dart';
import 'package:covidery/pages/self_diagnosis_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    NumberFormat formatter = NumberFormat.decimalPatternDigits(
      locale: 'en_us',
      decimalDigits: 0,
    );
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          header(),
          selfDiagnosisButton(context),
          preventionCardList(),
          worldData(formatter),
          newsCardList(),
        ],
      ),
    );
  }

  Padding selfDiagnosisButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        right: 30,
        top: 30,
      ),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: CustomColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SelfDiagnosisPage(),
            )),
        child: Text(
          'Try Self Diagnosis',
          style: CustomFonts.subTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Transform newsCardList() {
    return Transform.translate(
      offset: const Offset(0, -30),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'News',
              style: CustomFonts.primayTextStyle.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -24),
              child: SizedBox(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: DummyData.newsData.length,
                  itemBuilder: (context, index) {
                    Map<String, dynamic> data = DummyData.newsData[index];
                    return NewsCard(
                      title: data['title'],
                      subtitle: data['subtitle'],
                      company: data['company'],
                      time: data['time'],
                      imagePath: data['image'],
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding worldData(NumberFormat formatter) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Worldwide data\n(worldometers.info/coronavirus)',
            style: CustomFonts.primayTextStyle.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Transform.translate(
            offset: const Offset(0, -22),
            child: SizedBox(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: DummyData.dataCovid.length,
                itemBuilder: (context, index) {
                  Map<String, dynamic> data = DummyData.dataCovid[index];
                  return CountryCard(
                    country: data['country'],
                    index: (index + 1).toString(),
                    affected: formatter.format(int.parse(data['affected'])).toString(),
                    recovered: formatter.format(int.parse(data['recovered'])).toString(),
                    imagePath: data['flag'],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Column preventionCardList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 30,
          ),
          child: Text(
            'Prevention',
            style: CustomFonts.primayTextStyle.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              Map<String, dynamic> data = DummyData.preventionData[index];
              return PreventionCard(
                title: data['title'],
                imagePath: data['image'],
                paddingLeft: index == 0 ? 30 : 0,
              );
            },
          ),
        ),
      ],
    );
  }

  Container header() {
    return Container(
      padding: const EdgeInsets.only(
        left: 30,
        right: 30,
        top: 60,
        bottom: 30,
      ),
      width: double.infinity,
      height: 250,
      decoration: const BoxDecoration(
        color: CustomColors.primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'COVID-19 Daily Report',
            style: CustomFonts.subTextStyle.copyWith(
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Are you feeling sick?',
            style: CustomFonts.subTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'If you feel sick with any of the symptoms of Covid-19, please immediately go to the nearest hospital, wear a mask and avoid unnecessary physical contact.',
            style: CustomFonts.subTextStyle.copyWith(
              fontSize: 16,
              height: 1.2,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
