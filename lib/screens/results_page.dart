import 'package:flutter/material.dart';

import 'package:bmi_culculator/constants.dart';
import 'package:bmi_culculator/components/bottom_button.dart';
import 'package:bmi_culculator/components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: Color(0xFF0A0E21),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Normal',
                      style: kResultTextStyle,
                    ),
                    Text(
                      '18.3',
                      style: kBMITextStyle,
                    ),
                    Text(
                      'Your BMI result is quite low, you should eat more!',
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),),
          BottomButton(
            buttonTitle: 'RE-CULCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
