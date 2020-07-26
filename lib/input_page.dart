import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0XFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CLCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                ReusebleContainer(
                  colour: activeCardColor,
                ),
                ReusebleContainer(
                  colour: activeCardColor,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ReusebleContainer(
                  colour: activeCardColor,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ReusebleContainer(
                  colour: activeCardColor,
                ),
                ReusebleContainer(
                  colour: activeCardColor,
                ),
              ],
            ),
          ),
          Container(
            color: Color(0xffEB1555),
            height: bottomContainerHeight,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}

class ReusebleContainer extends StatelessWidget {
  final Color colour;

  ReusebleContainer({@required this.colour});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          ),
        ),
      ),
    );
  }
}
