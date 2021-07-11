import 'package:bmi_calculator/components/cta_button.dart';
import 'package:bmi_calculator/components/reusableCard.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.center,
                child: Text(
                  'Your Results',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: kInactiveColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Normal',
                      style: kResultsTextStyle,
                    ),
                    Text(
                      '18.9',
                      style: kBMITextStyle,
                    ),
                    Text(
                      'Your BMI',
                      style: kBodyTextStyle,
                    ),
                  ],
                ),
              ),
              flex: 5,
            ),
            CtaButton(
              onTap: (){
                Navigator.pop(context);
              },
              buttonTitle: 'Re-calculate',
            ),
          ],
        ),
      ),
    );
  }
}
