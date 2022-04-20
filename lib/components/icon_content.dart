import 'package:dmi_app/constants.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.icon, this.label});

  final IconData? icon;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Icon(
            icon,
            size: 75.0,
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          '$label',
          style:kLabelTextStyle,
        )
      ],
    );
  }
}