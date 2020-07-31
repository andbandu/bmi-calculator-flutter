import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final Icon icon;
  final String iconName;

  IconContent({this.icon, this.iconName});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        icon,
        SizedBox(
          height: 10.0,
        ),
        Text(iconName),
      ],
    );
  }
}
