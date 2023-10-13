import 'package:covidery/config/app_constant.dart';
import 'package:flutter/material.dart';

class CountryCard extends StatelessWidget {
  const CountryCard(
      {super.key, required this.country, required this.index, required this.affected, required this.recovered, required this.imagePath});

  final String country;
  final String index;
  final String affected;
  final String recovered;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            index,
            style: CustomFonts.primayTextStyle.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(width: 20),
          Container(
            width: 65,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
              border: Border.all(color: Colors.grey[400]!),
            ),
          ),
          const SizedBox(width: 20),
          Transform.translate(
            offset: const Offset(0, -4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  country,
                  style: CustomFonts.primayTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  'Affected - $affected',
                  style: CustomFonts.primayTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Recovered - $recovered',
                  style: CustomFonts.primayTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
