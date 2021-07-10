import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 18,
  color: Color(0xFF8D8E98),
);

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
          style: labelTextStyle,
        ),
      ],
    );
  }
}
