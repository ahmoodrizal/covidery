import 'package:covidery/config/app_constant.dart';
import 'package:flutter/material.dart';

class SelfDiagnosisPage extends StatefulWidget {
  const SelfDiagnosisPage({super.key});

  @override
  State<SelfDiagnosisPage> createState() => _SelfDiagnosisPageState();
}

class _SelfDiagnosisPageState extends State<SelfDiagnosisPage> {
  String status = 'Healty';
  Color statusColor = Colors.green[500]!;
  int score = 0;
  bool q1 = false;
  bool q2 = false;
  bool q3 = false;
  bool q4 = false;
  bool q5 = false;
  bool q6 = false;
  bool q7 = false;

  resetState() {
    setState(() {
      statusColor = Colors.green[500]!;
      status = 'Healty';
      score = 0;
      q1 = false;
      q2 = false;
      q3 = false;
      q4 = false;
      q5 = false;
      q6 = false;
      q7 = false;
    });
  }

  void updateStatus() {
    switch (score) {
      case >= 2 && < 4:
        status = 'You need some rest';
        statusColor = Colors.blue[500]!;
        break;
      case >= 4 && < 7:
        status = 'Take some medicine';
        statusColor = Colors.orange[500]!;
        break;
      case >= 7:
        status = 'You have symptoms of covid-19';
        statusColor = Colors.red[500]!;
        break;
      default:
        status = 'Healty';
        statusColor = Colors.green[500]!;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Covid-19 Self Diagnosis',
          style: CustomFonts.subTextStyle,
        ),
        elevation: 0,
        backgroundColor: CustomColors.primaryColor,
        titleSpacing: 0,
        actions: [
          IconButton(
            onPressed: () => resetState(),
            icon: const Icon(
              Icons.refresh,
            ),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(30),
        children: [
          Text(
            'Current status: ',
            style: CustomFonts.primayTextStyle.copyWith(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            status,
            style: CustomFonts.primayTextStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w400, color: statusColor),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 1.5,
            color: CustomColors.primaryColor,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Mark the checkbox for the symptoms you feel based on your current conditions',
            style: CustomFonts.primayTextStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: CheckboxListTile(
              value: q1,
              onChanged: (value) {
                setState(() {
                  q1 = !q1;
                  q1 ? score++ : score--;
                  updateStatus();
                });
              },
              title: Text('Question 1', style: CustomFonts.primayTextStyle.copyWith(height: 1.5)),
              subtitle: Text(
                'Have you had physical contact with a Covid patient in the last week?',
                style: CustomFonts.primayTextStyle.copyWith(
                  height: 1.5,
                ),
              ),
              checkColor: CustomColors.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // Optionally
                side: BorderSide(color: q1 ? Colors.deepOrangeAccent : CustomColors.primaryColor),
              ),
              activeColor: Colors.transparent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: CheckboxListTile(
              value: q2,
              onChanged: (value) {
                setState(() {
                  q2 = !q2;
                  q2 ? score++ : score--;
                  updateStatus();
                });
              },
              title: Text('Question 2', style: CustomFonts.primayTextStyle),
              subtitle: Text(
                'Do you have a fever?',
                style: CustomFonts.primayTextStyle.copyWith(
                  height: 1.5,
                ),
              ),
              checkColor: CustomColors.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // Optionally
                side: BorderSide(color: q2 ? Colors.deepOrangeAccent : CustomColors.primaryColor),
              ),
              activeColor: Colors.transparent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: CheckboxListTile(
              value: q3,
              onChanged: (value) {
                setState(() {
                  q3 = !q3;
                  q3 ? score++ : score--;
                  updateStatus();
                });
              },
              title: Text('Question 3', style: CustomFonts.primayTextStyle),
              subtitle: Text(
                'Do you have a sore throat?',
                style: CustomFonts.primayTextStyle.copyWith(
                  height: 1.5,
                ),
              ),
              checkColor: CustomColors.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // Optionally
                side: BorderSide(color: q3 ? Colors.deepOrangeAccent : CustomColors.primaryColor),
              ),
              activeColor: Colors.transparent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: CheckboxListTile(
              value: q4,
              onChanged: (value) {
                setState(() {
                  q4 = !q4;
                  q4 ? score++ : score--;
                  updateStatus();
                });
              },
              title: Text('Question 4', style: CustomFonts.primayTextStyle),
              subtitle: Text(
                'Loss of the ability to taste and smell?',
                style: CustomFonts.primayTextStyle.copyWith(
                  height: 1.5,
                ),
              ),
              checkColor: CustomColors.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // Optionally
                side: BorderSide(color: q4 ? Colors.deepOrangeAccent : CustomColors.primaryColor),
              ),
              activeColor: Colors.transparent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: CheckboxListTile(
              value: q5,
              onChanged: (value) {
                setState(() {
                  q5 = !q5;
                  q5 ? score++ : score--;
                  updateStatus();
                });
              },
              title: Text('Question 5', style: CustomFonts.primayTextStyle),
              subtitle: Text(
                'Chest pain or shortness of breath and coughing.',
                style: CustomFonts.primayTextStyle.copyWith(
                  height: 1.5,
                ),
              ),
              checkColor: CustomColors.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // Optionally
                side: BorderSide(color: q5 ? Colors.deepOrangeAccent : CustomColors.primaryColor),
              ),
              activeColor: Colors.transparent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: CheckboxListTile(
              value: q6,
              onChanged: (value) {
                setState(() {
                  q6 = !q6;
                  q6 ? score++ : score--;
                  updateStatus();
                });
              },
              title: Text('Question 6', style: CustomFonts.primayTextStyle),
              subtitle: Text(
                'Runny nose. ?',
                style: CustomFonts.primayTextStyle.copyWith(
                  height: 1.5,
                ),
              ),
              checkColor: CustomColors.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // Optionally
                side: BorderSide(color: q6 ? Colors.deepOrangeAccent : CustomColors.primaryColor),
              ),
              activeColor: Colors.transparent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: CheckboxListTile(
              value: q7,
              onChanged: (value) {
                setState(() {
                  q7 = !q7;
                  q7 ? score++ : score--;
                  updateStatus();
                });
              },
              title: Text('Question 7', style: CustomFonts.primayTextStyle),
              subtitle: Text(
                'Fatigue and weakness ?',
                style: CustomFonts.primayTextStyle.copyWith(
                  height: 1.5,
                ),
              ),
              checkColor: CustomColors.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // Optionally
                side: BorderSide(color: q7 ? Colors.deepOrangeAccent : CustomColors.primaryColor),
              ),
              activeColor: Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}
