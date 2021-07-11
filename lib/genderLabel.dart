import 'package:flutter/material.dart';

import 'constants.dart';

class GenderLabel extends StatelessWidget {
  final IconData genderIcon;

  final String genderLabel;

  GenderLabel({this.genderIcon, this.genderLabel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          genderLabel,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
