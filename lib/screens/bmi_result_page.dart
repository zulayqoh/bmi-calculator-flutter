import 'package:flutter/material.dart';
import 'package:mybmi_calculator/components/bottom_button.dart';

import '../constants.dart';

class BmiResultPage extends StatelessWidget {
  const BmiResultPage(
      {Key? key,
      required this.bmiNarration,
      required this.bmiResult,
      required this.bmiInterpretation})
      : super(key: key);

  final String bmiNarration;
  final String bmiResult;
  final String bmiInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Text('BMI RESULT PAGE'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(bottom: 20, left: 10),
              child: Text(
                'Your Result',
                style: kTitleStyle,
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: kActiveCardColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    bmiNarration.toUpperCase(),
                    style: kResultStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBmiResult,
                  ),
                  Text(
                    bmiInterpretation,
                    style: kResultInterpretation,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CALCULATE',
            ),
          ),
        ],
      ),
    );
  }
}
