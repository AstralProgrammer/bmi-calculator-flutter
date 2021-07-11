import 'package:bmi_calculator/reusableCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'genderLabel.dart';

const double bottomContainerHeight = 80;
const bottomContainerColor = Color(0xFFEB1555);
const cardColor = Color(0xFF1D1E33);
const inactiveColor = Color(0xFF111328);

enum Gender {
  male,
  female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
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
                child: ReusableCard(
                  colour: (selectedGender == Gender.male && maleCardColor == inactiveColor) ? cardColor : inactiveColor,
                  cardChild: GenderLabel(
                    genderIcon: FontAwesomeIcons.mars,
                    genderLabel: 'MALE',
                  ),
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: (selectedGender == Gender.female && maleCardColor == inactiveColor) ? cardColor : inactiveColor,
                  cardChild: GenderLabel(
                    genderIcon: FontAwesomeIcons.venus,
                    genderLabel: 'FEMALE',
                  ),
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
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
}
