import 'package:bmi_calculator/reusableCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'genderLabel.dart';

const double bottomContainerHeight = 80;
const bottomContainerColor = Color(0xFFEB1555);
const cardColor = Color(0xFF1D1E33);
const inactiveColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveColor;
  Color femaleCardColor = inactiveColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(1);
                    });
                  },
                  child: ReusableCard(
                    colour: maleCardColor,
                    cardChild: GenderLabel(
                      genderIcon: FontAwesomeIcons.mars,
                      genderLabel: 'MALE',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(2);
                    });
                  },
                  child: ReusableCard(
                    colour: femaleCardColor,
                    cardChild: GenderLabel(
                      genderIcon: FontAwesomeIcons.venus,
                      genderLabel: 'FEMALE',
                    ),
                  ),
                ),
              ),
            ]),
          ),
          Expanded(
            child: ReusableCard(
              colour: cardColor,
            ),
          ),
          Expanded(
            child: Row(children: [
              Expanded(
                child: ReusableCard(
                  colour: cardColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: cardColor,
                ),
              ),
            ]),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }

  void updateColor(int gender) {
    // 1 - male; 2 - female
    if (gender == 1) {
      if (maleCardColor == inactiveColor) {
        maleCardColor = cardColor;
        femaleCardColor = inactiveColor;
      } else {
        maleCardColor = inactiveColor;
      }
    }
    if (gender == 2) {
      if (femaleCardColor == inactiveColor) {
        femaleCardColor = cardColor;
        maleCardColor = inactiveColor;
      } else {
        femaleCardColor = inactiveColor;
      }
    }
  }
}
