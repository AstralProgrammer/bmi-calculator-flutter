import 'package:flutter/material.dart';

import '../constants.dart';

class CtaButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  CtaButton({@required this.onTap, @required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBottomContainerColor,
      margin: EdgeInsets.only(top: 10),
      width: double.infinity,
      height: kBottomContainerHeight,
      padding: EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        child: Center(
          child: Text(
            buttonTitle.toUpperCase(),
            style: kLargeTextStyle,
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
