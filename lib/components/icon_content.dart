
import 'package:flutter/material.dart';

import '../constants.dart';

class ReusableChildContent extends StatelessWidget {
  ReusableChildContent({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}