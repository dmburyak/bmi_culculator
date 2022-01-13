import 'package:flutter/material.dart';

import 'input_page.dart';

class ReusableCard extends StatelessWidget {

  ReusableCard({this.color = activeCardColor, this.cardChild});

  final Color color;
  final dynamic cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild);
  }
}