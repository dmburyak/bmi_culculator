import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF0A0E21),
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      child: ReusableCard(
                        color: selectedGender == Gender.male
                            ? kActiveCardColor
                            : kInActiveCardColor,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.mars,
                          label: 'MALE',
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                        child: ReusableCard(
                          color: selectedGender == Gender.female
                              ? kActiveCardColor
                              : kInActiveCardColor,
                          cardChild: IconContent(
                            icon: FontAwesomeIcons.venus,
                            label: 'FEMALE',
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        }),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(),
                  ),
                  Expanded(
                    child: ReusableCard(),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: kBottomContainerHeight,
              color: kBottomContainerColor,
            )
          ],
        ));
  }
}
