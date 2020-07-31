import 'package:flutter/material.dart';

class ReusebleContainer extends StatelessWidget {
  final Color colour;
  final cardContent;

  ReusebleContainer({@required this.colour, this.cardContent});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: cardContent,
          decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          ),
        ),
      ),
    );
  }
}
